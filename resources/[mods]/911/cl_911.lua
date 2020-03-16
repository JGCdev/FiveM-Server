-- Simple 911 Command (With Location & Blip) -- 
		-- Made By Chezza --

displayTime = 300 -- Refreshes Blips every 5 Minutes by Default --  

-- Code --

blip = nil
blips = {}

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/911', 'Llama a los servicios de emergencia!', {
    { name="Report", help="Introduce aquí el incidente o reporte!" }
})
end)

RegisterNetEvent('911:setBlip')
AddEventHandler('911:setBlip', function(name, x, y, z)
    blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, 66)
    SetBlipScale(blip, 1.0)
    SetBlipColour(blip, 3)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Llamada al 911 - ' .. name)
    EndTextCommandSetBlipName(blip)
    table.insert(blips, blip)
    Wait(displayTime * 1000)
    for i, blip in pairs(blips) do 
        RemoveBlip(blip)
    end
end)

-- Command -- 

RegisterCommand('911', function(source, args)
    local name = GetPlayerName(PlayerId())
    local ped = GetPlayerPed(PlayerId())
    local x, y, z = table.unpack(GetEntityCoords(ped, true))
    local street = GetStreetNameAtCoord(x, y, z)
    local location = GetStreetNameFromHashKey(street)
    local msg = table.concat(args, ' ')
    if args[1] == nil then
        TriggerEvent('chatMessage', '^5911', {255,255,255}, ' ^7Por favor, indica tu ^1reporte/incidencia.')
    else
        TriggerServerEvent('911', location, msg, x, y, z, name)
    end
end)

