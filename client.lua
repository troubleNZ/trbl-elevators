
local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local isLoggedIn = LocalPlayer.state.isLoggedIn
local playerPed = PlayerPedId()
local playerCoords = GetEntityCoords(playerPed)
local floors = {}
local inRangeElevator = false
local closestFloor = nil
local id = nil
local minimumdistance = 2.0  -- float - meters from zone


-- Functions

local function getClosestFloor()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    for i = 1, #Config.Locations do
        local floor = Config.Locations[i]
        local dist = #(playerCoords - floor.coords)
        if dist < minimumdistance then
            closestFloor = i
        end
    end
    return closestFloor
    
end


local function ShowFloorHeaderMenu()
    local headerMenu = {}

    -- welcome header variable based on job and rank
    if PlayerData.job.name == 'ambulance' and PlayerData.job.grade['level'] ~= 4 then
        headerMenu[#headerMenu+1] = {
            header = Lang:t('text.enter'),
            params = {}
        }
    elseif PlayerData.job.name == 'ambulance' and PlayerData.job.grade['level'] == 4 then
        headerMenu[#headerMenu+1] = {
            header = Lang:t('text.enter_boss'),
            params = {}
        }
    else 
        headerMenu[#headerMenu+1] = {
            header = Lang:t('text.enter_general'),
            params = {}
        }
    end

    -- loop through config list & adding to menu below header
    for j = 1, #Config.Locations[closestFloor].choices do

        local flooroption = Config.Locations[closestFloor].choices[j]
        headerMenu[#headerMenu+1] = {
            header = flooroption.label,--closest.choices[j].label,
            params = {
                event = 'trbl-Elevators:client:transition',
                args = {
                    id = flooroption.id,
                    }
            }
        }
    end
    
    --menu footer with close
    headerMenu[#headerMenu+1] = {
        header = Lang:t('text.close_menu'),
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }

    exports['qb-menu']:openMenu(headerMenu)
end



local function CloseMenuFull()
    exports['qb-menu']:closeMenu()
end


local function transition(id)
    local choiceid = id
    local choice = Config.Locations[closestFloor].choices[choiceid]
    local coords = choice.coords
    local heading = choice.heading
    local label = choice.label
    --local ped = PlayerPedId()
    QBCore.Functions.Progressbar("transition_location", Lang:t('success.waiting'), 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
    end)
    Citizen.Wait(5000) -- Lets Progress Bar Finish
    
    DoScreenFadeOut(1000)
    while not IsScreenFadedOut() do
        Citizen.Wait(50)
    end
    local ped = PlayerPedId()
    --print("Moving to: ".. label)
    SetEntityCoords(ped, coords)
    SetEntityHeading(ped, heading)
    Wait(500)
    DoScreenFadeIn(2000)
end

-- Threads

CreateThread(function()         -- looping get closest floor needs to be optimized
    while true do
        if isLoggedIn then
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            closestFloor = getClosestFloor()
        end
        Wait(1000)
    end
end)


CreateThread(function()     -- boxzone set up
    
    if Config.UseTarget == true then
        for k,v in pairs(Config.Locations) do
            exports[Config.TargetResourceName]:AddBoxZone(v.boxzone.name, v.coords, v.boxzone.length, v.boxzone.width, {
                name = v.boxzone.name,
                heading = v.boxzone.heading,
                debugPoly = Config.Debug,
                minZ = v.minZ,
                maxZ = v.maxZ,
                },{
                options = { {
                            --type = "client",
                            label = v.label .. " "..Lang:t('text.elevator'),
                            event = "trbl-Elevators:ShowMenu",
                            icon = "fas fa-circle-sort",
                            --job = "all",
                            } },
                distance = 2.0
                })
            --print("boxzone set up: ".. v.label)       -- debug
        end
    end
    
    if Config.UseZones == true then
        
            for k=1, #Config.Locations do
                floors[k] = PolyZone:Create(Config.Locations[k].polyzone, {
                    name="elevator"..k,
                    minZ = 	Config.Locations[k].minZ,
                    maxZ = Config.Locations[k].maxZ,
                    debugPoly = false
                })
                floors[k]:onPlayerInOut(function(isPointInside)
                    if isPointInside then
                        inRangeElevator = true
                        --print("inRangeElevator ".. inRangeElevator)
                        exports['qb-core']:DrawText(Lang:t('text.showmenu'))
                    else
                        inRangeElevator = false
                        exports['qb-core']:HideText()       -- is this ok here? will it close other popup text accidentally?
                    end
                end)
            end
    end

end)


CreateThread(function()

    if Config.UseZones then
        while true do
            local sleep = 1000
            if isLoggedIn and closestFloor then
                if inRangeElevator then
                    
                    sleep = 0
                    if IsControlJustPressed(0, 38) then
                        --setCityhallPageState(true, true)
                        ShowFloorHeaderMenu()
                        exports['qb-core']:KeyPressed()
                        Wait(500)
                        exports['qb-core']:HideText()
                        sleep = 1000
                    end
                
                end
            end
            Wait(sleep)
        end
    end
end)



-- Events

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    isLoggedIn = true
    --getClosestFloor()  
    --print("Starting Elevators")
end)

AddEventHandler('QBCore:Client:OnPlayerUnload', function()
    isLoggedIn = false
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Wait(200)
        PlayerData = QBCore.Functions.GetPlayerData()
		isLoggedIn = true
        
        --print(resource .." restarted")
	end
end)

AddEventHandler('onResourceStop', function(resource) 
    if resource == GetCurrentResourceName() then 
        for k, v in pairs(Config.Locations) do 
            exports[Config.TargetResourceName]:RemoveZone(v.boxzone.name) 
        end 
    end 
end)

RegisterNetEvent('trbl-Elevators:ShowMenu', function()
    ShowFloorHeaderMenu()
end)

RegisterNetEvent('trbl-Elevators:client:transition', function(args)
    local choiceid = args.id
    transition(choiceid)
end)