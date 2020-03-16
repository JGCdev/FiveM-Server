
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		id = PlayerId()
		DisablePlayerVehicleRewards(id)	
		
		RemoveAllPickupsOfType(0xDF711959) -- carbine rifle
		RemoveAllPickupsOfType(0xF9AFB48F) -- pistol
		RemoveAllPickupsOfType(0xA9355DCD) -- pumpshotgun
	end
end)
