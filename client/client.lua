ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(5000)
    end
end)


-- Menus

local MenuTouches = {
    Base = { Title = "~p~Key Menu/Menu Touches",HeaderColor = {255, 0, 0,}},
    Data = { currentMenu = "ServerName" },
    Events = {
        onSelected = function(self, _, btn, JMenu, menuData, currentButton, currentSlt, result)
 
        end
        
    },

    Menu = {
        ["ServerName"] = {
            b = {
                {name = "Gauche/Left", ask = "Droite/Right", askX = true},
                {name = "Gauche/Left", ask = "Droite/Right", askX = true},
                {name = "Gauche/Left", ask = "Droite/Right", askX = true},
                {name = "Gauche/Left", ask = "Droite/Right", askX = true},
                {name = "Gauche/Left", ask = "Droite/Right", askX = true},
                {name = "Gauche/Left", ask = "Droite/Right", askX = true},
                {name = "Gauche/Left", ask = "Droite/Right", askX = true},
                {name = "Gauche/Left", ask = "Droite/Right", askX = true},
                
                -- Don't forget the ","
                --N'oubliez pas la ","

            }
        },
    }
}

-- Ouverture du Menu

-- Replace the command name by key
-- Remplacez CommandName par touches

RegisterCommand('CommandName', function()
    CreateMenu(MenuTouches)
    
    
end, false)
                

