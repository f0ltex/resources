--Private Messages
TriggerEvent('es:addCommand', 'pm', function(source, args, user)
if(GetPlayerName(tonumber(args[2])) or GetPlayerName(tonumber(args[3])))then
local player = tonumber(args[2])
table.remove(args, 2)
table.remove(args, 1)

TriggerEvent("es:getPlayerFromId", player, function(target)
TriggerClientEvent('chatMessage', player, "PM:", {214, 214, 214}, "^2"..GetPlayerName(source).. " | " .. player .. " | PM: ^7" ..table.concat(args, " "))
TriggerClientEvent('chatMessage', source, "PM:", {214, 214, 214}, "^3 Send to: "..GetPlayerName(player).. ": ^7" ..table.concat(args, " "))
end)
else
TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Incorrect player ID!")
end
end, function(source, args, user)
TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end)