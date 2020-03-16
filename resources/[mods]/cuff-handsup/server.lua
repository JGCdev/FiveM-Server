RegisterCommand("hu", function(source, args, raw)
	local src = source
	TriggerClientEvent("Handsup", src)
end, false)

---------------------------------------------------------------------------
-- Check This For Maybe Allowed Users?
---------------------------------------------------------------------------
RegisterServerEvent("CheckHandcuff")
AddEventHandler("CheckHandcuff", function(player)
	TriggerClientEvent("Handcuff", tonumber(player))
end)