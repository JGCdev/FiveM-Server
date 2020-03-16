handsup = false
local animation = {dict = "random@mugging3", name = "handsup_standing_base"}
local unarmed = GetHashKey("WEAPON_UNARMED")

RegisterNetEvent("Handsup")
AddEventHandler("Handsup", function()
	local player = PlayerId()
	local plyPed = GetPlayerPed(player)
	if DoesEntityExist(plyPed) then
		if not handcuffed then
			if handsup then
				ClearPedSecondaryTask(plyPed)
				SetEnableHandcuffs(plyPed, false)
				SetCurrentPedWeapon(plyPed, unarmed, true)
				TriggerEvent("chatMessage", "^1Your hands are down")
				handsup = false
			else
				RequestAnimDict(animation.dict)
				while not HasAnimDictLoaded(animation.dict) do
					Citizen.Wait(100)
				end
				TaskPlayAnim(plyPed, animation.dict, animation.name, 8.0, -8, -1, 49, 0, 0, 0, 0)
				SetEnableHandcuffs(plyPed, true)
				SetCurrentPedWeapon(plyPed, unarmed, true)
				TriggerEvent("chatMessage", "^1Your hands are up")
				handsup = true
			end
		else
			TriggerEvent("chatMessage", "^1Good luck putting your hands up in cuffs....")
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		local player = PlayerId()
		local plyPed = GetPlayerPed(player)
		if DoesEntityExist(plyPed) then

			-- Backup Handsup
			if handsup then
				if not IsEntityPlayingAnim(plyPed, animation.dict, animation.name, 3) then
					Citizen.Wait(3000)
					if handsup and not handcuffed then
						TaskPlayAnim(plyPed, animation.dict, animation.name, 8.0, -8, -1, 49, 0, 0, 0, 0)
					end
				end
			end

			-- Remove ability to drive vehicles
			if handsup then
				DisablePlayerFiring(player, true)
				DisableControlAction(0, 25, true)
				DisableControlAction(1, 140, true)
				DisableControlAction(1, 141, true)
				DisableControlAction(1, 142, true)
				SetPedPathCanUseLadders(GetPlayerPed(PlayerId()), false)
				if IsPedInAnyVehicle(GetPlayerPed(PlayerId()), false) then
					DisableControlAction(0, 59, true)
				end
			end
			
		end
		Citizen.Wait(0)
	end
end)