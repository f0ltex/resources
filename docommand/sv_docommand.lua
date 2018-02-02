-- DO COMMAND (/do [Message]) Outcomes: Action: *Name Message
TriggerEvent('es:addCommand', 'do', function(source, args, user)
	table.remove(args, 1)
	TriggerClientEvent('chatMessage', -1, "^5Action", {255, 0, 0}, " ^0* " .. GetPlayerName(source) .."  ".."^0  " .. table.concat(args, " "))
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end)