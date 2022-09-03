fx_version 'cerulean'
game 'gta5'

description 'Trbl-Elevators'
version '1.0'

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua', -- Change to the language you want
}

server_scripts {
    --'@oxmysql/lib/MySQL.lua',
    --'server/main.lua'
}

client_scripts {
	'client.lua',
	--'client/gui.lua',
	--'@PolyZone/client.lua',
	--'@PolyZone/BoxZone.lua',
	--'@PolyZone/CircleZone.lua',
}

dependencies {
	'qb-core',
	'third-eye',	-- your qb-target resource name
	'qb-menu',
}

lua54 'yes'
