ESX 						   = nil
local CopsConnected       	   = 0
local PlayersHarvestingKoda    = {}
local PlayersTransformingKoda  = {}
local PlayersSellingKoda       = {}



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local xPlayer = ESX.GetPlayerFromId(player)

function CountCops()
	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(120 * 1000, CountCops)
end

CountCops()

local cont = 0

--kodeina
local function HarvestKoda(source)
--cambiar aqui debug
	local _source = source
	if CopsConnected > Config.RequiredCopsKoda then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsKoda))
		return
	end
	
	SetTimeout(Config.TimeToFarm, function()
		if PlayersHarvestingKoda[source] then
			local xPlayer = ESX.GetPlayerFromId(source)
			local koda = xPlayer.getInventoryItem('koda')

			if koda.limit ~= -1 and koda.count >= koda.limit then
				TriggerClientEvent('esx:showNotification', source, _U('inv_full_koda'))
			else
				xPlayer.addInventoryItem('koda', 1)
				HarvestKoda(source)
			end
		end
	end)
end

RegisterServerEvent('esx_koda:startHarvestKoda')
AddEventHandler('esx_koda:startHarvestKoda', function()
	local _source = source

	if not PlayersHarvestingKoda[_source] then
		PlayersHarvestingKoda[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))
		HarvestKoda(_source)
	else
		print(('esx_koda: %s attempted to exploit the marker!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_koda:stopHarvestKoda')
AddEventHandler('esx_koda:stopHarvestKoda', function()
	local _source = source

	PlayersHarvestingKoda[_source] = false
end)

local function TransformKoda(source)
	if CopsConnected < Config.RequiredCopsKoda then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsKoda))
		return
	end

	SetTimeout(Config.TimeToProcess, function()
		if PlayersTransformingKoda[source] then
			local xPlayer = ESX.GetPlayerFromId(source)
			local kodaQuantity = xPlayer.getInventoryItem('koda').count
			local pooch = xPlayer.getInventoryItem('koda_pooch')

			if pooch.limit ~= -1 and pooch.count >= pooch.limit then
				TriggerClientEvent('esx:showNotification', source, _U('too_many_pouches'))
			elseif kodaQuantity < 5 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_koda'))
			else
				xPlayer.removeInventoryItem('koda', 5)
				xPlayer.addInventoryItem('koda_pooch', 1)

				TransformKoda(source)
			end
		end
	end)
end

RegisterServerEvent('esx_koda:startTransformKoda')
AddEventHandler('esx_koda:startTransformKoda', function()
	local _source = source

	if not PlayersTransformingKoda[_source] then
		PlayersTransformingKoda[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))
		TransformKoda(_source)
	else
		print(('esx_koda: %s attempted to exploit the marker!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_koda:stopTransformKoda')
AddEventHandler('esx_koda:stopTransformKoda', function()
	local _source = source

	PlayersTransformingKoda[_source] = false
end)

local function SellKoda(source)
	if CopsConnected < Config.RequiredCopsKoda then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsKoda)) 
		return
	end

	SetTimeout(Config.TimeToSell, function()
		if PlayersSellingKoda[source] then
			local xPlayer = ESX.GetPlayerFromId(source)
			local poochQuantity = xPlayer.getInventoryItem('koda_pooch').count

			if poochQuantity == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_pouches_sale'))
			else
				xPlayer.removeInventoryItem('koda_pooch', 1)
				if CopsConnected == 0 then
					xPlayer.addAccountMoney('black_money', 198)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_koda'))
				elseif CopsConnected == 1 then
					xPlayer.addAccountMoney('black_money', 258)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_koda'))
				elseif CopsConnected == 2 then
					xPlayer.addAccountMoney('black_money', 308)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_koda'))
				elseif CopsConnected == 3 then
					xPlayer.addAccountMoney('black_money', 358)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_koda'))
				elseif CopsConnected == 4 then
					xPlayer.addAccountMoney('black_money', 396)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_koda'))
				elseif CopsConnected >= 5 then
					xPlayer.addAccountMoney('black_money', 428)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_koda'))
				end

				SellKoda(source)
			end
		end
	end)
end

RegisterServerEvent('esx_koda:startSellKoda')
AddEventHandler('esx_koda:startSellKoda', function()
	local _source = source

	if not PlayersSellingKoda[_source] then
		PlayersSellingKoda[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		SellKoda(_source)
	else
		print(('esx_koda: %s attempted to exploit the marker!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_koda:stopSellKoda')
AddEventHandler('esx_koda:stopSellKoda', function()
	local _source = source

	PlayersSellingKoda[_source] = false
end)

RegisterServerEvent('esx_koda:GetUserInventory')
AddEventHandler('esx_koda:GetUserInventory', function(currentZone)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	TriggerClientEvent('esx_koda:ReturnInventory',
		_source,
		xPlayer.getInventoryItem('koda').count,
		xPlayer.getInventoryItem('koda_pooch').count,
		xPlayer.job.name,
		currentZone
	)
end)

ESX.RegisterUsableItem('koda', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('koda', 1)

	TriggerClientEvent('esx_koda:onPot', _source)
	TriggerClientEvent('esx:showNotification', _source, _U('used_one_koda'))
end)
