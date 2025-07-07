RegisterNetEvent("fw-ui:Ready")
AddEventHandler("fw-ui:Ready", function()
    for k, v in pairs(Config.Stores) do
        exports['fw-ui']:AddEyeEntry("store-" .. v.Store .. '-ped-' .. k, {
            Type = 'Entity',
            EntityType = 'Ped',
            SpriteDistance = 7.0,
            Distance = 2.0,
            Position = v.Coords,
            Model = v.Ped,
            Scenario = "WORLD_HUMAN_STAND_MOBILE",
            Options = {
                {
                    Name = 'open_store',
                    Icon = 'fas fa-circle',
                    Label = 'Store',
                    EventType = 'Client',
                    EventName = 'fw-misc:Client:OpenStore',
                    EventParams = { Store = v.Store },
                    Enabled = function(Entity)
                        return true
                    end,
                },
            }
        })
    end
end)

RegisterNetEvent("fw-misc:Client:OpenStore")
AddEventHandler("fw-misc:Client:OpenStore", function(Data, Entity)
    if not exports['fw-inventory']:CanOpenInventory() then
        return
    end

    if Data.Store == 'DigitalDen' then
        local ClockedInEmployees = FW.SendCallback("fw-businesses:Server:GetClockedInEmployees", "Digital Den")
        if #ClockedInEmployees < 1 then
            FW.TriggerServer('fw-inventory:Server:OpenInventory', 'Store', Data.Store)
        else
            FW.Functions.Notify("Talk to one of our other employers..", "error")
        end
    elseif Data.Store == 'DigitalDean' then
        local ClockedInEmployees = FW.SendCallback("fw-businesses:Server:GetClockedInEmployees", "Digital Dean")
        if #ClockedInEmployees < 1 then
            FW.TriggerServer('fw-inventory:Server:OpenInventory', 'Store', "DigitalDen")
        else
            FW.Functions.Notify("Talk to one of our other employers.", "error")
        end
    elseif Data.Store == 'Locksmith' then
        local IsMechanicOnline = FW.SendCallback("fw-bennys:Server:IsMechanicOnline")
        if IsMechanicOnline then
            return FW.Functions.Notify("The mechanic is closed go to someone else..", "error")
        end

        FW.TriggerServer('fw-inventory:Server:OpenInventory', 'Store', Data.Store)
    elseif Data.Store == 'Weed' then
        local PlayerData = FW.Functions.GetPlayerData()
        if PlayerData.job.name == 'police' then return FW.Functions.Notify("I aint no snitch..", "error") end

        local Time = exports['fw-sync']:GetCurrentTime()
        if (Time.Hour >= 20 and Time.Hour <= 23) or (Time.Hour >= 0 and Time.Hour <= 6) then
            FW.TriggerServer('fw-inventory:Server:OpenInventory', 'Store', Data.Store)
        else
            FW.Functions.Notify("Come back later..", "error")
        end
    else
        FW.TriggerServer('fw-inventory:Server:OpenInventory', 'Store', Data.Store)
    end
end)