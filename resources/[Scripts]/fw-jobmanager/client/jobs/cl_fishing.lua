local CurrentFishingSpot, FishingSpotBlip, HasRodAnim = 0, false, false

-- Functions
function InitFishing()
    local Result = FW.SendCallback("fw-jobmanager:Server:Fishing:GetLocation")
    CurrentFishingSpot = Result
    SetFishingBlip()

    exports['fw-ui']:AddEyeEntry("fishing-sells", {
        Type = 'Entity',
        EntityType = 'Ped',
        SpriteDistance = 5.0,
        Distance = 1.0,
        Position = vector4(-1710.39, -1110.89, 12.15, 92.17),
        Model = 'csb_chef',
        Anim = {},
        Props = {},
        Options = {
            {
                Name = 'fishing_sell',
                Icon = 'fas fa-dollar-sign',
                Label = 'Sell',
                EventType = 'Server',
                EventName = 'fw-jobmanager:Server:FishingSell',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            }
        }
    })
end

RegisterNetEvent("fw-ui:Ready")
AddEventHandler("fw-ui:Ready", InitFishing)

function SetFishingBlip()
    if FishingSpotBlip then
        SetBlipCoords(FishingSpotBlip, CurrentFishingSpot.x, CurrentFishingSpot.y, CurrentFishingSpot.z)
    else
        FishingSpotBlip = AddBlipForCoord(CurrentFishingSpot.x, CurrentFishingSpot.y, CurrentFishingSpot.z)
        SetBlipSprite(FishingSpotBlip, 540)
        SetBlipScale(FishingSpotBlip, 0.43)
        SetBlipAsShortRange(FishingSpotBlip, true)
        SetBlipColour(FishingSpotBlip, 26)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName("Fishing Spot")
        EndTextCommandSetBlipName(FishingSpotBlip)
    end
end

function NearFishingZone()
    local Coords = GetEntityCoords(PlayerPedId())
    local Distance = #(Coords - CurrentFishingSpot)
    if Distance < 65.0 then
        return true
    end
    return false
end
exports("NearFishingZone", NearFishingZone)

function SetRodAnimation(Bool)
    HasRodAnim = Bool
    if not HasRodAnim then return end

    exports['fw-assets']:AddProp('FishingRod')
    exports['fw-assets']:RequestAnimationDict('amb@world_human_stand_fishing@idle_a')

    Citizen.CreateThread(function()
        while HasRodAnim do
            if not IsEntityPlayingAnim(PlayerPedId(), "amb@world_human_stand_fishing@idle_a", "idle_b", 3) then
                TaskPlayAnim(PlayerPedId(), "amb@world_human_stand_fishing@idle_a", "idle_b", 3.0, 3.0, -1, 49, 0, 0, 0, 0)
            end
            Citizen.Wait(500)
        end
        StopAnimTask(PlayerPedId(), "amb@world_human_stand_fishing@idle_a", "idle_b", 1.0)
        exports['fw-assets']:RemoveProp()
    end)
end

function CalculateFish()
    math.randomseed(math.random(1111,9999) * 100000000000)
    local RandomInt = math.random(1, 160)
    local HasBuff = exports['fw-hud']:HasBuff('Fishing')
    if (HasBuff and (RandomInt > 0 and RandomInt <= 8)) or (RandomInt > 0 and RandomInt <= 3) then
        return 'Big'
    elseif RandomInt > 15 and RandomInt <= 125 then
        return 'Small'
    end 
    return false
end

-- Events
RegisterNetEvent("fw-jobmanager:Client:Fishing:SetFishingSpot")
AddEventHandler("fw-jobmanager:Client:Fishing:SetFishingSpot", function(Coords)
    CurrentFishingSpot = Coords
    SetFishingBlip()
end)

RegisterNetEvent('fw-jobmanager:Client:Fishing:GrabRod')
AddEventHandler('fw-jobmanager:Client:Fishing:GrabRod', function()
    if not NearFishingZone() then
        FW.Functions.Notify("It seems the fish are scared of your ugly mug and have swum to another spot..", "error")
        return
    end

    if HasRodAnim then
        FW.Functions.Notify("Idiot, you already have a fishing rod in your hands..", "error")
        return
    end

    if IsPedInAnyVehicle(PlayerPedId()) then
        FW.Functions.Notify("Go ahead and fish from your car, you do you..", "error")
        return
    end

    SetRodAnimation(true)

    Citizen.SetTimeout(math.random(500, 8000), function()
        local SkillTimes = 1
        local CalculatedFish = CalculateFish()

        if CalculatedFish == false then
            FW.Functions.Notify("Unfortunately, no fish...", "error")
            SetRodAnimation(false)
            return
        end

        if CalculatedFish == 'Big' or CalculatedFish == 'Special' then SkillTimes = 4 end

        TriggerServerEvent('fw-ui:Server:remove:stress', math.random(3, 8))

        local Outcome = exports['fw-ui']:StartSkillTest(SkillTimes, { 10, 15 }, { 3500, 5500 }, false)
        SetRodAnimation(false)
        if not Outcome then
            FW.Functions.Notify("The fish said 'blub' and swam away..", "error")
            return
        end

        if MyJob.CurrentJob == 'fishing' then
            local CurrentTask = FW.SendCallback("fw-jobmanager:Server:GetGroupCurrentTask", MyJob.CurrentJob, MyJob.CurrentGroup.Id)
            if CurrentTask.TaskId == 3 then
                FW.TriggerServer('fw-jobmanager:Server:AddTaskProgress', MyJob.CurrentJob, MyJob.CurrentGroup.Id, MyJob.CurrentGroup.Activity.Id, 3, 1)
            end
        end

        FW.TriggerServer("fw-jobmanager:Server:Fishing:GetFishReward", CalculatedFish)
    end)
end)

RegisterNetEvent('fw-jobmanager:Client:SetupJob')
AddEventHandler('fw-jobmanager:Client:SetupJob', function(IsLeader, Tasks, Data)
    if MyJob.CurrentJob ~= 'fishing' then return end
    if not IsLeader then return end

    Citizen.CreateThread(function()
        while true do
            if #(vector3(-327.21, 6099.33, 31.46) - GetEntityCoords(PlayerPedId())) < 10.0 then
                FW.TriggerServer('fw-jobmanager:Server:AddTaskProgress', MyJob.CurrentJob, MyJob.CurrentGroup.Id, MyJob.CurrentGroup.Activity.Id, 1, 1)
                break
            end

            Citizen.Wait(1000)
        end
    end)
end)

RegisterNetEvent('fw-jobmanager:Client:OnNextTask')
AddEventHandler('fw-jobmanager:Client:OnNextTask', function(IsLeader, TaskId)
    if MyJob.CurrentJob ~= 'fishing' then return end
    if not IsLeader then return end

    if TaskId == 2 then
        Citizen.CreateThread(function()
            while true do
                if NearFishingZone() then
                    FW.TriggerServer('fw-jobmanager:Server:AddTaskProgress', MyJob.CurrentJob, MyJob.CurrentGroup.Id, MyJob.CurrentGroup.Activity.Id, 2, 1)
                    break
                end

                Citizen.Wait(1000)
            end
        end)
    elseif TaskId == 4 then
        Citizen.CreateThread(function()
            while true do
                if #(vector3(-327.21, 6099.33, 31.46) - GetEntityCoords(PlayerPedId())) < 10.0 then
                    FW.TriggerServer('fw-jobmanager:Server:AddTaskProgress', MyJob.CurrentJob, MyJob.CurrentGroup.Id, MyJob.CurrentGroup.Activity.Id, 4, 1)
                    break
                end

                Citizen.Wait(1000)
            end
        end)
    end
end)