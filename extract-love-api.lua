local scr = {}

local removeExtension = function(str)
	return str:match("(.+)%..+")
end
local checkFirstChar = function(str)
	local uppercase = str:sub(1,1):upper()
	return str:sub(1,1) == uppercase
end

function scr.callScript(input, output)
	local input = require(removeExtension(input))
	local output = output

	local file
	if not love.filesystem.exists(output) then
		file = love.filesystem.newFile(output)
	else
		love.filesystem.remove(output)
		file = love.filesystem.newFile(output)
	end
	file:open("r")
	love.filesystem.write(output, "[[\r\n")

	for _,namespace in pairs(input.childs) do
		local str = "love." .. tostring(_) .. "."
		if namespace.childs then
			for k,v in pairs(namespace.childs) do
				if not checkFirstChar(tostring(k)) then
					local str2 = tostring(k) .. " \r\n"
					love.filesystem.append(output, str .. str2)
				end
			end
		end
	end
	love.filesystem.append(output, "\r\n]]")
	file:close()
end

return scr