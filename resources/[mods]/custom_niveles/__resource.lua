resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'FiveM Custom UI for ESX'

ui_page 'html/ui.html'

client_scripts {
	'client.lua'
}

server_scripts {
'@mysql-async/lib/MySQL.lua',
	'server.lua'
}

files {
	-- Main Images
	'html/ui.html',
	'html/style.css',
	'html/main.js',
	-- Money Images

}
