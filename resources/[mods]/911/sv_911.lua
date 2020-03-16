-- Simple 911 Command (With Location & Blip) -- 
		-- Made By Chezza --

displayLocation = true  -- By Changing this to 'false' it will make it so your location is not displayed in chat --
blips = true -- By Changing this to 'false' it will disable 911 call blips meaning your location will not be shown on the map --
disableChatCalls = false -- By Chaning this to 'false' it will make it so 911 call are not displayed in chat (Recommended to have Discord Webhook setup if disabling this) --
webhookurl = 'Insert Webhook URL Here' -- Add your discord webhook url here, if you do not want this leave it blank (More info on FiveM post) --

-- Code --

RegisterServerEvent('911')
AddEventHandler('911', function(location, msg, x, y, z, name, ped)
	local playername = GetPlayerName(source)
	local ped = GetPlayerPed(source)
	if displayLocation == false then
		if disableChatCalls == false then
			TriggerClientEvent('chatMessage', -1, '', {255,255,255}, '^*^4911 | ID llamante: ^r' .. playername .. '^*^4 | Reporte: ^r' .. msg)
			sendDiscord('911 Comunicaciones', '**911 | ID del llamante: **' .. playername .. '** | Reporte: **' .. msg)  
		else
			sendDiscord('911 Comunicaciones', '**911 | ID del llamante: **' .. playername .. '** | Reporte: **' .. msg)  
		end
	else
		if disableChatCalls == false then
			TriggerClientEvent('chatMessage', -1, '', {255,255,255}, '^*^4911 | Caller ID: ^r' .. playername .. '^*^4 | Localización: ^r' .. location .. '^*^4 | Reporte: ^r' .. msg)
			sendDiscord('911 Comunicaciones', '**911 | Caller ID: **' .. playername .. '** | Localización: **' .. location .. '** | Reporte: **' .. msg)
		else
			sendDiscord('911 Comunicaciones', '**911 | Caller ID: **' .. playername .. '** | Localización: **' .. location .. '** | Reporte: **' .. msg)
		end
		if blips == true then
			TriggerClientEvent('911:setBlip', -1, name, x, y, z)
		end
	end
end)

function sendDiscord(name, message)
  	PerformHttpRequest(webhookurl, function(err, text, headers) end, 'POST', json.encode({username = name, content = message}), { ['Content-Type'] = 'application/json' })
end


	