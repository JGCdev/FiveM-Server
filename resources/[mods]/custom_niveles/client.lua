local nivel = 0
local primeraLlamada = true
local player = nil

ESX = nil
--local inVehicle = false
	
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)



RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer) 
	player = xPlayer
	local identifier = xPlayer.identifier
	TriggerServerEvent('experiencia:getExp', identifier)
	
	--[[
	Con este evento seteamos experiencia a lo que queramos como parámetro
	TriggerServerEvent('experiencia:setExp', identifier, 100)
	]]--

	--[[
	Con este evento sumamos la experiencia que pasamos como parámetro
	TriggerServerEvent('experiencia:sumarExp', identifier, 130)

	]]--
	-- Función que otorga exp conforme pasa el tiempo ( 1 minuto )
	local tiempoEspera = 60000 * 11
	
	while true do
		local _nivel = math.floor(nivel)
		if _nivel == 0 then
			Citizen.Wait(tiempoEspera)
		elseif _nivel > 0 and _nivel < 5 then
			Citizen.Wait(tiempoEspera*2)
		elseif _nivel > 4 and _nivel < 9 then
			Citizen.Wait(tiempoEspera*3)
		else
			Citizen.Wait(tiempoEspera*4)
		end
		
		TriggerServerEvent('experiencia:sumarExp', identifier, 5, nil)
	end
end)

--funcion que se puede llamar desde cualquier server.lua con TriggerClientEvent('experiencia:sumarExp', source, ident)
RegisterNetEvent('experiencia:sumarExp')
AddEventHandler('experiencia:sumarExp', function(ident, experiencia, msg)
	TriggerServerEvent('experiencia:sumarExp', ident, experiencia, msg)
end)

RegisterNetEvent('experiencia:nivelActual')
AddEventHandler('experiencia:nivelActual', function(lvl, msg)
	-- aquí viene el nivel entre 100 (25.5 por ejemplo sería nivel 25 al 50%)
	local notif = ''
	local nivelAnterior = nivel
	nivel = lvl
	local cantidad = 0
	local lvlRounded = math.floor(nivel)
	-- Si el nivel almacenado después de la primera recogida es mayor se inserta dinero y nueva notificación
	if lvlRounded > math.floor(nivelAnterior) and primeraLlamada == false then
		if (lvlRounded <= 4) and (lvlRounded > 1)  then
			cantidad = 15000
		elseif (lvlRounded > 4) then
			cantidad = 25000
		else
			cantidad = 7500
		end
		notif = "Felicidades, has subido a nivel ~g~".. lvlRounded .."~w~! Obtienes ~g~" .. cantidad .. "€"
		TriggerServerEvent('experiencia:sumarDinero', 'bank', cantidad)
	else
		if msg == nil then 
			notif = "Obtienes ~g~+5% ~w~experiencia!"
		else
			notif = msg
		end
	end
	
	-- Calculamos los camnbios y los mandamos a UI
	calcularExp(lvl)
	
	-- Omitimos notificación en primera llamada
	if primeraLlamada == true then
		primeraLlamada = false
	else
		notificacion(notif)
	end
end)


function calcularExp(lvl)
	local porcent = math.fmod(lvl,1)
	local nivel = math.floor(lvl)
	local width = math.floor(porcent * 100)
	--enviamos datos a ui
	SendNUIMessage({action = "loadLevel", key = width, nivel = nivel})
end

function notificacion(cadena)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(cadena)
	DrawNotification(0, 1)
end



