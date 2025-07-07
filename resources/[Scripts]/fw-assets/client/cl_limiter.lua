local LimiterEnabled, SpeedLimit = false, 999.0

FW.AddKeybind("speedLimiter", "Vehicles", "Limiter", 'B', function(IsPressed)
    if not IsPressed then return end

    local Vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local DriverPed = GetPedInVehicleSeat(Vehicle, -1)
    if DriverPed ~= PlayerPedId() then
        return
    end

    local Speed = GetEntitySpeed(Vehicle)
    if Speed < 9.7 then
        return FW.Functions.Notify("Limiter can only be enabled if you are driving faster than 35km/h.", "error")
    end

    if LimiterEnabled then
        SetEntityMaxSpeed(Vehicle, 999.0)
        FW.Functions.Notify("Limiter Disabled")
        LimiterEnabled, SpeedLimit = false, 999.0
    else
        SetEntityMaxSpeed(Vehicle, Speed)
        FW.Functions.Notify("Limiter Enabled")
        LimiterEnabled, SpeedLimit = true, Speed
    end
end)

exports("GetSpeedLimit", function()
    return SpeedLimit
end)