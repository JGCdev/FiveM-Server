ESX 						   = nil
local CopsConnected       	   = 0
local PlayersHarvestingMorf    = {}
local PlayersTransformingMorf  = {}
local PlayersSellingMorf       = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

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

--morfina
local function HarvestMorf(source)
	if CopsConnected < Config.RequiredCopsMorf then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsMorf))
		return
	end

	SetTimeout(Config.TimeToFarm, function()
		if PlayersHarvestingMorf[source] then
			local xPlayer = ESX.GetPlayerFromId(source)
			local morf = xPlayer.getInventoryItem('morf')

			if morf.limit ~= -1 and morf.count >= morf.limit then
				TriggerClientEvent('esx:showNotification', source, _U('inv_full_morf'))
			else
				xPlayer.addInventoryItem('morf', 1)
				HarvestMorf(source)
			end
		end
	end)
end

RegisterServerEvent('esx_morf:startHarvestMorf')
AddEventHandler('esx_morf:startHarvestMorf', function()
	local _source = source

	if not PlayersHarvestingMorf[_source] then
		PlayersHarvestingMorf[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))
		HarvestMorf(_source)
	else
		print(('esx_morf: %s attempted to exploit the marker!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_morf:stopHarvestMorf')
AddEventHandler('esx_morf:stopHarvestMorf', function()
	local _source = source

	PlayersHarvestingMorf[_source] = false
end)

local function TransformMorf(source)
	if CopsConnected < Config.RequiredCopsMorf then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsMorf))
		return
	end

	SetTimeout(Config.TimeToProcess, function()
		if PlayersTransformingMorf[source] then
			local xPlayer = ESX.GetPlayerFromId(source)
			local morfQuantity = xPlayer.getInventoryItem('morf').count
			local pooch = xPlayer.getInventoryItem('morf_pooch')

			if pooch.limit ~= -1 and pooch.count >= pooch.limit then
				TriggerClientEvent('esx:showNotification', source, _U('too_many_pouches'))
			elseif morfQuantity < 5 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_morf'))
			else
				xPlayer.removeInventoryItem('morf', 5)
				xPlayer.addInventoryItem('morf_pooch', 1)

				TransformMorf(source)
			end
		end
	end)
end

RegisterServerEvent('esx_morf:startTransformMorf')
AddEventHandler('esx_morf:startTransformMorf', function()
	local _source = source

	if not PlayersTransformingMorf[_source] then
		PlayersTransformingMorf[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))
		TransformMorf(_source)
	else
		print(('esx_morf: %s attempted to exploit the marker!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_morf:stopTransformMorf')
AddEventHandler('esx_morf:stopTransformMorf', function()
	local _source = source

	PlayersTransformingMorf[_source] = false
end)

local function SellMorf(source)
	if CopsConnected < Config.RequiredCopsMorf then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsMorf)) 
		return
	end

	SetTimeout(Config.TimeToSell, function()
		if PlayersSellingMorf[source] then
			local xPlayer = ESX.GetPlayerFromId(source)
			local poochQuantity = xPlayer.getInventoryItem('morf_pooch').count

			if poochQuantity == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_pouches_sale'))
			else
				xPlayer.removeInventoryItem('morf_pooch', 1)
				if CopsConnected == 0 then
					xPlayer.addAccountMoney('black_money', 198)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_morf'))
				elseif CopsConnected == 1 then
					xPlayer.addAccountMoney('black_money', 258)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_morf'))
				elseif CopsConnected == 2 then
					xPlayer.addAccountMoney('black_money', 308)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_morf'))
				elseif CopsConnected == 3 then
					xPlayer.addAccountMoney('black_money', 358)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_morf'))
				elseif CopsConnected == 4 then
					xPlayer.addAccountMoney('black_money', 396)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_morf'))
				elseif CopsConnected >= 5 then
					xPlayer.addAccountMoney('black_money', 428)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_morf'))
				end

				SellMorf(source)
			end
		end
	end)
end

RegisterServerEvent('esx_morf:startSellMorf')
AddEventHandler('esx_morf:startSellMorf', function()
	local _source = source

	if not PlayersSellingMorf[_source] then
		PlayersSellingMorf[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		SellMorf(_source)
	else
		print(('esx_morf: %s attempted to exploit the marker!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_morf:stopSellMorf')
AddEventHandler('esx_morf:stopSellMorf', function()
	local _source = source

	PlayersSellingMorf[_source] = false
end)

RegisterServerEvent('esx_morf:GetUserInventory')
AddEventHandler('esx_morf:GetUserInventory', function(currentZone)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	TriggerClientEvent('esx_morf:ReturnInventory',
		_source,
		xPlayer.getInventoryItem('morf').count,
		xPlayer.getInventoryItem('morf_pooch').count,
		xPlayer.job.name,
		currentZone
	)
end)

ESX.RegisterUsableItem('morf', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('morf', 1)

	TriggerClientEvent('esx_morf:onPot', _source)
	TriggerClientEvent('esx:showNotification', _source, _U('used_one_morf'))
end)
