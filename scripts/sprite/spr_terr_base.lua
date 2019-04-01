--------------------------------------------------------------------------------
-- scripts/sprite/spr_terr_base.lua

local SpriteBase = require( 'scripts.sprite.spr_base' );

local TerrBase = SpriteBase:new()
-- Class constructor
function TerrBase:new ( o, sheet, x, y )
	o = o or SpriteBase:new( o, sheet, x, y, 128, 128 )
	setmetatable( o, self )
	self.__index = self

	if (sheet) then
		self.image.alpha = 0.5
		physics.addBody( self.image, 'static' )
	end
	return o
end

function TerrBase:drawAt()
end

function TerrBase:draw()
end

-- Base class method printArea

return TerrBase
