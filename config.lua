Config = {}

Config.UseTarget = false -- use one method only or risk your sanity
Config.UseZones = true

Config.TargetResourceName = 'third-eye' -- qb-target etc / remember to update the fxmanifest too
Config.Locale = "en"
Config.Debug    = false

Config.Locations = {
        {       -- OceanHospitalGround
            label = "Ground Floor",
            name = "OceanHospitalGroundFloor", 
            coords = vector3(-1843.02, -341.89, 48.8),             
            choices = {
                { label = "Sub Level 2",         coords = vector3(-1872.22, -306.84, 41.26), heading = 0.0,      id = 1},
                { label = "Ground / Reception",  coords = vector3(-1843.02, -341.89, 48.8),  heading = 0.0,      id = 2},
                { label = "Level 2 Helipad",     coords = vector3(-1835.44, -339.02, 58.16), heading = 140.52,   id = 3},                
                { label = "Level 8 Office",      coords = vector3(-1829.05, -336.79, 84.06),  heading = 140.4,   id = 4},
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,
                --name = "OceanHospitalGroundFloor", 
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(-1843.02+2, -341.89+2),
                vector2(-1843.02-2, -341.89+2),
                vector2(-1843.02-2, -341.89-2),
                vector2(-1843.02+2, -341.89-2),
            },
        },
        {       -- OceanHospital-LevelBasement2
            label = "B2 - Emergency Entrance",
            name = "OceanHospitalEmergencyFloor",
            coords = vector3(-1872.22, -306.84, 41.26),
            choices = {                
                { label = "Sub Level 2",         coords = vector3(-1872.22, -306.84, 41.26), heading = 0.0,      id = 1},
                { label = "Ground / Reception",  coords = vector3(-1843.02, -341.89, 48.8),  heading = 0.0,      id = 2},
                { label = "Level 2 Helipad",     coords = vector3(-1835.44, -339.02, 58.16), heading = 140.52,   id = 3},                
                { label = "Level 8 Office",      coords = vector3(-1829.05, -336.79, 84.06),  heading = 140.4,   id = 4},
            },
            boxzone = {-- qb-target options 
                length = 1.5,
                width = 1.5,
                --name = "OceanHospitalEmergencyFloor",
                heading = 5,
            },
            polyzone = {   -- polyzone and showui
                vector2(-1872.22+2, -306.84+2),
                vector2(-1872.22-2, -306.84+2),
                vector2(-1872.22-2, -306.84-2),
                vector2(-1872.22+2, -306.84-2),
            },
        },
        {       -- OceanHospital-Level2Heli
            label = "L2 - Emergency Heli Entrance",
            name = "OceanHospitalEmergencyFloor", 
            coords = vector3(-1835.37, -338.9, 58.16),
            choices = {
                { label = "Sub Level 2",         coords = vector3(-1872.22, -306.84, 41.26), heading = 0.0,      id = 1},
                { label = "Ground / Reception",  coords = vector3(-1843.02, -341.89, 48.8),  heading = 0.0,      id = 2},
                { label = "Level 2 Helipad",     coords = vector3(-1835.44, -339.02, 58.16), heading = 140.52,   id = 3},                
                { label = "Level 8 Office",      coords = vector3(-1829.05, -336.79, 84.06),  heading = 140.4,   id = 4},
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
        },
        {       -- OceanHospital-Level8Offices   -- this needs updating with proper coords or itll break
            label = "L8 - Executive Level",
            name = "OceanHospitalEmergencyFloor", 
            coords = vector3(-1829.05, -336.79, 84.06),
            choices = {
                { label = "Sub Level 2",         coords = vector3(-1872.22, -306.84, 41.26), heading = 0.0,      id = 1},
                { label = "Ground / Reception",  coords = vector3(-1843.02, -341.89, 48.8),  heading = 0.0,      id = 2},
                { label = "Level 2 Helipad",     coords = vector3(-1835.44, -339.02, 58.16), heading = 140.52,   id = 3},                
                { label = "Level 8 Office",      coords = vector3(-1829.05, -336.79, 84.06),  heading = 140.4,   id = 4},
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
        },
}