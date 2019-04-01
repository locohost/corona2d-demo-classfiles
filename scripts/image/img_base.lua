--------------------------------------------------------------------------------
-- scripts/image/img_base.lua

-- Meta class
local ImageBase = {
	fileName = "", 
	image = nil
}

-- Base class method new
function ImageBase:new( o, fileName, x, y, w, h )
	o = o or {}
	setmetatable( o, self )
	self.__index = self
	
	if (fileName) then 
		self.fileName = fileName
		self.image = display.newImageRect( self.fileName, w, h )
		self.image.x = x
		self.image.y = y
	end
	return o
end

function ImageBase:moveTo( x, y )
	self.image.x = x
	self.image.y = y
end

return ImageBase
