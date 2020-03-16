--LAVANDERÍA
local MARKER_LAV_SIZE = 2.0
local LAV_INTERIOR = { x = 1137.3, y = -3197.72, z = -39.67, heading = 79.7 }
local LAV_EXTERIOR = { x = 113.98, y = -1589.86, z =  29.59, heading = 270.0 }


-- Create thread
Citizen.CreateThread(function()
    -- Lavandería blip
    addMapBlip("Lavandería", LAV_EXTERIOR.x, LAV_EXTERIOR.y, LAV_EXTERIOR.z, 366, 1.0, 2)

    -- Loop forever and update every frame
    while true do
        Citizen.Wait(0)

        -- Get player and vehicle
        local player = GetPlayerPed(-1)

            -- Entrada lavandería
            DrawMarker(1, LAV_EXTERIOR.x, LAV_EXTERIOR.y, LAV_EXTERIOR.z - 1.0, 0, 0, 0, 0, 0, 0, MARKER_LAV_SIZE, MARKER_LAV_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(LAV_EXTERIOR.x, LAV_EXTERIOR.y, LAV_EXTERIOR.z, GetEntityCoords(player)) < MARKER_LAV_SIZE) then
                helpMessage("Pulsa ~INPUT_CONTEXT~ para acceder a la lavandería")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, LAV_INTERIOR.x, LAV_INTERIOR.y, LAV_INTERIOR.z, LAV_INTERIOR.heading)
                end
            end

            -- Salida lavandería
            DrawMarker(1, LAV_INTERIOR.x, LAV_INTERIOR.y, LAV_INTERIOR.z - 1.0, 0, 0, 0, 0, 0, 0, MARKER_LAV_SIZE, MARKER_LAV_SIZE, 1.0, 255, 165, 0, 96, 0, 0, 0, 0, 0, 0, 0)
            if (GetDistanceBetweenCoords(LAV_INTERIOR.x, LAV_INTERIOR.y, LAV_INTERIOR.z, GetEntityCoords(player)) < MARKER_LAV_SIZE) then
                helpMessage("Pulsa ~INPUT_CONTEXT~ para salir")
                if (IsControlJustReleased(1, 51)) then
                    teleportToLocation(player, LAV_EXTERIOR.x, LAV_EXTERIOR.y, LAV_EXTERIOR.z, LAV_EXTERIOR.heading)
                end
            end
      
    end
end)

-- Enviar mensaje acceso
function helpMessage(text, duration)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

-- Añadir blips
function addMapBlip(text, x, y, z, sprite, escala, color)
    local blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, escala)
    SetBlipColour(blip, color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

-- Utility function to teleport to location
function teleportToLocation(player, x, y, z, heading)
    -- Freeze vehicle position, disable collisions and fade screen out
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)
	SetEntityCoords(player, x, y, z)
    Citizen.Wait(3000)

    -- Fade screen back in
    DoScreenFadeIn(1000)
    Citizen.Wait(1000)
end