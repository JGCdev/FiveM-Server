local listOn = false



function GetPlayers()
    local players = {}

    for i = 0, 31 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

function sanitize(txt)
    local replacements = {
        ['&' ] = '&amp;', 
        ['<' ] = '&lt;', 
        ['>' ] = '&gt;', 
        ['\n'] = '<br/>'
    }
    return txt
        :gsub('[&<>\n]', replacements)
        :gsub(' +', function(s) return ' '..('&nbsp;'):rep(#s-1) end)
end
