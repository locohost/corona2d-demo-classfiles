--------------------------------------------------------------------------------
-- scripts/sprite/spr_base.lua

-- Meta class
local SpriteBase = { 
	sheet = '', 
	image = nil 
}

-- Base class method new
function SpriteBase:new ( o, sheet, x, y, w, h )
	o = o or {}
	setmetatable( o, self )
	self.__index = self

	if (sheet) then
		self.sheet = sheet;
		self.image = display.newImageRect( self.sheet, w, h )
		self.image.x = x
		self.image.y = y
	end
	return o
end

function SpriteBase:drawAt()
end

function SpriteBase:draw()
end

-- Base class method printArea

return SpriteBase
