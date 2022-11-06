![Commits](https://img.shields.io/github/last-commit/troublenz/trbl-elevators?style=plastic) 
![OpenIssues](https://img.shields.io/github/issues/troublenz/trbl-elevators?style=plastic) 
![Contributors](https://img.shields.io/github/contributors/troublenz/trbl-elevators?color=aqua&style=plastic) 
![License](https://img.shields.io/github/license/troublenz/trbl-elevators?color=aqua&style=plastic) 
![Size](https://img.shields.io/github/repo-size/troublenz/trbl-elevators?color=aqua&style=plastic) 
![Languages](https://img.shields.io/github/languages/top/troublenz/trbl-elevators?color=aqua&style=plastic)

# trbl-elevators
 Elevator style teleport script

## An Over-Engineered teleport script, featuring:

- Choice between third-eye or DrawText triggered by polyzone.
- Config for menu, destination choices, boxzones etc.
- Global Debug option toggle for the devs
- transition function uses progress bar and fadeout for aesthetics
- easily set up one way teleports, many to one, or one to many options.
- block or allow vehicles per entrance or destination
- toggle short range blips, best used for lobby, examples in config.
- coming soon: sound cues (elevator doors, bell etc)


## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core) - ***Only Supporting Currently / Up to date QBCore Builds***
- [qb-target](https://github.com/qbcore-framework/qb-target) - Berkies Third Eye
- [qb-menu](https://github.com/qbcore-framework/qb-menu)     - Menu system for qbcore


## Installation
### Manual
- Download and unzip the script, drop into your resources, add it to your server.cfg and ensure it runs after the dependencies.

## Example Config
```lua
       -- -- MazeBank
        
        {       -- -- MazeBank Lobby
            label = "MazeBank-Lobby",
            name = "MazeBank-Lobby", 
            coords = vector3(-68.69, -801.04, 44.22),
            allowVehicle = false,
            showBlip = true,
            blipSprite = 826,
            blipColor = 32,
            blipScale = 0.3,
            choices = {
                { label = "MazeBank Offices",         coords = vector3(-68.69, -801.04, 44.22), heading = 5,   disabled = true,   id = 1},
                { label = "MazeBank Offices",         coords = vector3(-75.46, -827.14, 242.50), heading = 67.20,   disabled = false, allowedvehicle = false,   id = 2},
                { label = "MazeBank HeliPad",         coords = vector3(-75.21, -824.83, 321.29), heading = 157.83,  disabled = false, allowedvehicle = false,    id = 3},
                { label = "MazeBank ModShop",         coords = vector3(-70.08, -827.78, 285.00), heading = 157.83,  disabled = false, allowedvehicle = false,    id = 4},
               
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
```

## Credits
Wouldnt be doing this if it wasnt for [qb-core](https://github.com/qbcore-framework) ❤️

