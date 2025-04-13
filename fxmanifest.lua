fx_version 'cerulean'
game 'gta5'

author 'R1'
description 'Premuim Sell Shop'
version '1.0.0'

lua54 'yes'

shared_script '@ox_lib/init.lua'
shared_script 'config.lua'

client_script 'client.lua'
server_script 'server.lua'

dependencies {
    'ox_inventory',
    'ox_target',
    'ox_lib'
}
