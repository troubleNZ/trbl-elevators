fx_version 'cerulean'
game 'gta5'

description 'Trbl-Elevators'
version '1.0.7'
author 'TroubleshooterNZ'
repository 'https://github.com/troubleNZ/trbl-elevators'


shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua', -- Change to the language you want
	'@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',
}

server_script 'server.lua'
client_scripts 'client.lua'

dependencies {
	'qb-core',
	'qb-target',	-- your qb-target resource name
	'qb-menu',
	'PolyZone',
}

lua54 'yes'
