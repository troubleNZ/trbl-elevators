Config = {}

Config.UseTarget = true -- use one method only or risk your sanity
Config.UseZones = true      -- necessary for all methods except third-eye
Config.UseDrawtext = true  -- use drawtext popup
Config.UseAltMenu = false    -- use headermenu
Config.AllowBlips = true    -- Global toggle
Config.TargetResourceName = 'qb-target' -- qb-target etc / remember to update the fxmanifest too
Config.Locale = "en"
Config.Debug    = false

Config.UseSounds = false

Config.Fadeout = true
Config.FadeDuration = 1000  -- x2

Config.Locations = {
        {       -- OceanHospitalGround
            label = "Ground Floor",
            name = "OceanHospitalGroundFloor", 
            menu_type = "Floor",
            coords = vector3(-1843.02, -341.89, 48.8),
            showBlip = true,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,

            allowVehicle = false,
            choices = {
                { label = "Sub Level 2",         coords = vector3(-1850.19, -342.26, 41.25), heading = 0.0,    disabled = false, allowedvehicle = false, audio = {UseSounds = true,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 1},
                { label = "Ground / Reception",  coords = vector3(-1843.02, -341.89, 48.8),  heading = 0.0,    disabled = true, id = 2},
                { label = "Level 2 Helipad",     coords = vector3(-1835.44, -339.02, 58.16), heading = 140.52, disabled = false, allowedvehicle = false, audio = {UseSounds = true,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 3},                
                { label = "Level 8 Office",      coords = vector3(-1829.05, -336.79, 84.06),  heading = 140.4, disabled = false, allowedvehicle = false, audio = {UseSounds = true,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 4},            
            },


            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(-1843.02+2, -341.89+2),
                vector2(-1843.02-2, -341.89+2),
                vector2(-1843.02-2, -341.89-2),
                vector2(-1843.02+2, -341.89-2),
            },
            audio = {UseSounds = true,audioName = "FBI_01_DMW_LIFT_ARRIVE",audioRef = "FBI_01_SOUNDS",bool = 1},
        },
        {       -- OceanHospital-LevelBasement2
            label = "B2 - Emergency Entrance",
            name = "OceanHospitalEmergencyFloor",
            menu_type = "Floor",
            coords = vector3(-1850.19, -342.26, 41.25),
            allowVehicle = false,
            choices = {                
                { label = "Sub Level 2",         coords = vector3(-1850.19, -342.26, 41.25), heading = 0.0,    disabled = true,  id = 1},
                { label = "Ground / Reception",  coords = vector3(-1843.02, -341.89, 48.8),  heading = 0.0,    disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 2},
                { label = "Level 2 Helipad",     coords = vector3(-1835.44, -339.02, 58.16), heading = 140.52, disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 3},                
                { label = "Level 8 Office",      coords = vector3(-1829.05, -336.79, 84.06), heading = 140.4,  disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 4},
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,
                --name = "OceanHospitalEmergencyFloor",
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
            vector2(-1851.7122802734, -341.96179199219),
            vector2(-1848.9340820312, -338.15933227539),
            vector2(-1841.88671875, -342.49426269531),
            vector2(-1846.6682128906, -346.32382202148)
            },
            audio = {UseSounds = true,audioName = "FBI_01_DMW_LIFT_ARRIVE",audioRef = "FBI_01_SOUNDS",bool = 1},
        },
        {       -- OceanHospital-Level2Heli
            label = "L2 - Emergency Heli Entrance",
            name = "OceanHospitalEmergencyFloor", 
            menu_type = "Floor",
            coords = vector3(-1835.37, -338.9, 58.16),
            allowVehicle = false,
            choices = {
                { label = "Sub Level 2",         coords = vector3(-1850.19, -342.26, 41.25), heading = 0.0,    disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 1},
                { label = "Ground / Reception",  coords = vector3(-1843.02, -341.89, 48.8),  heading = 0.0,    disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 2},
                { label = "Level 2 Helipad",     coords = vector3(-1835.44, -339.02, 58.16), heading = 140.52, disabled = true,  id = 3},                
                { label = "Level 8 Office",      coords = vector3(-1829.05, -336.79, 84.06),  heading = 140.4, disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 4},
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,
                --name = "OceanHospitalEmergencyFloor", 
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(-1835.37+2, -338.9+2),
                vector2(-1835.37-2, -338.9+2),
                vector2(-1835.37-2, -338.9-2),
                vector2(-1835.37+2, -338.9-2),
            },
            audio = {UseSounds = true,audioName = "FBI_01_DMW_LIFT_ARRIVE",audioRef = "FBI_01_SOUNDS",bool = 1},
        },
        {       -- OceanHospital-Level8Offices
            label = "L8 - Executive Level",
            name = "OceanHospitalEmergencyFloor", 
            menu_type = "Floor",
            coords = vector3(-1829.05, -336.79, 84.06),
            allowVehicle = false,
            choices = {
                { label = "Sub Level 2",         coords = vector3(-1850.19, -342.26, 41.25), heading = 0.0,    disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 1},
                { label = "Ground / Reception",  coords = vector3(-1843.02, -341.89, 48.8),  heading = 0.0,    disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 2},
                { label = "Level 2 Helipad",     coords = vector3(-1835.44, -339.02, 58.16), heading = 140.52, disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1}, id = 3},                
                { label = "Level 8 Office",      coords = vector3(-1829.05, -336.79, 84.06),  heading = 140.4, disabled = true,  id = 4},
            },
            boxzone = {-- qb-target options          
                length = 1.5,
                width = 1.5,
                --name = "OceanHospitalEmergencyFloor", 
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(-1830.5048828125, -334.14587402344),
                vector2(-1825.9053955078, -336.82873535156),
                vector2(-1829.6042480469, -339.59857177734),
                vector2(-1831.9040527344, -338.20358276367)
            },
            audio = {UseSounds = true,audioName = "FBI_01_DMW_LIFT_ARRIVE",audioRef = "FBI_01_SOUNDS",bool = 1},
        },
                    -- Imports Garage

        {       -- Imports Garage
            label = "Imports Garage",
            name = "ImportsGarage1stFloor", 
            menu_type = "Floor",
            coords = vector3(-1586.29, -561.42, 86.5),
            showBlip = true,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            allowVehicle = false,
            choices = {
                { label = "Exit Garage",         coords = vector3(-1585.28, -571.08, 34.98), heading = 192.94,  disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1},   id = 1},
               
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,
                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(-1588.0875244141, -562.16723632812),
                vector2(-1584.9946289062, -559.90228271484),
                vector2(-1583.9642333984, -561.47790527344),
                vector2(-1586.7416992188, -563.66101074219)
            },
            audio = {UseSounds = true,audioName = "FBI_01_DMW_LIFT_ARRIVE",audioRef = "FBI_01_SOUNDS",bool = 1},
        },
        {       -- Imports Garage
            label = "Imports Garage",
            name = "ImportsGarageGroundFloor", 
            menu_type = "Floor",
            coords = vector3(-1585.07, -570.83, 34.98),
            allowVehicle = false,
            choices = {
                { label = "Imports Garage",         coords = vector3(-1584.6, -564.2, 86.5), heading = 124.52,  disabled = false, allowedvehicle = false, audio = {UseSounds = false,audioName = "elevator_ascend_loop",audioRef = "dlc_xm_facility_entry_exit_sounds",bool = 1},   id = 1},
               
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,
                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(-1585.9949951172, -568.68481445312),
                vector2(-1583.6296386719, -570.72521972656),
                vector2(-1586.0440673828, -572.87860107422),
                vector2(-1587.3558349609, -570.12554931641)
            },
            audio = {UseSounds = true,audioName = "FBI_01_DMW_LIFT_ARRIVE",audioRef = "FBI_01_SOUNDS",bool = 1},
        },
        
                -- -- MazeBank
        
        {       -- -- MazeBank Lobby
            label = "MazeBank-Lobby",
            name = "MazeBank-Lobby", 
            menu_type = "Floor",
            coords = vector3(-68.69, -801.04, 44.22),
            allowVehicle = false,
            showBlip = true,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "MazeBank Offices",         coords = vector3(-75.46, -827.14, 242.50), heading = 67.20,   disabled = false, allowedvehicle = false,   id = 1},
                { label = "MazeBank HeliPad",         coords = vector3(-75.21, -824.83, 321.29), heading = 157.83,  disabled = false, allowedvehicle = false,    id = 2},
                { label = "MazeBank ModShop",         coords = vector3(-70.08, -827.78, 285.00), heading = 157.83,  disabled = false, allowedvehicle = false,    id = 3},
               
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(-65.628211975098, -805.35546875),
                vector2(-73.61597442627, -802.76098632812),
                vector2(-72.309829711914, -798.05517578125),
                vector2(-64.137580871582, -801.96307373047)
            },
        },
        {       -- -- MazeBank  HeliPad
            label = "MazeBank HeliPad",
            name = "MazeBank-HeliPad", 
            menu_type = "Floor",
            coords = vector3(-75.21, -824.83, 321.29),
            allowVehicle = false,
            choices = {
                { label = "MazeBank Lobby",         coords = vector3(-68.69, -801.04, 44.22), heading = 337.14,    disabled = false, allowedvehicle = false,  id = 1},
                { label = "MazeBank Offices",         coords = vector3(-75.46, -827.14, 242.50), heading = 67.20,  disabled = false, allowedvehicle = false,    id = 2},
                { label = "MazeBank ModShop",         coords = vector3(-70.08, -827.78, 285.00), heading = 157.83, disabled = false, allowedvehicle = false,     id = 3},
               
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(-77.159233093262, -822.74987792969),
                vector2(-73.27116394043, -824.31848144531),
                vector2(-74.176452636719, -827.26330566406),
                vector2(-78.02131652832, -825.71984863281)
            },
        },
        {       -- -- MazeBank  Offices
            label = "MazeBank Offices",
            name = "MazeBank-Offices", 
            menu_type = "Floor",
            coords = vector3(-75.46, -827.14, 242.50),
            allowVehicle = false,
            choices = {
                { label = "MazeBank Lobby",         coords = vector3(-68.69, -801.04, 44.22), heading = 337.14,    disabled = false, allowedvehicle = false,  id = 1},
                { label = "MazeBank HeliPad",         coords = vector3(-75.21, -824.83, 321.29), heading = 157.83, disabled = false, allowedvehicle = false,     id = 2},
                { label = "MazeBank ModShop",         coords = vector3(-70.08, -827.78, 285.00), heading = 157.83, disabled = false, allowedvehicle = false,     id = 3},
               
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
            vector2(-77.962364196777, -824.80731201172),
            vector2(-72.571067810059, -826.67169189453),
            vector2(-76.786659240723, -832.30792236328),
            vector2(-80.439079284668, -830.47106933594)
            },
        },
        {       -- -- MazeBank  Modshop
            label = "MazeBank Modshop",
            name = "MazeBank-Modshop", 
            menu_type = "Floor",
            coords = vector3(-70.08, -827.78, 285.00),
            allowVehicle = false,
            choices = {
                { label = "MazeBank Lobby",         coords = vector3(-68.69, -801.04, 44.22), heading = 337.14,    disabled = false, allowedvehicle = false,  id = 1},
                { label = "MazeBank HeliPad",         coords = vector3(-75.21, -824.83, 321.29), heading = 157.83, disabled = false, allowedvehicle = false,     id = 2},
                { label = "MazeBank Offices",         coords = vector3(-75.46, -827.14, 242.50), heading = 67.20,  disabled = false, allowedvehicle = false,    id = 3},
               
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
            vector2(-68.688774108887, -826.97094726562),
            vector2(-69.570259094238, -830.03588867188),
            vector2(-70.95743560791, -829.07708740234),
            vector2(-70.17115020752, -826.46014404297)
            },
        },
                -- Nightclub
                
        {       -- Nightclub Inside Exit
            label = "Nightclub",
            name = "Nightclub_Exit", 
            drawtxtmodifier = "NightClub Door",
            menu_type = "Club",
            waiting = "Leaving Venue",
            coords = vector3(-1569.37, -3017.17, -74.41),
            
            allowVehicle = false,
            choices = {
                { label = "Exit Nightclub",         coords = vector3(371.96, 253.07, 102.01), heading = 333.63,  disabled = false, allowedvehicle = false,    id = 1},
                
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,
                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(-1567.8208007812, -3017.9733886719),
                vector2(-1571.4515380859, -3017.9252929688),
                vector2(-1570.9079589844, -3016.0734863281),
                vector2(-1568.193359375, -3016.0661621094)
            },
        },
        {       -- Nightclub Entrance
            label = "Nightclub Entrance",
            name = "Nightclub_Entrance", 
            drawtxtmodifier = "NightClub Door",
            menu_type = "Destination",
            waiting = "Bouncer checking ID..",
            coords = vector3(371.96, 253.07, 102.01),
            showBlip = true,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            allowVehicle = false,
            choices = {
                { label = "Enter Nightclub",         coords = vector3(-1569.37, -3017.17, -74.41), heading = 124.52,  disabled = false, allowedvehicle = false,    id = 1},
                
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,
                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(372.6969909668, 251.50639343262),
                vector2(368.97640991211, 252.96101379395),
                vector2(370.45651245117, 256.00021362305),
                vector2(373.98510742188, 254.25296020508)
            },
        },
    
        {       -- Nightclub Inside Basement 2
            label = "Nightclub Vault",
            name = "Nightclub_Basement2", 
            coords = vector3(-1507.65, -3016.99, -79.24),
            allowVehicle = false,
            choices = {
                { label = "Return to Nightclub Backroom",         coords = vector3(-1618.42, -2999.43, -78.15), heading = 355.69,  disabled = false, allowedvehicle = false,    id = 1},
            
            },
            boxzone = {-- qb-target options 
                length = 5.5,
                width = 5.5,
                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
            vector2(-1509.4290771484, -3014.7116699219),
            vector2(-1505.6967773438, -3014.6826171875),
            vector2(-1506.1170654297, -3027.0307617188),
            vector2(-1509.056640625, -3026.8264160156)
                
            },
        },
        {       -- Nightclub Backroom
            label = "Nightclub Backroom",
            name = "Nightclub_Backlift", 
            coords = vector3(-1618.42, -2999.43, -78.15),
            allowVehicle = false,
            choices = {
                { label = "Enter Nightclub Vault",         coords = vector3(-1507.65, -3016.99, -79.24), heading = 124.52,  disabled = false, allowedvehicle = false,    id = 1},
            
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,
                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
            vector2(-1620.4382324219, -3000.6340332031),
            vector2(-1615.8470458984, -3000.4113769531),
            vector2(-1616.2777099609, -2998.4775390625),
            vector2(-1620.0661621094, -2998.5144042969)
            },
        },


        {       -- Arcadius workshop vehicle entrance
            label = "Arcadius workshop",
            name = "Arcadius_workshop", 
            coords = vector3(-142.4, -588.91, 166.73),
            allowVehicle = true,
            choices = {
                { label = "Arcadius Parking Garage",         coords = vector3(-144.18, -576.48, 32.15), heading = 162.95,  disabled = false, allowedvehicle = true,    id = 1},
            
            },
            boxzone = {-- qb-target options 
                length = 5.5,
                width = 5.5,
                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
            vector2(-141.29135131836, -584.93450927734),
            vector2(-144.94137573242, -588.05358886719),
            vector2(-139.24224853516, -594.86181640625),
            vector2(-135.65640258789, -591.21002197266)
                
            },
        },
        {       -- arcadius garage vehicle lift
            label = "Arcadius Garage vehicle Elevator",
            name = "arcadius_garage", 
            coords = vector3(-144.18, -576.48, 32.15),
            showBlip = true,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            allowVehicle = true,
            choices = {
                { label = "Arcadius Workshop",         coords = vector3(-142.4, -588.91, 166.73), heading = 129.76,  disabled = false, allowedvehicle = true,    id = 1},
            
            },
            boxzone = {-- qb-target options 
                length = 3.5,
                width = 3.5,
                
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
            vector2(-140.21382141113, -573.27630615234),
            vector2(-145.60592651367, -571.16314697266),
            vector2(-147.70527648926, -579.75616455078),
            vector2(-143.17350769043, -581.54406738281)
            },
        },

        {       -- Morgue entrance
            label = "Morgue entrance",
            name = "morgue_entrance", 
            waiting = "Entering Morgue",
            coords = vector3(-1853.39, -368.79, 41.25),
            allowVehicle = false,
            choices = {
                { label = "Morgue Lobby",         coords = vector3(275.47, -1360.93, 24.54), heading = 49.87,  disabled = false, allowedvehicle = false,  progbarTextOverride = "Morgue",  id = 1},
            
            },
            boxzone = {-- qb-target options 
                length = 2.5,
                width = 2.5,
                
                heading = 133.64,
            },
            polyzone = {   -- polyzone and showui
                vector2(-1852.8211669922, -370.58447265625),
                vector2(-1855.4008789062, -368.29260253906),
                vector2(-1854.2301025391, -366.96008300781),
                vector2(-1851.7235107422, -369.28759765625)
                
            },
        },
        {       -- Morgue entrance
            label = "Morgue Lobby",
            name = "morgue_lobby", 
            waiting = "Leaving Morgue",
            coords = vector3(275.47, -1360.93, 24.54),
            allowVehicle = true,
            choices = {
                { label = "Morgue Exit",         coords = vector3(-1853.39, -368.79, 41.25), heading = 304.37,  disabled = false, allowedvehicle = false,  progbarTextOverride = "Leaving the Morgue",  id = 1},
            
            },
            boxzone = {-- qb-target options 
                length = 3.5,
                width = 3.5,
                
                heading = 49.87,
            },
            polyzone = {   -- polyzone and showui
                vector2(277.35855102539, -1360.5970458984),
                vector2(275.16094970703, -1363.1441650391),
                vector2(273.95953369141, -1362.2036132812),
                vector2(276.12704467773, -1359.7043457031)
            },
        },
                
        
        --  Eclipse Towers Apartments
        {   -- Eclipse Lobby
            label = "Eclipse-Towers-Lobby",
            name = "Eclipse-Towers-Lobby", 
            coords = vector3(-774.29, 317.89, 85.66),
            allowVehicle = false,
            showBlip = true,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "Eclipse-Towers-Lobby",     coords = vector3(-774.29, 317.89, 85.66), heading = 174.73,   disabled = false, allowedvehicle = false,   id = 1},
                { label = "Eclipse-Towers-Apt1",      coords = vector3(-781.79, 325.83, 176.8), heading = 173.19,  disabled = false, allowedvehicle = false,    id = 2},
                { label = "Eclipse-Towers-Apt2",      coords = vector3(-786.65, 315.54, 187.91), heading = 272.34,  disabled = false, allowedvehicle = false,    id = 3},
                { label = "Eclipse-Towers-Apt3",      coords = vector3(-774.3, 342.03, 196.69), heading = 87.13,  disabled = false, allowedvehicle = false,    id = 4},
                { label = "Eclipse-Towers-Apt4",      coords = vector3(-774.18, 331.49, 207.62), heading = 0.19,  disabled = false, allowedvehicle = false,    id = 5},
                { label = "Eclipse-Towers-Apt5",      coords = vector3(-784.55, 323.7, 212.0), heading = 265.54,  disabled = false, allowedvehicle = false,    id = 6},
                { label = "Eclipse-Towers-Apt6",      coords = vector3(-781.91, 325.87, 223.26), heading = 180.52,  disabled = false, allowedvehicle = false,    id = 7},
            
            },
            boxzone = {-- qb-target options 
                length = 2.5,
                width = 2.5,                
                heading = 174.73,
            },
            polyzone = {   -- polyzone and showui
                vector2(-779.10913085938, 321.63748168945),
                vector2(-768.77020263672, 322.38726806641),
                vector2(-768.70977783203, 315.16925048828),
                vector2(-779.03619384766, 314.93865966797)
            },
        },
        {   -- Eclipse Apartment level 1
            label = "Eclipse-Towers-Apt1",
            name = "Eclipse-Towers-Apt1", 
            coords = vector3(-781.79, 325.83, 176.8),
            allowVehicle = false,
            showBlip = false,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "Eclipse-Towers-Lobby",     coords = vector3(-774.29, 317.89, 85.66), heading = 174.73,   disabled = false, allowedvehicle = false,   id = 1},
                { label = "Eclipse-Towers-Apt1",      coords = vector3(-781.79, 325.83, 176.8), heading = 173.19,  disabled = false, allowedvehicle = false,    id = 2},
                { label = "Eclipse-Towers-Apt2",      coords = vector3(-786.65, 315.54, 187.91), heading = 272.34,  disabled = false, allowedvehicle = false,    id = 3},
                { label = "Eclipse-Towers-Apt3",      coords = vector3(-774.3, 342.03, 196.69), heading = 87.13,  disabled = false, allowedvehicle = false,    id = 4},
                { label = "Eclipse-Towers-Apt4",      coords = vector3(-774.18, 331.49, 207.62), heading = 0.19,  disabled = false, allowedvehicle = false,    id = 5},
                { label = "Eclipse-Towers-Apt5",      coords = vector3(-784.55, 323.7, 212.0), heading = 265.54,  disabled = false, allowedvehicle = false,    id = 6},
                { label = "Eclipse-Towers-Apt6",      coords = vector3(-781.91, 325.87, 223.26), heading = 180.52,  disabled = false, allowedvehicle = false,    id = 7},
            
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,                
                heading = 174.73,
            },
            polyzone = {   -- polyzone and showui
                vector2(-783.53997802734, 327.80416870117),
                vector2(-779.79187011719, 327.48236083984),
                vector2(-779.76062011719, 322.99844360352),
                vector2(-782.96667480469, 323.11804199219)
            },
        },
        {   -- Eclipse Apartment level 2
            -- 
            label = "Eclipse-Towers-Apt2",
            name = "Eclipse-Towers-Apt2", 
            coords = vector3(-786.65, 315.54, 187.91),
            allowVehicle = false,
            showBlip = false,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "Eclipse-Towers-Lobby",     coords = vector3(-774.29, 317.89, 85.66), heading = 174.73,   disabled = false, allowedvehicle = false,   id = 1},
                { label = "Eclipse-Towers-Apt1",      coords = vector3(-781.79, 325.83, 176.8), heading = 173.19,  disabled = false, allowedvehicle = false,    id = 2},
                { label = "Eclipse-Towers-Apt2",      coords = vector3(-786.65, 315.54, 187.91), heading = 272.34,  disabled = false, allowedvehicle = false,    id = 3},
                { label = "Eclipse-Towers-Apt3",      coords = vector3(-774.3, 342.03, 196.69), heading = 87.13,  disabled = false, allowedvehicle = false,    id = 4},
                { label = "Eclipse-Towers-Apt4",      coords = vector3(-774.18, 331.49, 207.62), heading = 0.19,  disabled = false, allowedvehicle = false,    id = 5},
                { label = "Eclipse-Towers-Apt5",      coords = vector3(-784.55, 323.7, 212.0), heading = 265.54,  disabled = false, allowedvehicle = false,    id = 6},
                { label = "Eclipse-Towers-Apt6",      coords = vector3(-781.91, 325.87, 223.26), heading = 180.52,  disabled = false, allowedvehicle = false,    id = 7},
            
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,                
                heading = 272.34,
            },
            polyzone = {   -- polyzone and showui
                vector2(-787.60510253906, 314.54574584961),
                vector2(-787.59252929688, 317.44271850586),
                vector2(-785.99102783203, 317.32708740234),
                vector2(-786.17102050781, 314.86697387695)
            },
        },
        {   -- Eclipse Apartment level 3
            -- 
            label = "Eclipse-Towers-Apt3",
            name = "Eclipse-Towers-Apt3", 
            coords = vector3(-774.3, 342.03, 196.69),
            allowVehicle = false,
            showBlip = false,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "Eclipse-Towers-Lobby",     coords = vector3(-774.29, 317.89, 85.66), heading = 174.73,   disabled = false, allowedvehicle = false,   id = 1},
                { label = "Eclipse-Towers-Apt1",      coords = vector3(-781.79, 325.83, 176.8), heading = 173.19,  disabled = false, allowedvehicle = false,    id = 2},
                { label = "Eclipse-Towers-Apt2",      coords = vector3(-786.65, 315.54, 187.91), heading = 272.34,  disabled = false, allowedvehicle = false,    id = 3},
                { label = "Eclipse-Towers-Apt3",      coords = vector3(-774.3, 342.03, 196.69), heading = 87.13,  disabled = false, allowedvehicle = false,    id = 4},
                { label = "Eclipse-Towers-Apt4",      coords = vector3(-774.18, 331.49, 207.62), heading = 0.19,  disabled = false, allowedvehicle = false,    id = 5},
                { label = "Eclipse-Towers-Apt5",      coords = vector3(-784.55, 323.7, 212.0), heading = 265.54,  disabled = false, allowedvehicle = false,    id = 6},
                { label = "Eclipse-Towers-Apt6",      coords = vector3(-781.91, 325.87, 223.26), heading = 180.52,  disabled = false, allowedvehicle = false,    id = 7},
            
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,                
                heading = 87.13,
            },
            polyzone = {   -- polyzone and showui
                vector2(-773.47619628906, 343.66720581055),
                vector2(-773.34790039062, 340.12655639648),
                vector2(-775.38580322266, 340.33871459961),
                vector2(-774.99682617188, 343.40420532227)
            },
        },
        {   -- Eclipse Apartment level 4
            -- 
            label = "Eclipse-Towers-Apt4",
            name = "Eclipse-Towers-Apt4", 
            coords = vector3(-774.18, 331.49, 207.62),
            allowVehicle = false,
            showBlip = false,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "Eclipse-Towers-Lobby",     coords = vector3(-774.29, 317.89, 85.66), heading = 174.73,   disabled = false, allowedvehicle = false,   id = 1},
                { label = "Eclipse-Towers-Apt1",      coords = vector3(-781.79, 325.83, 176.8), heading = 173.19,  disabled = false, allowedvehicle = false,    id = 2},
                { label = "Eclipse-Towers-Apt2",      coords = vector3(-786.65, 315.54, 187.91), heading = 272.34,  disabled = false, allowedvehicle = false,    id = 3},
                { label = "Eclipse-Towers-Apt3",      coords = vector3(-774.3, 342.03, 196.69), heading = 87.13,  disabled = false, allowedvehicle = false,    id = 4},
                { label = "Eclipse-Towers-Apt4",      coords = vector3(-774.18, 331.49, 207.62), heading = 0.19,  disabled = false, allowedvehicle = false,    id = 5},
                { label = "Eclipse-Towers-Apt5",      coords = vector3(-784.55, 323.7, 212.0), heading = 265.54,  disabled = false, allowedvehicle = false,    id = 6},
                { label = "Eclipse-Towers-Apt6",      coords = vector3(-781.91, 325.87, 223.26), heading = 180.52,  disabled = false, allowedvehicle = false,    id = 7},
            
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,                
                heading = 0.19,
            },
            polyzone = {   -- polyzone and showui
                vector2(-772.78942871094, 329.6549987793),
                vector2(-775.82434082031, 329.54385375977),
                vector2(-776.15100097656, 335.01943969727),
                vector2(-772.81298828125, 334.58660888672)
            },
        },
        {   -- Eclipse Apartment level 5
            -- 
            label = "Eclipse-Towers-Apt5",
            name = "Eclipse-Towers-Apt5", 
            coords = vector3(-784.55, 323.7, 212.0),
            allowVehicle = false,
            showBlip = false,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "Eclipse-Towers-Lobby",     coords = vector3(-774.29, 317.89, 85.66), heading = 174.73,   disabled = false, allowedvehicle = false,   id = 1},
                { label = "Eclipse-Towers-Apt1",      coords = vector3(-781.79, 325.83, 176.8), heading = 173.19,  disabled = false, allowedvehicle = false,    id = 2},
                { label = "Eclipse-Towers-Apt2",      coords = vector3(-786.65, 315.54, 187.91), heading = 272.34,  disabled = false, allowedvehicle = false,    id = 3},
                { label = "Eclipse-Towers-Apt3",      coords = vector3(-774.3, 342.03, 196.69), heading = 87.13,  disabled = false, allowedvehicle = false,    id = 4},
                { label = "Eclipse-Towers-Apt4",      coords = vector3(-774.18, 331.49, 207.62), heading = 0.19,  disabled = false, allowedvehicle = false,    id = 5},
                { label = "Eclipse-Towers-Apt5",      coords = vector3(-784.55, 323.7, 212.0), heading = 265.54,  disabled = false, allowedvehicle = false,    id = 6},
                { label = "Eclipse-Towers-Apt6",      coords = vector3(-781.91, 325.87, 223.26), heading = 180.52,  disabled = false, allowedvehicle = false,    id = 7},
            
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,                
                heading = 265.54,
            },
            polyzone = {   -- polyzone and showui
                vector2(-785.27001953125, 322.06460571289),
                vector2(-785.25360107422, 325.25140380859),
                vector2(-782.71856689453, 325.3037109375),
                vector2(-783.03118896484, 321.95321655273)
            },
        },
        {   -- Eclipse Apartment level 6
            -- 
            label = "Eclipse-Towers-Apt6",
            name = "Eclipse-Towers-Apt6", 
            coords = vector3(-781.91, 325.87, 223.26),
            allowVehicle = false,
            showBlip = false,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "Eclipse-Towers-Lobby",     coords = vector3(-774.29, 317.89, 85.66), heading = 174.73,   disabled = false, allowedvehicle = false,   id = 1},
                { label = "Eclipse-Towers-Apt1",      coords = vector3(-781.79, 325.83, 176.8), heading = 173.19,  disabled = false, allowedvehicle = false,    id = 2},
                { label = "Eclipse-Towers-Apt2",      coords = vector3(-786.65, 315.54, 187.91), heading = 272.34,  disabled = false, allowedvehicle = false,    id = 3},
                { label = "Eclipse-Towers-Apt3",      coords = vector3(-774.3, 342.03, 196.69), heading = 87.13,  disabled = false, allowedvehicle = false,    id = 4},
                { label = "Eclipse-Towers-Apt4",      coords = vector3(-774.18, 331.49, 207.62), heading = 0.19,  disabled = false, allowedvehicle = false,    id = 5},
                { label = "Eclipse-Towers-Apt5",      coords = vector3(-784.55, 323.7, 212.0), heading = 265.54,  disabled = false, allowedvehicle = false,    id = 6},
                { label = "Eclipse-Towers-Apt6",      coords = vector3(-781.91, 325.87, 223.26), heading = 180.52,  disabled = false, allowedvehicle = false,    id = 7},
            
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,                
                heading = 180.52,
            },
            polyzone = {   -- polyzone and showui
                vector2(-783.47106933594, 327.67990112305),
                vector2(-780.42272949219, 327.57220458984),
                vector2(-779.62182617188, 322.4973449707),
                vector2(-783.54083251953, 322.6477355957)
            },
        },

        
        {   -- Fuku LS AirPort teleport
            label = "Fukuoka-AirPort-Transfer",
            name = "Fuku-AirPort", 
            drawtxtmodifier = "AirPort Transfer",
            menu_type = "Destination",
            waiting = "Leaving Los Santos",
            coords = vector3(-1898.08, -3050.09, 13.23),
            allowVehicle = true,
            showBlip = true,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "LS AirPort Transfer",   coords = vector3(-1897.3, -3050.55, 13.23), heading = 239.75,   disabled = true, allowedvehicle = true,   id = 1},
                { label = "Fukuoka Expressway",     coords = vector3(-4254.0, 8920.34, 11.08), heading = 71.05,   disabled = false, allowedvehicle = true,   id = 2},
                
                
            
            },
            boxzone = {-- qb-target options 
                length = 2.5,
                width = 2.5,                
                heading = 174.73,
            },
            polyzone = {   -- polyzone and showui
                vector2(-1907.7583007812, -3051.833984375),
                vector2(-1901.7303466797, -3040.19921875),
                vector2(-1890.3857421875, -3046.6982421875),
                vector2(-1897.6846923828, -3059.2199707031)
            },
        },
        -- Fukuoka Expressway parking lot west side
        {   -- Fuku Lobby
            label = "Fukuoka Expressway",
            name = "Fuku-Lobby", 
            drawtxtmodifier = "AirPort Transfer",
            menu_type = "Destination",
            waiting = "Leaving Japan",
            coords = vector3(-4254.0, 8920.34, 11.08),
            allowVehicle = true,
            showBlip = true,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "LS AirPort Transfer",   coords = vector3(-1897.3, -3050.55, 13.23), heading = 239.75,   disabled = false, allowedvehicle = true,   id = 1},
                { label = "Fukuoka Expressway",     coords = vector3(-4254.0, 8920.34, 11.08), heading = 71.05,   disabled = true, allowedvehicle = true,   id = 2},
                
            
            },
            boxzone = {-- qb-target options 
                length = 10.5,
                width = 10.5,                
                heading = 71.05,
            },
            polyzone = {   -- polyzone and showui
                vector2(-4300.326171875, 8921.6943359375),
                vector2(-4290.798828125, 8949.2021484375),
                vector2(-4217.1787109375, 8925.7236328125),
                vector2(-4227.2397460938, 8898.8837890625)
            },
        },

    }