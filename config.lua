Config = {}

Config.UseTarget = true -- use one method only or risk your sanity
Config.UseZones = true

Config.TargetResourceName = 'third-eye' -- qb-target etc / remember to update the fxmanifest too
Config.Locale = "en"
Config.Debug    = false

Config.Locations = {
        {       -- OceanHospitalGround
            label = "Ground Floor",
            coords = vector3(-1843.02, -341.89, 48.8),             
            choices = {
                {
                    label = "Sub Level 2",
                    coords = vector3(-1872.22, -306.84, 41.26),
                    heading = 0.0,
                    id = 1
                },
                {
                    label = "Ground / Reception",
                    coords = vector3(-1843.02, -341.89, 48.8),
                    heading = 0.0,
                    id = 2
                },
                {
                    label = "Level 2 Helipad",
                    coords = vector3(-1835.44, -339.02, 58.16),
                    heading = 140.52,
                    id = 3
                },                
                {
                    label = "Level 8 Office",
                    coords = vector3(229.1, -429.17, 48.06),
                    heading = 0.0,
                    id = 4
                },
            },
            boxzone = {-- qb-target options 
                --loc = vector3(-1844.7, -342.19, 49.45),  --boxzone            
                length = 1.5,
                width = 1.5,
                name = "OceanHospitalGroundFloor", 
                heading = 5,
                --minZ = 48.25,
                --maxZ = 50.25,
            },
            zones = {   -- polyzone and showui
                vector2(Config.Locations[k]coords.x+2, Config.Locations[k]coords.y+2),
                vector2(Config.Locations[k]coords.x-2, Config.Locations[k]coords.y+2),
                vector2(Config.Locations[k]coords.x-2, Config.Locations[k]coords.y-2),
                vector2(Config.Locations[k]coords.x+2, Config.Locations[k]coords.y-2),
                
            },
            minZ = Config.Locations[k]coords.z-1,       -- mandatory - used for both zone type
            maxZ = Config.Locations[k]coords.z+1,       -- mandatory - used for both zone type

        },
        {       -- OceanHospital-LevelBasement2
            label = "B2 - Emergency Entrance",
            coords = vector3(-1872.22, -306.84, 41.26),     --vector3(-1848.66, -340.46, 41.25),            
            choices = {                
                {
                    label = "Sub Level 2",
                    coords = vector3(-1872.22, -306.84, 41.26),
                    heading = 0.0,
                    id = 1,
                },
                {
                    label = "Ground / Reception",
                    coords = vector3(-1843.02, -341.89, 48.8),
                    heading = 0.0,
                    id = 2,
                },
                {
                    label = "Level 2 Helipad",
                    coords = vector3(-1835.44, -339.02, 58.16),
                    heading = 140.52,
                    id = 3,
                },
                {
                    label = "Level 8 Office",
                    coords = vector3(229.1, -429.17, 48.06),
                    heading = 0.0,
                    id = 4,
                },
            },
            boxzone = {-- qb-target options 
                --loc = vector3(-1850.32, -340.86, 41.25),  --boxzone            
                length = 1.5,
                width = 1.5,
                name = "OceanHospitalEmergencyFloor", 
                heading = 5,
                --minZ = 40.25,
                --maxZ = 42.25,
            },
            zones = {   -- polyzone and showui
                vector2(Config.Locations[k]coords.x+2, Config.Locations[k]coords.y+2),
                vector2(Config.Locations[k]coords.x-2, Config.Locations[k]coords.y+2),
                vector2(Config.Locations[k]coords.x-2, Config.Locations[k]coords.y-2),
                vector2(Config.Locations[k]coords.x+2, Config.Locations[k]coords.y-2),
                
            },
            minZ = Config.Locations[k]coords.z-1,       -- mandatory - used for both zone type
            maxZ = Config.Locations[k]coords.z+1,       -- mandatory - used for both zone type

        },
        {       -- OceanHospital-Level2Heli
            label = "L2 - Emergency Heli Entrance",
            coords = vector3(-1835.37, -338.9, 58.16),
            choices = {
                {
                    label = "Sub Level 2",
                    coords = vector3(-1872.22, -306.84, 41.26),
                    heading = 0.0,
                    id = 1,
                },
                {
                    label = "Ground / Reception",
                    coords = vector3(-1843.02, -341.89, 48.8),
                    heading = 0.0,
                    id = 2,
                },
                {
                    label = "Level 2 Helipad",
                    coords = vector3(-1835.44, -339.02, 58.16),
                    heading = 140.52,
                    id = 3,
                },
                {
                    label = "Level 8 Office",
                    coords = vector3(229.1, -429.17, 48.06),
                    heading = 0.0,
                    id = 4,
                },
            },
            boxzone = {-- qb-target options 
                --loc = vector3(-1837.04, -339.58, 58.16),  --boxzone            
                length = 1.5,
                width = 1.5,
                name = "OceanHospitalEmergencyFloor", 
                heading = 5,
                --minZ = 39.2,
                --maxZ = 41.2,
            },
            zones = {   -- polyzone and showui
                vector2(Config.Locations[k]coords.x+2, Config.Locations[k]coords.y+2),
                vector2(Config.Locations[k]coords.x-2, Config.Locations[k]coords.y+2),
                vector2(Config.Locations[k]coords.x-2, Config.Locations[k]coords.y-2),
                vector2(Config.Locations[k]coords.x+2, Config.Locations[k]coords.y-2),
                
            },
            minZ = Config.Locations[k]coords.z-1,       -- mandatory - used for both zone type
            maxZ = Config.Locations[k]coords.z+1,       -- mandatory - used for both zone type
        },
        {       -- OceanHospital-Level8Offices   -- this needs updating with proper coords or itll break
            label = "L8 - Executive Level",
            coords = vector3(-1835.37, -338.9, 58.16),
            choices = {
                {
                    label = "Sub Level 2",
                    coords = vector3(-1872.22, -306.84, 41.26),
                    heading = 0.0,
                    id = 1,
                },
                {
                    label = "Ground / Reception",
                    coords = vector3(-1843.02, -341.89, 48.8),
                    heading = 0.0,
                    id = 2,
                },
                {
                    label = "Level 2 Helipad",
                    coords = vector3(-1835.44, -339.02, 58.16),
                    heading = 140.52,
                    id = 3,
                },
                {
                    label = "Level 8 Office",
                    coords = vector3(229.1, -429.17, 48.06),
                    heading = 0.0,
                    id = 4,
                },
            },
            boxzone = {-- qb-target options 
                --loc = vector3(-1837.04, -339.58, 58.16),  --boxzone            
                length = 1.5,
                width = 1.5,
                name = "OceanHospitalEmergencyFloor", 
                heading = 5,
                --minZ = 39.2,
                --maxZ = 41.2,
            },
            zones = {   -- polyzone and showui
                vector2(Config.Locations[k]coords.x+2, Config.Locations[k]coords.y+2),
                vector2(Config.Locations[k]coords.x-2, Config.Locations[k]coords.y+2),
                vector2(Config.Locations[k]coords.x-2, Config.Locations[k]coords.y-2),
                vector2(Config.Locations[k]coords.x+2, Config.Locations[k]coords.y-2),
                
            },
            minZ = Config.Locations[k]coords.z-1,       -- mandatory - used for both zone type
            maxZ = Config.Locations[k]coords.z+1,       -- mandatory - used for both zone type
   
        },
}