--script by Brandon Blanker Lim-it
--@flamendless

io.stdout:setvbuf("no")
script = require("extract-love-api")

local color = {0,0,0,255}
local filenames
local filename = "NONE"

function love.load()
	love.filesystem.setIdentity("OUTPUT")
end

function love.draw()
	love.graphics.setBackgroundColor(color)
	love.graphics.setColor(255,255,255,255)
	love.graphics.print(filename)
end

function love.filedropped(file)
	color = {255,0,0,255}
	filenames = {string.match(tostring(file:getFilename()), "(.-)([^\\]-([^%.]+))$")}
	filename = filenames[#filenames-1]
	script.callScript(filename, "output.lua")
end