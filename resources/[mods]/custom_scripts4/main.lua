swearwords = swearwords or {}
swearwords = {"puta", "hijoputa", "hijodeputa", "malaperra"}

AddEventHandler('chatMessage', function(source, name, message)
	for k,v in pairs(swearwords) do
		if string.match(message, k) then
			CancelEvent()
			print ('Pâlabra prohibida' )
		end
	end	
end)