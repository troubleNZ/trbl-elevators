
local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local isLoggedIn = LocalPlayer.state.isLoggedIn
local playerPed = PlayerPedId()
local playerCoords = GetEntityCoords(playerPed)
local floors = {}
local blips = {}
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
            params = {},
            isMenuHeader = true,
        }
    elseif PlayerData.job.name == 'ambulance' and PlayerData.job.grade['level'] == 4 then
        headerMenu[#headerMenu+1] = {
            header = Lang:t('text.enter_boss'),
            params = {},
            isMenuHeader = true,
        }
    else 
        if not Config.Locations[closestFloor].menu_type then 
            headerMenu[#headerMenu+1] = {
                header = Lang:t('text.enter_general'),
                    params = {},
                    isMenuHeader = true,
        }
        else
            headerMenu[#headerMenu+1] = {
                header = Lang:t('text.enter_prefix')..Config.Locations[closestFloor].menu_type,
                params = {},
                isMenuHeader = true,
    }
        end 
    end

    -- loop through config list & adding to menu below header
    for j = 1, #Config.Locations[closestFloor].choices do

        local flooroption = Config.Locations[closestFloor].choices[j]
        headerMenu[#headerMenu+1] = {
            header = flooroption.label,--closest.choices[j].label,
            disabled = flooroption.disabled,
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

local function ShowFloorinitialMenu()
    local headerMenu = {}


        headerMenu[#headerMenu+1] = {
            header = Lang:t('info.welcome'),
            params = {},
            isMenuHeader = true,
        }
     
    --menu footer with close
    headerMenu[#headerMenu+1] = {
        header = Lang:t('text.open_menu'),
        txt = "",
        params = {
            event = "trbl-Elevators:ShowMenu"
        }
    }

    exports['qb-menu']:showHeader(headerMenu)
end


local function CloseMenuFull()
    exports['qb-menu']:closeMenu()
end


local function vehiclegodmode(coords)

    
    local player = PlayerPedId()
    local veh = GetVehiclePedIsIn(player, false)
    local destination = coords
    local vehcoords = GetEntityCoords(veh)
    local dist = Vdist(destination,vehcoords)
    local target = player

    if (veh ~= 0) then
        target = veh

        if IsPedSittingInVehicle(player, veh) and dist < 5 then 
            -- make invincible til they move
            SetEntityInvincible(target, true)
            --SetPlayerInvincible(player, true)
            
            print('Safety')
        end
    end

end

local function transition(id)
    local choiceid = id
    local choice = Config.Locations[closestFloor].choices[choiceid]
    local coords = choice.coords
    local heading = choice.heading
    local label = choice.label
    --local ped = PlayerPedId()

    local player = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(player, false)
    --local plate = tostring(GetVehicleNumberPlateText(vehicle))
    local target = player

    if (vehicle ~= 0) then
        target = vehicle
        if (choice.allowedvehicle == false) then
            BeginTextCommandThefeedPost("STRING")
            AddTextComponentSubstringPlayerName(Lang:t('error.no_vehicles'))
            EndTextCommandThefeedPostTicker(true, false)
            return
        end
    end
    local progbaroverride = Config.Locations[closestFloor].waiting or Lang:t('success.waiting')

    QBCore.Functions.Progressbar("transition_location", progbaroverride, 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
    end)
    Wait(500)
    if Config.Fadeout == true then
        DoScreenFadeOut(Config.FadeDuration)
        while not IsScreenFadedOut() do
            Wait(50)
        end
    end
    -- play audio on transition
    if choice.audio ~= nil and choice.audio.UseSounds == true then		
        PlaySound(-1, choice.audio.audioName, choice.audio.audioRef, 0, 0, choice.audio.bool)
        TriggerServerEvent("InteractSound_SV:PlayOnSource", choice.audio.audioName, 0.2) -- if using an ogg
    end

    NetworkFadeOutEntity(target, false, true)
    Wait(500)
    
    SetEntityCoordsNoOffset(target, coords.x, coords.y, coords.z, false, false, false)
    SetGameplayCamRelativeHeading(heading)
    SetGameplayCamRelativePitch(-20.0, 1.0)
    SetEntityHeading(target, heading)
    Wait(4000) -- Lets Progress Bar Finish

    

        -- play audio on arrival
    if Config.Locations[closestFloor].audio ~= nil and Config.Locations[closestFloor].audio.UseSounds == true then
        --print(Config.Locations[closestFloor].audio.audioName .. " /" .. Config.Locations[closestFloor].audio.audioRef) --testing
        --PlaySoundFrontend(-1, Config.Locations[closestFloor].audio.audioName, Config.Locations[closestFloor].audio.audioRef, Config.Locations[closestFloor].audio.audio.bool)
        PlaySound(-1, Config.Locations[closestFloor].audio.audioName, Config.Locations[closestFloor].audio.audioRef, 0, 0, Config.Locations[closestFloor].audio.bool)
    end
    NetworkFadeInEntity(target, false, true)
    -- set invincible temporarily for veh
    
    Wait(500)
    if Config.Fadeout == true then
        Wait(500)
        DoScreenFadeIn(Config.FadeDuration)
    end   
    vehiclegodmode(coords)
    Wait(5000)
    TriggerEvent("trbl-disableInvincible")
end

RegisterNetEvent('trbl-disableInvincible', function()
    
    local player = PlayerPedId()
    local veh = GetVehiclePedIsIn(player, false)    
    if IsPedSittingInVehicle(player, veh) then 
        SetEntityInvincible(veh, false)
        SetPlayerInvincible(player, false)
        
    end
        print('Safety off')
end)


local function CreateBlips()
    for k,v in pairs(Config.Locations) do
        if v.showBlip then   
            blips[k] = AddBlipForCoord(v.coords)
            SetBlipSprite(blips[k], v.blipSprite)
            SetBlipDisplay(blips[k], 5)                 -- local radar minimap only.
            SetBlipScale(blips[k], v.blipScale)
            SetBlipAsShortRange(blips[k], true)
            SetBlipColour(blips[k], v.blipColor)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(v.label)
            EndTextCommandSetBlipName(blips[k]) 
        end   
    end
end



-- Threads

CreateThread(function()         -- looping get closest floor needs to be optimized
    while true do
        if isLoggedIn then
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            closestFloor = getClosestFloor()
        end
        Wait(2500)
    end
end)

CreateThread(function()     -- boxzone set up
    
    if Config.UseTarget == true then
        for k,v in pairs(Config.Locations) do
            exports[Config.TargetResourceName]:AddBoxZone(v.name, v.coords, v.boxzone.length, v.boxzone.width, {
                name = v.name,
                heading = v.boxzone.heading,
                debugPoly = Config.Debug,
                minZ = v.coords.z-1,
                maxZ = v.coords.z+1,
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
            if Config.Debug then
                print("boxzone set up: ".. v.label)       -- debug
            end
        end
    end
    
    if Config.UseZones == true then
            local DisplayText = false
            for k,v in pairs(Config.Locations) do
                floors[k] = PolyZone:Create(v.polyzone, {
                    name="elevator"..v.name,
                    minZ = 	v.coords.z-1,
                    maxZ = v.coords.z+1,
                    debugPoly = false
                })
                floors[k]:onPlayerInOut(function(isPointInside)
                    if isPointInside then
                        inRangeElevator = true
                        

                        --print("inRangeElevator ".. inRangeElevator)
                        if Config.UseDrawtext == true then
                            if not DisplayText then  

                                if v.drawtxtmodifier ~= nil then
                                    exports['qb-core']:DrawText(Lang:t('text.select') ..v.drawtxtmodifier)
                                else
                                    exports['qb-core']:DrawText(Lang:t('text.showmenu'))
                                end
                                DisplayText = true
                            end
                        elseif Config.UseAltMenu == true then
                            ShowFloorinitialMenu()
                        end
                    else
                        inRangeElevator = false
                        if Config.UseDrawtext == true then
                            if DisplayText then
                                DisplayText = false
                            exports['qb-core']:HideText()
                            end
                        elseif Config.UseAltMenu == true then
                            exports['qb-menu']:closeMenu()
                        end
                    end
                end)
                if Config.Debug then
                    print("polyzone set up: ".. v.label)       -- debug
                end
            end
    end
    if Config.AllowBlips == true then
        CreateBlips()
    end
end)


CreateThread(function()         -- if in zone and IsControlJustPressed(0, 38) open menu
    if Config.UseZones then
        while true do
            local sleep = 1000
            if isLoggedIn and closestFloor then
                if inRangeElevator then
                    
                    sleep = 0
                    if Config.UseDrawtext == true then
                        if IsControlJustPressed(0, 38) then
                            
                            ShowFloorHeaderMenu()
                            exports['qb-core']:KeyPressed()
                            Wait(500)
                            exports['qb-core']:HideText()
                            sleep = 1000
                        end
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
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    isLoggedIn = false
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Wait(200)
        PlayerData = QBCore.Functions.GetPlayerData()
		isLoggedIn = true
	end
end)

AddEventHandler('onResourceStop', function(resource) 
    if resource == GetCurrentResourceName() then 
        for k, v in pairs(Config.Locations) do 
            exports[Config.TargetResourceName]:RemoveZone(v.name) 
        end 
    end 
end)

RegisterNetEvent('trbl-Elevators:ShowInitialMenu', function()
    ShowFloorinitialMenu()
end)

RegisterNetEvent('trbl-Elevators:ShowMenu', function()
    ShowFloorHeaderMenu()
end)

RegisterNetEvent('trbl-Elevators:client:transition', function(args)
    local choiceid = args.id
    transition(choiceid)
end)