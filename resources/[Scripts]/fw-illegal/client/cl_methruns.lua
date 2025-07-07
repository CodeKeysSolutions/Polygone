local MethVehicle, MethDropoff = false, false

function InitMethruns()
    local DealerCoords = FW.SendCallback("fw-illegal:Server:GetMethDealer")
    exports['fw-ui']:AddEyeEntry("methrun-ped", {
        Type = 'Entity',
        EntityType = 'Ped',
        SpriteDistance = 5.0,
        Position = DealerCoords,
        Model = "g_m_y_lost_02",
        Options = {
            {
                Name = 'inventory',
                Icon = 'fas fa-box',
                Label = 'Handover Goods',
                EventType = 'Client',
                EventName = 'fw-illegal:Client:OpenMethruns',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'tasks',
                Icon = 'fas fa-tasks',
                Label = 'Start methrun',
                EventType = 'Server',
                EventName = 'fw-illegal:Server:Methruns:GetTasks',
                EventParams = {},
                Enabled = function(Entity)
                    local HasReward = FW.SendCallback("fw-illegal:Server:HasMethrunRewards")
                    return not HasReward
                end,
            },
            {
                Name = 'reward',
                Icon = 'fas fa-tasks',
                Label = 'Collect Reward',
                EventType = 'Server',
                EventName = 'fw-illegal:Server:Methruns:GetReward',
                EventParams = {},
                Enabled = function(Entity)
                    local HasReward = FW.SendCallback("fw-illegal:Server:HasMethrunRewards")
                    return HasReward
                end,
            },
        }
    })

    local SupplierCoords = FW.SendCallback("fw-illegal:Server:GetMethSupplier")
    exports['fw-ui']:AddEyeEntry("methrun-supplier", {
        Type = 'Entity',
        EntityType = 'Ped',
        SpriteDistance = 5.0,
        Position = SupplierCoords,
        Model = "g_m_y_lost_02",
        Options = {
            {
                Name = 'collect',
                Icon = 'fas fa-box',
                Label = 'Pack goods',
                EventType = 'Server',
                EventName = 'fw-illegal:Server:MethrunCollect',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
        }
    })
end

RegisterNetEvent("fw-ui:Ready")
AddEventHandler("fw-ui:Ready", InitMethruns)

RegisterNetEvent("fw-illegal:Client:OpenMethruns")
AddEventHandler("fw-illegal:Client:OpenMethruns", function()
    if exports['fw-inventory']:CanOpenInventory() then
        FW.TriggerServer('fw-inventory:Server:OpenInventory', 'Stash', 'methruns_dealer', 100, 1500)
    end
end)

RegisterNetEvent("fw-illegal:Client:SetMethVehicle")
AddEventHandler("fw-illegal:Client:SetMethVehicle", function(NetId, Data)
    CreateDropoffBlip("Vehicle", Data.Vehicle)

    while not NetworkDoesEntityExistWithNetworkId(NetId) do Citizen.Wait(100) end
    local Vehicle = NetToVeh(NetId)

    MethVehicle = Vehicle

    Citizen.SetTimeout(500, function()
        exports['fw-vehicles']:SetFuelLevel(Vehicle, math.random(33, 66))
        SetVehicleDoorsLocked(Vehicle, 2)
    end)

    SpawnVehicleGuards(Data.Peds)
end)

RegisterNetEvent("fw-vehicles:Client:OnLockpickSuccess")
AddEventHandler("fw-vehicles:Client:OnLockpickSuccess", function(Entity, InVehicle)
    if not InVehicle then return end
    local IsMethVehicle = FW.SendCallback("fw-illegal:Server:IsMethVehicle", NetworkGetNetworkIdFromEntity(Entity))
    if not IsMethVehicle then return end

    TriggerServerEvent("fw-phone:Server:Mails:AddMail", "The Boss", "Dropoff", "You got the car i see, Put the stuff in the trunk and wait for orders after completion i will give you location to deliver the vehicle.")

    local SupplierCoords = FW.SendCallback("fw-illegal:Server:GetMethSupplier")
    CreateDropoffBlip("Supplier", SupplierCoords)
end)

RegisterNetEvent("fw-illegal:Client:SupplierCountdown")
AddEventHandler("fw-illegal:Client:SupplierCountdown", function(Timeout)
    Citizen.SetTimeout(60000, function()
        local Vehicle = GetVehiclePedIsIn(PlayerPedId())
        TriggerServerEvent("fw-mdw:Server:SendAlert:TransportingDrugs", GetEntityCoords(Vehicle), FW.Functions.GetStreetLabel(), FW.Functions.GetCardinalDirection(), GetDisplayNameFromVehicleModel(GetEntityModel(Vehicle)), GetVehicleNumberPlateText(Vehicle), FW.Functions.GetVehicleColorLabel(Vehicle))
    end)
end)

RegisterNetEvent("fw-illegal:Client:VehicleTracker")
AddEventHandler("fw-illegal:Client:VehicleTracker", function(Coords)
    local PlayerJob = FW.Functions.GetPlayerData().job
    if PlayerJob.name ~= 'police' or not PlayerJob.onduty then return end

    local Blip = AddBlipForRadius(Coords, 75.0)
    SetBlipColour(Blip, 1)
    SetBlipAlpha(Blip, 128)
    SetBlipFlashes(Blip, true)
    SetBlipHighDetail(Blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("GPS Tracker location")
    EndTextCommandSetBlipName(Blip)

    Citizen.Wait(45000)
    RemoveBlip(Blip)
end)

RegisterNetEvent("fw-illegal:Client:SetMethDropoff")
AddEventHandler("fw-illegal:Client:SetMethDropoff", function(Coords)
    TriggerServerEvent("fw-phone:Server:Mails:AddMail", "The Boss", "Dropoff", "You got the location of the dropoff, go there and deliver the goods. Be careful, keep the police of you back.")
    CreateDropoffBlip("Dropoff", Coords)
    MethDropoff = Coords
end)

RegisterNetEvent("fw-illegal:Client:MethrunDropoffGoods")
AddEventHandler("fw-illegal:Client:MethrunDropoffGoods", function(Data, Entity)
    local IsFloorCleanerInTrunk = FW.SendCallback("fw-illegal:Server:IsFloorCleanerInTrunk")
    if not IsFloorCleanerInTrunk then
        return FW.Functions.Notify("Where did the stuff go ?", "error")
    end

    local Finished = FW.Functions.CompactProgressbar(40000, "Goederen afleveren...", false, true, {disableMovement = false, disableCarMovement = false, disableMouse = false, disableCombat = true}, { animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", anim = "machinic_loop_mechandplayer", flags = 1 }, {}, {}, false)
	StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)

	if not Finished then
        return
    end

    FW.TriggerServer("fw-illegal:Server:ResetMethrun", NetworkGetNetworkIdFromEntity(Entity))
    if DropoffBlip and DoesBlipExist(DropoffBlip) then RemoveBlip(DropoffBlip) end
end)

function SpawnVehicleGuards(Coords)
    for k, v in pairs(Coords) do
        local NPCs = {
            "mp_m_waremech_01",
            "mp_m_weapexp_01",
            "g_m_y_mexgang_01",
            "mp_g_m_pros_01",
            "s_m_m_bouncer_01",
            "s_m_m_highsec_01",
            "s_m_m_highsec_02",
            "s_m_y_devinsec_01",
            "s_m_y_doorman_01",
            "s_m_y_xmech_02",
        }

        local Model = NPCs[math.random(1, #NPCs)]
        local Hash = GetHashKey(Model)

        RequestModel(Hash)
        while not HasModelLoaded(Model) do Citizen.Wait(10) end

        local Ped = CreatePed(1, Hash, v.x, v.y, v.z, 0.0, true, true)
        SetNetworkIdExistsOnAllMachines(NetworkGetNetworkIdFromEntity(Ped), true)
        SetPedAccuracy(Ped, 100)
        SetPedRelationshipGroupHash(Ped, GetHashKey("HATES_PLAYER"))
        SetPedKeepTask(Ped, true)
        SetCanAttackFriendly(Ped, false, true)
        TaskCombatPed(Ped, PlayerPedId(), 0, 16)
        SetPedCombatAttributes(Ped, 46, true)
        SetPedCombatAbility(Ped, 1)
        SetPedCombatAttributes(Ped, 0, true)
        GiveWeaponToPed(Ped, "WEAPON_SMG", -1, false, true)
        SetPedDropsWeaponsWhenDead(Ped, false)
        SetPedCombatRange(Ped, 1)
        SetPedFleeAttributes(Ped, 0, 0)
        SetPedConfigFlag(Ped, 58, true)
        SetPedConfigFlag(Ped, 75, true)
        SetPedArmour(Ped, 100)
        SetEntityMaxHealth(Ped, 300)
        SetEntityHealth(Ped, 300)
        SetBlockingOfNonTemporaryEvents(Ped, true)
        SetEntityAsNoLongerNeeded(Ped)
    end
end

exports("CanDoDropoff", function(Entity)
    if not MethDropoff then
        return false
    end

    local IsMethVehicle = FW.SendCallback("fw-illegal:Server:IsMethVehicle", NetworkGetNetworkIdFromEntity(Entity))
    if not IsMethVehicle then
        return false
    end

    return #(GetEntityCoords(Entity) - MethDropoff) < 10.0
end)