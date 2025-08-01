RegisterNetEvent("fw-ui:Ready")
AddEventHandler("fw-ui:Ready", function()
    exports['fw-ui']:AddEyeEntry("farming_stock_ped", {
        Type = 'Entity',
        EntityType = 'Ped',
        SpriteDistance = 7.0,
        Distance = 1.5,
        Position = vector4(525.59, -1654.88, 28.3, 51.59),
        Model = 's_f_y_factory_01',
        Options = {
            {
                Name = 'open_shop',
                Icon = 'fas fa-list-alt',
                Label = 'View Stock',
                EventType = 'Client',
                EventName = 'fw-misc:Client:Farm:ViewStock',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'buy_seed-bag',
                Icon = 'fas fa-sack',
                Label = 'Buy seed sack ($ 1.180,00)',
                EventType = 'Server',
                EventName = 'fw-misc:Server:Farm:PurchaseSeedbag',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'buy_produce-basket',
                Icon = 'fas fa-carrot',
                Label = 'Buy fruit basket ($ 1.325,00)',
                EventType = 'Server',
                EventName = 'fw-misc:Server:Farm:PurchaseProduceBasket',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'buy_wateringcan',
                Icon = 'fas fa-faucet-drip',
                Label = 'Buy wateringcan ($ 720,00)',
                EventType = 'Server',
                EventName = 'fw-misc:Server:Farm:PurchaseWateringCan',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'buy_pitchfork',
                Icon = 'fas fa-utensil-fork',
                Label = 'Buy pitchfork($ 1.000,00)',
                EventType = 'Server',
                EventName = 'fw-misc:Server:Farm:PurchasePitchfork',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'buy_hoe',
                Icon = 'fas fa-circle',
                Label = 'Buy hoe ($ 1.000,00)',
                EventType = 'Server',
                EventName = 'fw-misc:Server:Farm:PurchaseHoe',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
        }
    })

    exports['fw-ui']:AddEyeEntry("farming_stock_ped_prison", {
        Type = 'Entity',
        EntityType = 'Ped',
        SpriteDistance = 7.0,
        Distance = 1.5,
        Position = vector4(1706.82, 2552.14, 44.55, 247.67),
        Model = 'a_m_m_farmer_01',
        Options = {
            {
                Name = 'open_shop',
                Icon = 'fas fa-list-alt',
                Label = 'Check stock',
                EventType = 'Client',
                EventName = 'fw-misc:Client:Farm:ViewStock',
                EventParams = { Type = "Prison" },
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'buy_seed-bag',
                Icon = 'fas fa-sack',
                Label = 'Buy seed sack($ 80,00)',
                EventType = 'Server',
                EventName = 'fw-misc:Server:Farm:PurchaseSeedbag',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'buy_produce-basket',
                Icon = 'fas fa-carrot',
                Label = 'Buy fruit basket ($ 100,00)',
                EventType = 'Server',
                EventName = 'fw-misc:Server:Farm:PurchaseProduceBasket',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'buy_wateringcan',
                Icon = 'fas fa-faucet-drip',
                Label = 'Buy wateringcan($ 50,00)',
                EventType = 'Server',
                EventName = 'fw-misc:Server:Farm:PurchaseWateringCan',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'buy_pitchfork',
                Icon = 'fas fa-utensil-fork',
                Label = 'Buy pitchfork ($ 300,00)',
                EventType = 'Server',
                EventName = 'fw-misc:Server:Farm:PurchasePitchfork',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'buy_hoe',
                Icon = 'fas fa-circle',
                Label = 'Buy hoe($ 300,00)',
                EventType = 'Server',
                EventName = 'fw-misc:Server:Farm:PurchaseHoe',
                EventParams = {},
                Enabled = function(Entity)
                    return true
                end,
            },
            {
                Name = 'refill_wateringcan',
                Icon = 'fas fa-faucet-drip',
                Label = 'Refill wateringcan..',
                EventType = 'Client',
                EventName = 'fw-misc:Client:Farm:RefillWateringcan',
                EventParams = {},
                Enabled = function(Entity)
                    return exports['fw-inventory']:HasEnoughOfItem("farming-wateringcan", 1)
                end,
            },
        }
    })
end)

RegisterNetEvent("fw-misc:Client:Farm:ViewStock")
AddEventHandler("fw-misc:Client:Farm:ViewStock", function(Data)
    local MenuItems = {
        {
            Icon = 'farm',
            Title = 'Stock',
            Desc = 'For own use!',
            Data = { Event = '', Type = '' }
        }
    }

    for k, v in pairs(Config.FarmTypes) do
        local Stock = FW.SendCallback("fw-misc:Server:Farming:GetStock", k)

        MenuItems[#MenuItems + 1] = {
            Icon = 'seedling',
            Title = v,
            Desc = 'In Stock: ' .. Stock,
            SecondMenu = {
                {
                    Title = 'Restock',
                    Desc = Data.Type == "Prison" and "Free" or exports['fw-businesses']:NumberWithCommas((Stock < 40 and Stock or 40) * 8),
                    Data = { Event = 'fw-misc:Server:PurchaseStock', Type = 'Server', Category = k, IsPrison = Data.Type == "Prison" },
                    CloseMenu = true
                }
            }
        }

        ::Skip::
    end

    Citizen.SetTimeout(450, function()
        FW.Functions.OpenMenu({ MainMenuItems = MenuItems })
    end)
end)

RegisterNetEvent("fw-misc:Client:Farm:RefillWateringcan")
AddEventHandler("fw-misc:Client:Farm:RefillWateringcan", function()
    local PlayerData = FW.Functions.GetPlayerData()
    if not PlayerData.metadata.islifer and PlayerData.metadata.jailtime <= 0 and PlayerData.job.name ~= "doc" then
        return
    end

    if GetVehiclePedIsIn(PlayerPedId()) ~= 0 then return end

    local Item = exports['fw-inventory']:GetItemByName('farming-wateringcan')
    if not Item then return end

    local Quality = exports['fw-inventory']:CalculateQuality(Item.Item, Item.CreateDate)
    if Quality <= 10 then return FW.Functions.Notify("Destroyed!", "error") end

    exports['fw-inventory']:SetBusyState(true)
    exports['fw-assets']:AddProp('wateringcan')

    local Finished = FW.Functions.CompactProgressbar(8500, "Refilling canr...", false, true, {disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true}, { anim = 'fire', animDict = 'weapon@w_sp_jerrycan', flags = 49 }, {}, {}, false)
    exports['fw-inventory']:SetBusyState(false)
    exports['fw-assets']:RemoveProp()

    if Finished then
        TriggerServerEvent("fw-misc:Server:Farming:SetWateringCanCapacity", Item.Slot, 100.0)
        FW.Functions.Notify("Full!", "success")
    else
        FW.Functions.Notify("Canceled..", "error")
    end
end)