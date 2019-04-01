--------------------------------------------------------------------------------
-- scripts/image/img_background.lua

local ImageBase = require('scripts.image.img_base');

local Background = ImageBase:new()
-- Derived class method new
function Background:new(o, fileName)
	o = o or ImageBase:new(o, fileName)
	setmetatable(o, self)
	self.__index = self

	self.image = display.newImageRect(self.fileName, 360, 570)
	self.image.x = display.contentCenterX
	self.image.y = display.contentCenterY
	return o
end

return Background
