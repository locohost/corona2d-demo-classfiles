--------------------------------------------------------------------------------
-- scripts/sprite/spr_base.lua

-- Meta class
local SpriteBase = {sheet = "", image = nil}

-- Base class method new
function SpriteBase:new (o,sheet)
	o = o or {}
	setmetatable(o, self)
	self.__index = self

	self.sheet = sheet;
	return o
end

function SpriteBase:drawAt()
end

function SpriteBase:draw()
end

-- Base class method printArea

return SpriteBase
