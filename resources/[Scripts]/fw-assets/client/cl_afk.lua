local isAdmin = 'user'
local secondsUntilKick = 1200
local prevPos, time = nil, nil

RegisterNetEvent('FW:Client:OnPlayerLoaded')
AddEventHandler('FW:Client:OnPlayerLoaded', function()
    isAdmin = FW.SendCallback("fw-admin:Server:IsPlayerAdmin")
end)

-- Code
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)

        playerPed = PlayerPedId()
        if not LoggedIn then Citizen.Wait(1000) end
            if isAdmin then return end 
            if exports['fw-medical']:GetDeathStatus() then return end
            if FW.Functions.GetPlayerData().metadata.division == "MCU" then return end
            if exports['fw-mdw']:IsMdwOpen() then return end
           
                currentPos = GetEntityCoords(playerPed, true)
                if prevPos ~= nil then
                    if currentPos == prevPos then
                        if time ~= nil then
                            if time > 0 then
                                if time == 60 then
                                    FW.Functions.Notify('You are AFK and will be kicked in ' .. math.ceil(time / 60) .. ' minute!', 'error', 10000) 
                                elseif time == 30 then
                                    FW.Functions.Notify('You are AFK and will be kicked in ' .. time .. ' seconds!', 'error', 10000)
                                elseif time == 20 then
                                    FW.Functions.Notify('You are AFK and will be kicked in ' .. time .. ' seconds!', 'error', 10000)
                                elseif time == 10 then
                                    FW.Functions.Notify('You are AFK and will be kicked in ' .. time .. ' seconds!', 'error', 10000)
                                end
                                time = time - 5
                            else
                                FW.TriggerServer("fw-misc:Server:AFKKick")
                            end
                        else
                            time = secondsUntilKick
                        end
                    else
                        time = secondsUntilKick
                    end
                
                prevPos = currentPos
            
        end
    end
end)