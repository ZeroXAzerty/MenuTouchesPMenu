ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(5000)
    end
end)

-- Function
function sendnotification(message)
    SetNotificationBackgroundColor(70)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(false, false)
    end

-- Variables

local ped = PlayerPedId()

-- Menus

local MenuTouches = {
    Base = { Title = "~p~Menu Touches",HeaderColor = {255, 0, 0,}},
    Data = { currentMenu = "HuntRP" },
    Events = {
        onSelected = function(self, _, btn, JMenu, menuData, currentButton, currentSlt, result)
 
        end
        
    },

    Menu = {
        ["HuntRP"] = {
            b = {
                {name = "Menu Emotes", ask = "F3", askX = true},
                {name = "Inventaires", ask = "F5", askX = true},
                {name = "Menu Métiers", ask = "F6", askX = true},
                {name = "Menu Gang", ask = "F7", askX = true},
                {name = "Factures", ask = "F9", askX = true},
                {name = "Radio", ask = "F10", askX = true},
                {name = "Tomber", ask = "F11", askX = true},
                {name = "Ouvrir/Fermer compteur de Km/h", ask = "U", askX = true},
                {name = "Ceinture", ask = "K", askX = true},
                {name = "Ouvrir/Fermer coffre", ask = "L", askX = true},
                {name = "Crier/Parler/Chuchoter", ask = "W", askX = true},

            }
        },
    }
}

-- Ouverture du Menu



RegisterCommand('touches', function()
    CreateMenu(MenuTouches)
    
    
end, false)
                

