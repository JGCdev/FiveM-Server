function SetData()
	--local name = GetPlayerName(PlayerId())
	local id = GetPlayerServerId(PlayerId())
	RemoveMultiplayerBankCash()
	
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', '~w~INSOMNIO RP | Discord: xMF3raA | ID: ' .. id )
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		SetData()
	end
end)