ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent("experiencia:getExp")
AddEventHandler('experiencia:getExp', function(identifier)
local _source = source
	local nivel = MySQL.Sync.fetchAll('SELECT nivel FROM users WHERE identifier=@identifier', {['@identifier'] = identifier})
	if nivel[1].nivel ~= nil then
		local nivelDecimal = nivel[1].nivel
		local nivelNuevo = nivelDecimal  / 100
		TriggerClientEvent('experiencia:nivelActual', _source, nivelNuevo, nil)
	end
end)

RegisterNetEvent("experiencia:setExp")
AddEventHandler('experiencia:setExp', function( identifier, experiencia, msg)
local _source = source
	MySQL.Sync.execute('UPDATE users SET nivel = @experiencia WHERE identifier=@identifier', {['@identifier'] = identifier, ['@experiencia'] = experiencia})
	local nivel = MySQL.Sync.fetchAll('SELECT nivel FROM users WHERE identifier=@identifier', {['@identifier'] = identifier})
	if nivel[1].nivel ~= nil then
		local nivelDecimal = nivel[1].nivel
		local nivelNuevo = nivelDecimal  / 100
		TriggerClientEvent('experiencia:nivelActual', _source, nivelNuevo, nil)
	end
	
end)
RegisterNetEvent("experiencia:sumarExp")
AddEventHandler('experiencia:sumarExp', function(identifier, experiencia, msg)
local _source = source
	MySQL.Sync.execute('UPDATE users SET nivel = nivel + @experiencia WHERE identifier=@identifier', {['@identifier'] = identifier, ['@experiencia'] = '+'..experiencia})
	local nivel = MySQL.Sync.fetchAll('SELECT nivel FROM users WHERE identifier=@identifier', {['@identifier'] = identifier})
	if nivel[1].nivel ~= nil then
		local nivelDecimal = nivel[1].nivel
		local nivelNuevo = nivelDecimal  / 100
		if msg == nil then
			TriggerClientEvent('experiencia:nivelActual', _source, nivelNuevo, nil)
		else
			TriggerClientEvent('experiencia:nivelActual', _source, nivelNuevo, msg)
		end
	end
	
end)

RegisterNetEvent("experiencia:sumarDinero")
AddEventHandler('experiencia:sumarDinero', function(cuenta, dinero)
local _source = source
local xPlayer = ESX.GetPlayerFromId(_source)
xPlayer.addAccountMoney(cuenta, dinero)	
end)

