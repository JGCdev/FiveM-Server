ESX 						   = nil
local CopsConnected       	   = 0
local PlayersHarvestingAmfa    = {}
local PlayersTransformingAmfa  = {}
local PlayersSellingAmfa       = {}

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

--amfetamina
local function HarvestAmfa(source)
	if CopsConnected < Config.RequiredCopsAmfa then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsAmfa))
		return
	end

	SetTimeout(Config.TimeToFarm, function()
		if PlayersHarvestingAmfa[source] then
			local xPlayer = ESX.GetPlayerFromId(source)
			local amfa = xPlayer.getInventoryItem('amfa')

			if amfa.limit ~= -1 and amfa.count >= amfa.limit then
				TriggerClientEvent('esx:showNotification', source, _U('inv_full_amfa'))
			else
				xPlayer.addInventoryItem('amfa', 1)
				HarvestAmfa(source)
			end
		end
	end)
end

RegisterServerEvent('esx_amfa:startHarvestAmfa')
AddEventHandler('esx_amfa:startHarvestAmfa', function()
	local _source = source

	if not PlayersHarvestingAmfa[_source] then
		PlayersHarvestingAmfa[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))
		HarvestAmfa(_source)
	else
		print(('esx_amfa: %s attempted to exploit the marker!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_amfa:stopHarvestAmfa')
AddEventHandler('esx_amfa:stopHarvestAmfa', function()
	local _source = source

	PlayersHarvestingAmfa[_source] = false
end)

local function TransformAmfa(source)
	if CopsConnected < Config.RequiredCopsAmfa then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsAmfa))
		return
	end

	SetTimeout(Config.TimeToProcess, function()
		if PlayersTransformingAmfa[source] then
			local xPlayer = ESX.GetPlayerFromId(source)
			local amfaQuantity = xPlayer.getInventoryItem('amfa').count
			local pooch = xPlayer.getInventoryItem('amfa_pooch')

			if pooch.limit ~= -1 and pooch.count >= pooch.limit then
				TriggerClientEvent('esx:showNotification', source, _U('too_many_pouches'))
			elseif amfaQuantity < 5 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_amfa'))
			else
				xPlayer.removeInventoryItem('amfa', 5)
				xPlayer.addInventoryItem('amfa_pooch', 1)

				TransformAmfa(source)
			end
		end
	end)
end

RegisterServerEvent('esx_amfa:startTransformAmfa')
AddEventHandler('esx_amfa:startTransformAmfa', function()
	local _source = source

	if not PlayersTransformingAmfa[_source] then
		PlayersTransformingAmfa[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))
		TransformAmfa(_source)
	else
		print(('esx_amfa: %s attempted to exploit the marker!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_amfa:stopTransformAmfa')
AddEventHandler('esx_amfa:stopTransformAmfa', function()
	local _source = source

	PlayersTransformingAmfa[_source] = false
end)

local function SellAmfa(source)
	if CopsConnected < Config.RequiredCopsAmfa then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsAmfa)) 
		return
	end

	SetTimeout(Config.TimeToSell, function()
		if PlayersSellingAmfa[source] then
			local xPlayer = ESX.GetPlayerFromId(source)
			local poochQuantity = xPlayer.getInventoryItem('amfa_pooch').count

			if poochQuantity == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_pouches_sale'))
			else
				xPlayer.removeInventoryItem('amfa_pooch', 1)
				if CopsConnected == 0 then
					xPlayer.addAccountMoney('black_money', 198)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_amfa'))
				elseif CopsConnected == 1 then
					xPlayer.addAccountMoney('black_money', 258)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_amfa'))
				elseif CopsConnected == 2 then
					xPlayer.addAccountMoney('black_money', 308)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_amfa'))
				elseif CopsConnected == 3 then
					xPlayer.addAccountMoney('black_money', 358)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_amfa'))
				elseif CopsConnected == 4 then
					xPlayer.addAccountMoney('black_money', 396)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_amfa'))
				elseif CopsConnected >= 5 then
					xPlayer.addAccountMoney('black_money', 428)
					TriggerClientEvent('esx:showNotification', source, _U('sold_one_amfa'))
				end

				SellAmfa(source)
			end
		end
	end)
end

RegisterServerEvent('esx_amfa:startSellAmfa')
AddEventHandler('esx_amfa:startSellAmfa', function()
	local _source = source

	if not PlayersSellingAmfa[_source] then
		PlayersSellingAmfa[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		SellAmfa(_source)
	else
		print(('esx_amfa: %s attempted to exploit the marker!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_amfa:stopSellAmfa')
AddEventHandler('esx_amfa:stopSellAmfa', function()
	local _source = source

	PlayersSellingAmfa[_source] = false
end)

RegisterServerEvent('esx_amfa:GetUserInventory')
AddEventHandler('esx_amfa:GetUserInventory', function(currentZone)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	TriggerClientEvent('esx_amfa:ReturnInventory',
		_source,
		xPlayer.getInventoryItem('amfa').count,
		xPlayer.getInventoryItem('amfa_pooch').count,
		xPlayer.job.name,
		currentZone
	)
end)

ESX.RegisterUsableItem('amfa', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('amfa', 1)

	TriggerClientEvent('esx_amfa:onPot', _source)
	TriggerClientEvent('esx:showNotification', _source, _U('used_one_amfa'))
end)
