--------------------------------------------------------------------------------
-- scripts/image/img_base.lua

-- Meta class
local ImageBase = {
	fileName = "", 
	image = nil
}

-- Base class method new
function ImageBase:new(o, fileName)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	
	self.fileName = fileName
	return o
end

function ImageBase:move(x, y)
	self.image.x = x
	self.image.y = y
end

return ImageBase
