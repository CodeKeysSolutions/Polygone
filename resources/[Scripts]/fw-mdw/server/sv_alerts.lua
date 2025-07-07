Alerts, Calls = {}, {}
local LastAlertId = 0

function GenerateAlertId()
    LastAlertId = LastAlertId + 1
    return LastAlertId
end

-- {
--     Coords = vector3(-95.62, -1110.21, 28.49),
--     Id = AlertId,
--     Color = "Red",
--     Code = "10-99A",
--     Title = "Tracker Device Tampering - Grand Theft Auto",
--     Timestamp = 1667769340000,
--     Information = {
--         { Icon = "fa-globe-europe", Text = "Magellan Ave, Vespucci" },
--         { Icon = "fa-compass", Text = "East Bound" },
--         { { Icon = "fa-car", Text = "R1" }, { Icon = "fa-closed-captioning", Text = "7K6DOO77" } },
--         { Icon = "fa-palette", Text = "Metallic Frost White on Metallic Frost White" },
--         { Icon = "fa-sticky-note", Text = "Vehicle's Class: M+" },
--     }
-- }

FW.Functions.CreateCallback("fw-mdw:Client:GetAlerts", function(Source, Cb)
    Cb(Alerts)
end)

FW.Functions.CreateCallback("fw-mdw:Client:GetCalls", function(Source, Cb)
    Cb(Calls)
end)

RegisterNetEvent("fw-mdw:Server:AddCustomAlert")
AddEventHandler("fw-mdw:Server:AddCustomAlert", function(Data)
    AddAlert(Data)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Racing")
AddEventHandler("fw-mdw:Server:SendAlert:Racing", function(StreetName, Heading)
    local Source = source
    AddAlert({
        Color = "Blue",
        Title = "Illegal Street Race",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
            { Icon = "fa-compass", Text = Heading },
        }
    }, false, false, false, false)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:TrackedGoods")
AddEventHandler("fw-mdw:Server:SendAlert:TrackedGoods", function(Coords, StreetName, Serial)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Title = "Tracker Tampering Valuable Goods",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
            { Icon = "fa-sticky-note", Text = Serial },
        }
    }, false, false, false, false)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:MonitedAccountActivity")
AddEventHandler("fw-mdw:Server:SendAlert:MonitedAccountActivity", function(Coords, StreetName, Name)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Title = "Monitored Account Activity",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
            { Icon = "fa-sticky-note", Text = Name },
        }
    }, false, false, false, false)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:CivilianRobbery")
AddEventHandler("fw-mdw:Server:SendAlert:CivilianRobbery", function(Coords, StreetName, Gender)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Red",
        Code = "10-31B",
        Title = "Civilian Robbery in Progress",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
            { Icon = "fa-venus-mars", Text = Gender },
        }
    }, true, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Container")
AddEventHandler("fw-mdw:Server:SendAlert:Container", function(Coords, StreetName, Grade)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = "10-90C",
        Title = "Container Security System Tampering",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
            { Icon = "fa-sticky-note", Text = Grade },
        }
    }, true, false, false, false)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:FleecaBank")
AddEventHandler("fw-mdw:Server:SendAlert:FleecaBank", function(Coords)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Red",
        Code = "10-90E",
        Title = "Fleeca Bank Alarm",
        Information = {
            { Text = "Robbery at a Fleeca Bank in progress." },
        }
    }, true, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:ATM")
AddEventHandler("fw-mdw:Server:SendAlert:ATM", function(Coords, StreetName)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = "10-90C",
        Title = "ATM Alarm",
        Information = {
            { Text = "Robbery at an ATM in progress." },
            { Icon = "fa-globe-europe", Text = StreetName },
        }
    }, false, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:JewelryAlarm")
AddEventHandler("fw-mdw:Server:SendAlert:JewelryAlarm", function(Coords)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Red",
        Code = "10-90E",
        Title = "Vangelico Jewelry Alarm",
        Information = {
            { Text = "Robbery at the Vangelico Jewelry in progress." },
        }
    }, true, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:BayCity")
AddEventHandler("fw-mdw:Server:SendAlert:BayCity", function(Coords)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Red",
        Code = "10-90E",
        Title = "Bay City Bank Alarm",
        Information = {
            { Text = "Robbery at the Bay City Bank in progress." },
        }
    }, true, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Bobcat")
AddEventHandler("fw-mdw:Server:SendAlert:Bobcat", function(Coords)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Red",
        Code = "10-90E",
        Title = "Bobcat Security Alarm",
        Information = {
            { Text = "Robbery at the Bobcat Security in progress." },
        }
    }, true, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Banktruck")
AddEventHandler("fw-mdw:Server:SendAlert:Banktruck", function(Coords)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Red",
        Code = "10-90D",
        Title = "Banktruck Alarm",
        Information = {
            { Text = "Robbery at a Gruppe 6 money transport in progress." },
        }
    }, true, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Paleto")
AddEventHandler("fw-mdw:Server:SendAlert:Paleto", function(Coords)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Red",
        Code = "10-90E",
        Title = "Blaine County Savings Bank Alarm",
        Information = {
            { Text = "Robbery at the Blaine County Savings Bank in progress." },
        }
    }, true, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Vault")
AddEventHandler("fw-mdw:Server:SendAlert:Vault", function()
    AddAlert({
        Coords = vector3(231.63, 215.14, 106.28),
        Color = "Red",
        Code = "10-90",
        Title = "City Vault Alarm",
        Information = {
            { Text = "Robbery at the City Vault in progress." },
        }
    }, true, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:OfficerDown")
AddEventHandler("fw-mdw:Server:SendAlert:OfficerDown", function(Coords, StreetName, Info, Priority)
    local Source = source
    local Player = FW.Functions.GetPlayer(Source)
    if Player == nil then return end
    local UserType = (Player.PlayerData.job.name == "police" or Player.PlayerData.job.name == "doc") and "Officer" or "Medic"

    AddAlert({
        Coords = Coords,
        Color = Priority == 3 and "Red" or "Blue",
        Code = Priority == 3 and "11-13B" or "11-13A",
        Title = Priority == 3 and UserType .. " Injured URGENT" or UserType .. " Injured",
        Information = {
            { Icon = "fa-id-badge", Text = Info.Callsign .. " is injured" },
        }
    }, false, Priority == 3, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:DistressSignal")
AddEventHandler("fw-mdw:Server:SendAlert:DistressSignal", function(Coords, StreetName, Info)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Red",
        Code = "10-78",
        Title = "Panic Button",
        Information = {
            { Icon = "fa-id-badge", Text = Info.Callsign .. " needs urgent assistance" },
        }
    }, false, true, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:PrisonLockdown")
AddEventHandler("fw-mdw:Server:SendAlert:PrisonLockdown", function()
    local Source = source
    AddAlert({
        Coords = vector3(1690.66, 2533.95, 61.38),
        Color = "Red",
        Code = "11-13C",
        Title = "Bolingbroke Penitentiary Alarm",
        Information = {
            { Text = "Alarm triggered at Bolingbroke Penitentiary!" },
        }
    }, false, true, true, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Gunshots")
AddEventHandler("fw-mdw:Server:SendAlert:Gunshots", function(Coords, StreetName, InVehicle, VehicleDesc)
    local Source = source

    if InVehicle then
        AddAlert({
            Coords = Coords,
            Color = "Blue",
            Code = "10-71",
            Title = "Shots Fired from Vehicle",
            Information = {
                { Icon = "fa-globe-europe", Text = StreetName },
                { { Icon = "fa-car", Text = VehicleDesc.Name }, { Icon = "fa-closed-captioning", Text = VehicleDesc.Plate } },
                { Icon = "fa-palette", Text = VehicleDesc.Colors },

            }
        }, false, false, false, true)
    else
        AddAlert({
            Coords = Coords,
            Color = "Blue",
            Code = "10-71",
            Title = "Shots Fired",
            Information = {
                { Icon = "fa-globe-europe", Text = StreetName },

            }
        }, false, false, false, true)
    end
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Fighting")
AddEventHandler("fw-mdw:Server:SendAlert:Fighting", function(Coords, StreetName, Deadly)
    local Source = source

    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = Deadly and "10-11" or "10-10",
        Title = Deadly and "Deadly Fight in Progress" or "Fight in Progress",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },

        }
    }, false, false, false)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Dead")
AddEventHandler("fw-mdw:Server:SendAlert:Dead", function(Coords, StreetName)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = "10-47",
        Title = "Injured Civilian",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
        }
    }, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:StoreHeist")
AddEventHandler("fw-mdw:Server:SendAlert:StoreHeist", function(Coords, StreetName, IsSafe)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = IsSafe and "Red" or "Blue",
        Code = "10-90",
        Title = IsSafe and "Safe Robbery" or "Store Robbery",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
        }
    }, false, false, false)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:HouseAlarm")
AddEventHandler("fw-mdw:Server:SendAlert:HouseAlarm", function(Coords, StreetName)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = "10-31A",
        Title = "House Burglary",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
        }
    }, false, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Explosion")
AddEventHandler("fw-mdw:Server:SendAlert:Explosion", function(Coords, StreetName)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = "10-02C",
        Title = "Explosion",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
        }
    }, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:IllegalHunting")
AddEventHandler("fw-mdw:Server:SendAlert:IllegalHunting", function(Coords, StreetName)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = "10-45",
        Title = "Illegal Hunting",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
        }
    }, false, false, false)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Oxy")
AddEventHandler("fw-mdw:Server:SendAlert:Oxy", function(Coords, StreetName)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = "10-37",
        Title = "Suspicious Situation",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
        }
    }, false, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:Call")
AddEventHandler("fw-mdw:Server:SendAlert:Call", function(Coords, Message)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = "911",
        Title = "An incoming 911 call!",
        Information = {
            { Text = Message },
        }
    }, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:CarBoosting")
AddEventHandler("fw-mdw:Server:SendAlert:CarBoosting", function(Coords, StreetName, Heading, Model, Plate, Color, VehicleClass)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = VehicleClass == "D" and "Blue" or "Red",
        Code = "10-99A",
        Title = "Tracker Device Tampering - Vehicle Theft",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
            { Icon = "fa-compass", Text = Heading },
            { { Icon = "fa-car", Text = Model }, { Icon = "fa-closed-captioning", Text = Plate } },
            { Icon = "fa-palette", Text = Color },
            { Icon = "fa-sticky-note", Text = "Vehicle Class: " .. VehicleClass },
        }
    }, VehicleClass ~= "D", false, false)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:CarTheft")
AddEventHandler("fw-mdw:Server:SendAlert:CarTheft", function(Coords, StreetName, Heading, Model, Plate, Color)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = "10-60",
        Title = "Vehicle Theft",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
            { Icon = "fa-compass", Text = Heading },
            { { Icon = "fa-car", Text = Model }, { Icon = "fa-closed-captioning", Text = Plate } },
            { Icon = "fa-palette", Text = Color },
        }
    }, false, false, false, true)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:FoodchainAlarm")
AddEventHandler("fw-mdw:Server:SendAlert:FoodchainAlarm", function(Coords, StreetName, Foodchain)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Blue",
        Code = "10-98A",
        Title = "Bedrijfs Alarm",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
            { Icon = "fa-utensils", Text = Foodchain },
        }
    }, false, false, false)
end)

RegisterNetEvent("fw-mdw:Server:SendAlert:TransportingDrugs")
AddEventHandler("fw-mdw:Server:SendAlert:TransportingDrugs", function(Coords, StreetName, Heading, Model, Plate, Color)
    local Source = source
    AddAlert({
        Coords = Coords,
        Color = "Red",
        Code = "10-37A",
        Title = "Shots Fired / Transporting Drug Paraphernalia",
        Information = {
            { Icon = "fa-globe-europe", Text = StreetName },
            { Icon = "fa-compass", Text = Heading },
            { { Icon = "fa-car", Text = Model }, { Icon = "fa-closed-captioning", Text = Plate } },
            { Icon = "fa-palette", Text = Color },
        }
    }, true, false, false)
end)

function AddAlert(Data, HighCrime, HighPrio, ForEMS, ForScanner)
    local AlertId = #Alerts + 1
    Data.Id = GenerateAlertId()
    Data.Timestamp = os.time() * 1000
    Data.ForEMS = ForEMS
    Alerts[AlertId] = Data

    TriggerClientEvent('fw-mdw:Client:AddAlert', -1, AlertId, Alerts[AlertId], HighCrime or HighPrio, HighCrime, HighPrio, ForEMS, ForScanner)
end

function GetAlertById(Id)
    for k, v in pairs(Alerts) do
        if v.Id == Id then
            return k
        end
    end

    return false
end

function GetCallById(Id)
    for k, v in pairs(Calls) do
        if v.Id == Id then
            return k
        end
    end

    return false
end