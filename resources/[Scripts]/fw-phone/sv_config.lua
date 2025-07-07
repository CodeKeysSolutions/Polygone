Config.MilkRoadProducts = {
    ['milkroad'] = {
        {
            Id = 1,
            Icon = 'fas fa-user-secret',
            Label = 'VPN',
            Costs = {
                Amount = 20,
                CryptoId = 1,
                Label = Config.Crypto[1].Label:upper()
            },
            Reward = { Item = "vpn", CustomType = "" }
        },
        {
            Id = 2,
            Icon = 'fas fa-mask',
            Label = 'USB-apparaat',
            Costs = {
                Amount = 50,
                CryptoId = 2,
                Label = Config.Crypto[2].Label:upper()
            },
            Reward = { Item = "methusb" }
        },
        {
            Id = 3,
            Icon = 'fas fa-road',
            Label = 'Race USB',
            Costs = {
                Amount = 10,
                CryptoId = 2,
                Label = Config.Crypto[2].Label:upper()
            },
            Reward = { Item = "racing-usb" }
        },
    },
}

Config.Networks = {
    {
        Id = "milkroad",
        Name = "Public Hotspot",
        Center = vector3(1099.35, -345.92, 66.18),
        Size = 5.0,
        Password = false,
        Enabled = function(Source)
            return true
        end,
    },
    {
        Id = "bennys",
        Name = "Bennys Motorworks",
        Center = vector3(-211.13, -1326.52, 31.3),
        Size = 50.0,
        Enabled = function(Source)
            return exports['fw-businesses']:HasPlayerBusinessPermission("Bennys Motorworks", Source, 'VehicleSales')
        end,
    },
    {
        Id = "pdm",
        Name = "Premium Deluxe Motorsports",
        Center = vector3(-42.83, -1093.77, 27.27),
        Size = 40.0,
        Enabled = function(Source)
            return exports['fw-businesses']:HasPlayerBusinessPermission("Premium Deluxe Motorsports", Source, 'VehicleSales')
        end,
    },
    {
        Id = "lostmc",
        Name = "The Lost Holland",
        Center = vector3(969.19, -122.23, 74.35),
        Size = 80.0,
        Enabled = function(Source)
            return exports['fw-businesses']:HasPlayerBusinessPermission("The Lost Holland", Source, 'VehicleSales')
        end,
    },
    {
        Id = "losmuertos",
        Name = "Muertos Motorcycle Shop",
        Center = vector3(1232.86, 3593.99, 33.83),
        Size = 80.0,
        Enabled = function(Source)
            return exports['fw-businesses']:HasPlayerBusinessPermission("Muertos Motorcycle Shop", Source, 'VehicleSales')
        end,
    },
    -- {
    --     Id = "bearlymc",
    --     Name = "Bearly Legal MC",
    --     Center = vector3(124.8, 313.41, 112.14),
    --     Size = 80.0,
    --     Enabled = function(Source)
    --         return exports['fw-businesses']:HasPlayerBusinessPermission("Bearly Legal MC", Source, 'VehicleSales')
    --     end,
    -- },
    {
        Id = "darkwolves",
        Name = "Dark Wolves MC",
        Center = vector3(1712.73, 4781.29, 43.67),
        Size = 80.0,
        Enabled = function(Source)
            return exports['fw-businesses']:HasPlayerBusinessPermission("Dark Wolves MC", Source, 'VehicleSales')
        end,
    },
    {
        Id = "flightschool",
        Name = "Los Santos Vliegschool",
        Center = vector3(-954.35, -2986.74, 14.29),
        Size = 100.0,
        Enabled = function(Source)
            return exports['fw-businesses']:HasPlayerBusinessPermission("Los Santos Vliegschool", Source, 'VehicleSales')
        end,
    },
}

Config.Bankbusters = {
    {
        Id = "Bank",
        Data = { Bank = "Great Ocean" },
        Label = "Fleeca: Great Ocean",
        Time = 60 * math.random(60, 120), -- 2 > 3 hours. 
        Expired = false,
        Claimers = {},
    },
    {
        Id = "Bank",
        Data = { Bank = "Harmony" },
        Label = "Fleeca: Harmony",
        Time = 60 * math.random(60, 120), -- 2 > 3 hours. 
        Expired = false,
        Claimers = {},
    },
    {
        Id = "Bank",
        Data = { Bank = "Life Invader" },
        Label = "Fleeca: Life Invader",
        Time = 60 * math.random(60, 120), -- 2 > 3 hours. 
        Expired = false,
        Claimers = {},
    },
    {
        Id = "Bank",
        Data = { Bank = "Legion Square" },
        Label = "Fleeca: Legion Square",
        Time = 60 * math.random(60, 120), -- 2 > 3 hours. 
        Expired = false,
        Claimers = {},
    },
    {
        Id = "Bank",
        Data = { Bank = "Pink Cage" },
        Label = "Fleeca: Pink Cage",
        Time = 60 * math.random(60, 120), -- 2 > 3 hours. 
        Expired = false,
        Claimers = {},
    },
    {
        Id = "Bank",
        Data = { Bank = "Hawick" },
        Label = "Fleeca: Hawick",
        Time = 60 * math.random(60, 120), -- 2 > 3 hours. 
        Expired = false,
        Claimers = {},
    },
    {
        Id = "Bank",
        Data = { Bank = "Bay City" },
        Label = "Bay City Bank",
        Time = 60 * math.random(60, 120), -- 2 > 3 hours. 
        Expired = false,
        Claimers = {},
    },
    {
        Id = "Paleto",
        Data = {},
        Label = "Blaine County Savings Bank",
        Time = 60 * math.random(60, 120), -- 2 > 3 hours. 
        Expired = false,
        Claimers = {},
    },
    {
        Id = "Bobcat",
        Data = {},
        Label = "Bobcat Security",
        Time = 60 * math.random(220, 300), -- 4 > 5 hours. 
        Expired = false,
        Claimers = {},
    },
    {
        Id = "Jewelry",
        Data = {},
        Label = "Vangelico Jewelry",
        Time = 60 * math.random(180, 300), -- 3 > 5 hours. 
        Expired = false,
        Claimers = {},
    },
    -- {
    --     Id = "HumaneLabs",
    --     Data = {},
    --     Label = "Humane Labs & Research",
    --     Time = 60 * math.random(120, 240), -- 2 > 4 hours. 
    --     Expired = false,
    --     Claimers = {},
    -- },
    -- {
    --     Id = "Yacht",
    --     Data = {},
    --     Label = "Yacht",
    --     Time = 60 * math.random(180, 300), -- 3 > 5 hours. 
    --     Expired = false,
    --     Claimers = {},
    -- },
}

-- Variants
local Variations = {
    Jackets = {Male = {}, Female = {}},
    Hair = {Male = {}, Female = {}},
    Bags = {Male = {}, Female = {}},
    Visor = {Male = {}, Female = {}},
    Gloves = {
        Male = { ... }, -- unchanged, just data
        Female = { ... }
    }
}

function AddNewVariation(Type, Gender, From, To)
    local Where = Variations[Type][Gender]
    Where[From] = To
    Where[To] = From
end

Citizen.CreateThread(function()
    -- Male Visor/Hat Variations
    AddNewVariation("Visor", "Male", 9, 10)
    -- ...existing code...
    AddNewVariation("Bags", "Female", 45, 44) -- Female Bags
    AddNewVariation("Bags", "Female", 41, 40)
end)

-- Code
local Clothes = {
    [GetHashKey("mp_m_freemode_01")] = {
        ["Pants"] = { Draw = 61, Txd = 0 },
        ["Shirt"] = { Draw = 15, Txd = 0 },
        ["Jacket"] = { Draw = 15, Txd = 0 },
        ["Arms"] = { Draw = 15, Txd = 0 },
        ["Shoes"] = { Draw = 34, Txd = 0 },
        ["Vest"] = { Draw = 0, Txd = 0 },
        ["Neck"] = { Draw = 0, Txd = 0 }
    },
    [GetHashKey("mp_f_freemode_01")] = {
        ["Pants"] = { Draw = 15, Txd = 3 },
        ["Shirt"] = { Draw = 14, Txd = 0 },
        ["Jacket"] = { Draw = 15, Txd = 3 },
        ["Arms"] = { Draw = 15, Txd = 0 },
        ["Shoes"] = { Draw = 35, Txd = 0 },
        ["Vest"] = { Draw = 0, Txd = 0 },
        ["Neck"] = { Draw = 0, Txd = 0 }
    }
}

local Animations = {
    ["Vest"] = { Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Timeout = 1200 },
    ["Shoes"] = { Dict = "random@domestic", Anim = "pickup_low", Move = 0, Timeout = 1200 },
    ["Shirt"] = { Dict = "clothingtie", Anim = "try_tie_negative_a", Move = 51, Timeout = 1200 },
    ["Pants"] = { Dict = "re@construction", Anim = "out_of_breath", Move = 51, Timeout = 1300 },
    ["Visor"] = { Dict = "mp_masks@standard_car@ds@", Anim = "put_on_mask", Move = 51, Timeout = 600 },
    ["Bag"] = { Dict = "anim@heists@ornate_bank@grab_cash", Anim = "intro", Move = 51, Timeout = 1600 },
    ["Gloves"] = { Dict = "nmt_3_rcm-10", Anim = "cs_nigel_dual-10", Move = 51, Timeout = 1200 },
    ["Neck"] = {Dict = "clothingtie", Anim = "try_tie_positive_a", Move = 51, Timeout = 2100},
}

local hasPantsOff = false
local lastPants = {}
RegisterNetEvent('fw-menu:Client:TogglePants', function()
    RequestAnimDict(Animations["Pants"].Dict)
    while not HasAnimDictLoaded(Animations["Pants"].Dict) do Wait(3) end

    TaskPlayAnim(PlayerPedId(), Animations["Pants"].Dict, Animations["Pants"].Anim, 3.0, 3.0, Animations["Pants"].Timeout, Animations["Pants"].Move, 0, false, false, false)

    Citizen.SetTimeout(Animations["Pants"].Timeout, function()
        if not hasPantsOff then
            if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") or GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
                
                StopAnimTask(PlayerPedId(), Animations["Pants"].Dict, Animations["Pants"].Anim, 1.0)
                hasPantsOff = true
                lastPants = { Draw = GetPedDrawableVariation(PlayerPedId(), 4), Txd = GetPedTextureVariation(PlayerPedId(), 4) }
                
                SetPedComponentVariation(PlayerPedId(), 4, Clothes[GetEntityModel(PlayerPedId())]["Pants"].Draw, Clothes[GetEntityModel(PlayerPedId())]["Pants"].Txd, 0)
            end
        else
            if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") or GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
                hasPantsOff = false
                SetPedComponentVariation(PlayerPedId(), 4, lastPants.Draw, lastPants.Txd, 0)
                lastPants = {}
            end
        end
    end)
end)

local hasShirtOff = false
local hasVestOff = false
local lastJackets = {}
local lastArms = {}
local lastVest = {}
RegisterNetEvent('fw-menu:Client:ToggleShirt', function()
    RequestAnimDict(Animations["Shirt"].Dict)
    while not HasAnimDictLoaded(Animations["Shirt"].Dict) do Wait(3) end

    TaskPlayAnim(PlayerPedId(), Animations["Shirt"].Dict, Animations["Shirt"].Anim, 3.0, 3.0, Animations["Shirt"].Timeout, Animations["Shirt"].Move, 0, false, false, false)

    Citizen.SetTimeout(Animations["Shirt"].Timeout, function()
        if not hasShirtOff then
            if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") or GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
                StopAnimTask(PlayerPedId(), Animations["Shirt"].Dict, Animations["Shirt"].Anim, 1.0)
                hasShirtOff = true
                lastJackets = { Draw = GetPedDrawableVariation(PlayerPedId(), 11), Txd = GetPedTextureVariation(PlayerPedId(), 11) }
                lastArms = { Draw = GetPedDrawableVariation(PlayerPedId(), 3), Txd = GetPedTextureVariation(PlayerPedId(), 3) }
                lastVest = { Draw = GetPedDrawableVariation(PlayerPedId(), 9), Txd = GetPedTextureVariation(PlayerPedId(), 9) }
                lastShirt = { Draw = GetPedDrawableVariation(PlayerPedId(), 8), Txd = GetPedTextureVariation(PlayerPedId(), 8) }
        
                SetPedComponentVariation(PlayerPedId(), 8, Clothes[GetEntityModel(PlayerPedId())]["Shirt"].Draw, Clothes[GetEntityModel(PlayerPedId())]["Shirt"].Txd, 0)
                SetPedComponentVariation(PlayerPedId(), 9, Clothes[GetEntityModel(PlayerPedId())]["Vest"].Draw, Clothes[GetEntityModel(PlayerPedId())]["Vest"].Txd, 0)
                SetPedComponentVariation(PlayerPedId(), 3, Clothes[GetEntityModel(PlayerPedId())]["Arms"].Draw, GetPedTextureVariation(PlayerPedId(), 3), 0)
                SetPedComponentVariation(PlayerPedId(), 11, Clothes[GetEntityModel(PlayerPedId())]["Jacket"].Draw, Clothes[GetEntityModel(PlayerPedId())]["Jacket"].Txd, 0)
            end
        else
            if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") or GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
                hasShirtOff = false
                
                SetPedComponentVariation(PlayerPedId(), 8, lastShirt.Draw, lastShirt.Txd, 0)
                SetPedComponentVariation(PlayerPedId(), 9, lastVest.Draw, lastVest.Txd, 0)
                SetPedComponentVariation(PlayerPedId(), 3, lastArms.Draw, GetPedTextureVariation(PlayerPedId(), 3), 0)
                SetPedComponentVariation(PlayerPedId(), 11, lastJackets.Draw, lastJackets.Txd, 0)
                lastJackets = {}
                lastArms = {}
            end
        end
    end)
end)

local hasShoesOff = false
local lastShoes = {}
RegisterNetEvent('fw-menu:Client:ToggleShoes', function()
    RequestAnimDict(Animations["Shoes"].Dict)
    while not HasAnimDictLoaded(Animations["Shoes"].Dict) do Wait(3) end

    TaskPlayAnim(PlayerPedId(), Animations["Shoes"].Dict, Animations["Shoes"].Anim, 3.0, 3.0, Animations["Shoes"].Timeout, Animations["Shoes"].Move, 0, false, false, false)

    Citizen.SetTimeout(Animations["Shoes"].Timeout, function()
        if not hasShoesOff then
            if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") or GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
                
                StopAnimTask(PlayerPedId(), Animations["Shoes"].Dict, Animations["Shoes"].Anim, 1.0)
                hasShoesOff = true
                lastShoes = { Draw = GetPedDrawableVariation(PlayerPedId(), 6), Txd = GetPedTextureVariation(PlayerPedId(), 6) }
                
                SetPedComponentVariation(PlayerPedId(), 6, Clothes[GetEntityModel(PlayerPedId())]["Shoes"].Draw, Clothes[GetEntityModel(PlayerPedId())]["Shoes"].Txd, 0)
            end
        else
            if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") or GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
                hasShoesOff = false
                SetPedComponentVariation(PlayerPedId(), 6, lastShoes.Draw, lastShoes.Txd, 0)
                lastShoes = {}
            end
        end
    end)
end)

RegisterNetEvent('fw-menu:Client:ToggleVest', function()
    RequestAnimDict(Animations["Vest"].Dict)
    while not HasAnimDictLoaded(Animations["Vest"].Dict) do Wait(3) end

    TaskPlayAnim(PlayerPedId(), Animations["Vest"].Dict, Animations["Vest"].Anim, 3.0, 3.0, Animations["Vest"].Timeout, Animations["Vest"].Move, 0, false, false, false)

    Citizen.SetTimeout(Animations["Vest"].Timeout, function()
        if not hasVestOff then
            if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") or GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
                
                StopAnimTask(PlayerPedId(), Animations["Vest"].Dict, Animations["Vest"].Anim, 1.0)
                hasVestOff = true
                lastVest = { Draw = GetPedDrawableVariation(PlayerPedId(), 9), Txd = GetPedTextureVariation(PlayerPedId(), 9) }
                
                SetPedComponentVariation(PlayerPedId(), 9, Clothes[GetEntityModel(PlayerPedId())]["Vest"].Draw, Clothes[GetEntityModel(PlayerPedId())]["Vest"].Txd, 0)
            end
        else
            if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") or GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
                hasVestOff = false
                SetPedComponentVariation(PlayerPedId(), 9, lastVest.Draw, lastVest.Txd, 0)
                lastVest = {}
            end
        end
    end)
end)

RegisterNetEvent('fw-menu:Client:ToggleVisor', function()
    local Gender = GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") == "Female" and "Female" or "Male"
    local Current = GetPedPropIndex(PlayerPedId(), 0)
    local Texture = GetPedPropTextureIndex(PlayerPedId(), 0)
    local NewProp = Variations.Visor[Gender][Current]
    if NewProp == nil then
        FW.Functions.Notify("This helmet has no visor..", "error")
        return
    end

    RequestAnimDict(Animations["Visor"].Dict)
    while not HasAnimDictLoaded(Animations["Visor"].Dict) do Wait(3) end
    TaskPlayAnim(PlayerPedId(), Animations["Visor"].Dict, Animations["Visor"].Anim, 3.0, 3.0, Animations["Visor"].Timeout, Animations["Visor"].Move, 0, false, false, false)

    Citizen.SetTimeout(Animations["Visor"].Timeout, function()
        StopAnimTask(PlayerPedId(), Animations["Visor"].Dict, Animations["Visor"].Anim, 1.0)
        SetPedPropIndex(PlayerPedId(), 0, NewProp, Texture, true)
    end)
end)

RegisterNetEvent('fw-menu:Client:ToggleBag', function()
    local Gender = GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") == "Female" and "Female" or "Male"
    local Current = GetPedDrawableVariation(PlayerPedId(), 5)
    local Texture = GetPedTextureVariation(PlayerPedId(), 5)
    local NewProp = Variations.Bags[Gender][Current]
    print(Current, Texture, NewProp)
    if NewProp == nil then
        FW.Functions.Notify("This backpack doesn't do much..", "error")
        return
    end

    RequestAnimDict(Animations["Bag"].Dict)
    while not HasAnimDictLoaded(Animations["Bag"].Dict) do Wait(3) end
    TaskPlayAnim(PlayerPedId(), Animations["Bag"].Dict, Animations["Bag"].Anim, 3.0, 3.0, Animations["Bag"].Timeout, Animations["Bag"].Move, 0, false, false, false)

    Citizen.SetTimeout(Animations["Bag"].Timeout, function()
        StopAnimTask(PlayerPedId(), Animations["Bag"].Dict, Animations["Bag"].Anim, 1.0)
        SetPedComponentVariation(PlayerPedId(), 5, NewProp, Texture, 0)
    end)
end)

local OriginalGloves = {}
RegisterNetEvent('fw-menu:Client:ToggleGloves', function()
    local Gender = GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") == "Female" and "Female" or "Male"
    local Current = GetPedDrawableVariation(PlayerPedId(), 3)
    local Texture = GetPedTextureVariation(PlayerPedId(), 3)
    local NewProp = Variations.Gloves[Gender][Current]
    if NewProp == nil then
        if OriginalGloves.Draw then
            NewProp = OriginalGloves.Draw
            Texture = OriginalGloves.Txt
        else
            FW.Functions.Notify("These gloves seem to be stuck..", "error")
            return
        end
    else
        OriginalGloves.Draw = Current
        OriginalGloves.Txt = Texture
    end

    RequestAnimDict(Animations["Gloves"].Dict)
    while not HasAnimDictLoaded(Animations["Gloves"].Dict) do Wait(3) end
    TaskPlayAnim(PlayerPedId(), Animations["Gloves"].Dict, Animations["Gloves"].Anim, 3.0, 3.0, Animations["Gloves"].Timeout, Animations["Gloves"].Move, 0, false, false, false)

    Citizen.SetTimeout(Animations["Gloves"].Timeout, function()
        StopAnimTask(PlayerPedId(), Animations["Gloves"].Dict, Animations["Gloves"].Anim, 1.0)
        SetPedComponentVariation(PlayerPedId(), 3, NewProp, Texture, 0)
    end)
end)

local HasNeckOff = false
local LastNeck = {}
RegisterNetEvent('fw-menu:Client:ToggleNeck', function()
    RequestAnimDict(Animations["Neck"].Dict)
    while not HasAnimDictLoaded(Animations["Neck"].Dict) do Wait(3) end

    TaskPlayAnim(PlayerPedId(), Animations["Neck"].Dict, Animations["Neck"].Anim, 3.0, 3.0, Animations["Neck"].Timeout, Animations["Neck"].Move, 0, false, false, false)

    Citizen.SetTimeout(Animations["Neck"].Timeout, function()
        if not HasNeckOff then
            if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") or GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
                
                StopAnimTask(PlayerPedId(), Animations["Neck"].Dict, Animations["Neck"].Anim, 1.0)
                HasNeckOff = true
                LastNeck = { Draw = GetPedDrawableVariation(PlayerPedId(), 7), Txd = GetPedTextureVariation(PlayerPedId(), 7) }
                
                SetPedComponentVariation(PlayerPedId(), 7, Clothes[GetEntityModel(PlayerPedId())]["Neck"].Draw, Clothes[GetEntityModel(PlayerPedId())]["Neck"].Txd, 0)
            end
        else
            if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") or GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
                HasNeckOff = false
                SetPedComponentVariation(PlayerPedId(), 7, LastNeck.Draw, LastNeck.Txd, 0)
                LastNeck = {}
            end
        end
    end)
end)