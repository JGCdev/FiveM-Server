AddEventHandler('playerConnecting', function(playerName, setKickReason)
    identifiers = GetPlayerIdentifiers(source)
    for i in ipairs(identifiers) do
        -- print('Player: ' .. playerName .. ', Identifier #' .. i .. ': ' .. identifiers[i])
		if (identifiers[i] == 'steam:11000011a1c13e8' ) then
			DropPlayer(source, 'bye')
			CancelEvent()
		end
    end
end)