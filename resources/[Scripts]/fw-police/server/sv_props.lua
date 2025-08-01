local BarricadesPlaced = 0
local Barriers = {
    {
        Prop = "prop_barrier_work05",
        Label = "Barricade 1",
        Desc = "A barricade made of wood.",
        Jobs = { police = true, storesecurity = true }
    },
    {
        Prop = "robijn_barrier_nolights",
        Label = "Barricade 2",
        Desc = "A barricade made of concrete, use only with permission.",
        Jobs = { police = true }
    },
    {
        Prop = "robijn_barrier_lights",
        Label = "Barricade 3",
        Desc = "A barricade made of concrete and lights, use only with permission.",
        Jobs = { police = true }
    },
    {
        Prop = "ch_prop_ch_fib_01a",
        Label = "Marker",
        Desc = "A marker to place at a crime scene.",
        Jobs = { police = true }
    },
    {
        Prop = "prop_gazebo_01",
        Label = "Tent",
        Desc = "Welcome to the party tent.",
        Jobs = {
            police = true,
            ems = true,
            storesecurity = true,
        }
    },
    {
        Prop = "ch_prop_ch_gazebo_01",
        Label = "Large Tent",
        Desc = "The actual party tent!",
        Jobs = {
            police = true,
            ems = true,
            storesecurity = true,
        }
    },
    {
        Prop = "delete_closest",
        Label = "Remove barricade",
        Desc = "Remove your nearest prop.",
        Jobs = {
            police = true,
            ems = true,
            storesecurity = true,
        }
    },
}

local StaticBarriers = {
    ["robijn_barrier_nolights"] = true,
    ["robijn_barrier_lights"] = true,
    ["ch_prop_ch_fib_01a"] = true,
    ["prop_gazebo_01"] = true,
    ["ch_prop_ch_gazebo_01"] = true,
}

local TrafficBarriers = {
    ["prop_barrier_work05"] = true,
    ["robijn_barrier_nolights"] = true,
    ["robijn_barrier_lights"] = true,
}

FW.Commands.Add("barricade", "Place a barricade.", {}, false, function(Source, Args)
    local Player = FW.Functions.GetPlayer(Source)
    if Player == nil then return end
    if (Player.PlayerData.job.name ~= "police" and Player.PlayerData.job.name ~= "storesecurity" and Player.PlayerData.job.name ~= "ems") or not Player.PlayerData.job.onduty then
        return Player.Functions.Notify("You are not allowed to do this..", "error")
    end

    local Coords = GetEntityCoords(GetPlayerPed(Source))
    local ClosestDist, ClosestId = 0, 0

    for k, v in pairs(Config.Barricades) do
        if ClosestId == 0 or #(v.Coords - Coords) < ClosestDist then
            ClosestDist, ClosestId = #(v.Coords - Coords), v.Id
        end
    end

    local FilteredBarriers = {}
    for k, v in pairs(Barriers) do
        if v.Jobs[Player.PlayerData.job.name] then
            FilteredBarriers[#FilteredBarriers + 1] = v
        end
    end

    TriggerClientEvent("fw-police:Client:OpenBarricadeMenu", Source, FilteredBarriers, ClosestId > 0 and ClosestDist < 2.0 and Config.Barricades[ClosestId] or false)
end)

FW.Functions.CreateCallback("fw-police:Server:GetProps", function(Source, Cb)
    Cb(Config.Barricades)
end)

FW.RegisterServer("fw-police:Server:PlaceBarricade", function(Source, Model, Coords, Heading)
    local Player = FW.Functions.GetPlayer(Source)
    if Player == nil then return end

    local BarricadeId = #Config.Barricades + 1
    BarricadesPlaced = BarricadesPlaced + 1

    local Label = "Onbekende Prop"

    for k, v in pairs(Barriers) do
        if v.Prop == Model then
            Label = v.Label
            break
        end
    end

    local Timestamp = os.date("*t", os.time())
    Config.Barricades[BarricadeId] = {
        Id = BarricadesPlaced,
        Model = Model,
        Label = Label,
        Coords = Coords,
        Rotation = Heading,
        PlacedBy = Player.PlayerData.metadata.callsign,
        PlacedAt = Timestamp.day .. "/" .. Timestamp.month .. "/" .. Timestamp.year .. ", " .. Timestamp.hour .. ":" .. Timestamp.min .. ":" .. Timestamp.sec,
        Static = StaticBarriers[Model],
        Traffic = TrafficBarriers[Model],
    }

    TriggerClientEvent("fw-police:Client:SetPropData", -1, "Add", BarricadeId, Config.Barricades[BarricadeId])
end)

FW.RegisterServer("fw-police:Server:DeleteBarricade", function(Source, BarricadeId)
    local Player = FW.Functions.GetPlayer(Source)
    if Player == nil then return end
    if (Player.PlayerData.job.name ~= "police" and Player.PlayerData.job.name ~= "storesecurity" and Player.PlayerData.job.name ~= "ems") or not Player.PlayerData.job.onduty then
        return Player.Functions.Notify("You are not allowed to do this..", "error")
    end

    local Coords = GetEntityCoords(GetPlayerPed(Source))
    local ClosestDist, ClosestId = 0, 0

    for k, v in pairs(Config.Barricades) do
        if ClosestId == 0 or #(v.Coords - Coords) < ClosestDist then
            ClosestDist, ClosestId = #(v.Coords - Coords), v.Id
        end
    end

    if ClosestId == 0 or ClosestDist > 2.0 then
        return Player.Functions.Notify("You are not near a barricade..", "error")
    end

    DestroyBarricade(ClosestId)
end)

function DestroyBarricade(BarricadeId)
    for k, v in pairs(Config.Barricades) do
        if v.Id == BarricadeId then
            table.remove(Config.Barricades, k)
            break
        end
    end

    TriggerClientEvent("fw-police:Client:SetPropData", -1, "Remove", BarricadeId)
end