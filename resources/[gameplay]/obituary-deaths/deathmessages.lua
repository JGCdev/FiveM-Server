AddEventHandler('onPlayerDied', function(playerId, reason, position)
    local player = GetPlayerByServerId(playerId)

    if player then
        exports.obituary:printObituary('<b>%s</b> ha muerto.', player.name)
    end
end)

AddEventHandler('onPlayerKilled', function(playerId, attackerId, reason, position)
    local player = GetPlayerByServerId(playerId)
    local attacker = GetPlayerByServerId(attackerId)

    local reasonString = 'asesinado'

    if reason == 0 or reason == 56 or reason == 1 or reason == 2 then
        reasonString = 'apaleó a'
    elseif reason == 3 then
        reasonString = 'acuchilló a'
    elseif reason == 4 or reason == 6 or reason == 18 or reason == 51 then
        reasonString = 'bombed'
    elseif reason == 5 or reason == 19 then
        reasonString = 'quemó a'
    elseif reason == 7 or reason == 9 then
        reasonString = 'disparó a'
    elseif reason == 10 or reason == 11 then
        reasonString = 'tiro de escopeta a'
    elseif reason == 12 or reason == 13 or reason == 52 then
        reasonString = 'SMGd'
    elseif reason == 14 or reason == 15 or reason == 20 then
        reasonString = 'assaulted'
    elseif reason == 16 or reason == 17 then
        reasonString = 'sniped'
    elseif reason == 49 or reason == 50 then
        reasonString = 'ran over'
    end

    echo("obituary-deaths: onPlayerKilled\n")

    if player and attacker then
        exports.obituary:printObituary('<b>%s</b> %s <b>%s</b>.', attacker.name, reasonString, player.name)
    end
end)
