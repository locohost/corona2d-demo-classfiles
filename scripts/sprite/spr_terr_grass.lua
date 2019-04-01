--------------------------------------------------------------------------------
-- scripts/sprite/spr_terr_grass.lua

local TerrBase = require( 'scripts.sprite.spr_terr_base' );

local TerrGrass = TerrBase:new()
TerrGrass.isBlocking = false
TerrGrass.impedence = 0.0

-- Derived class method new
function TerrGrass:new ( o, x, y )
	o = o or TerrBase:new( o, 'images/MFW_Grid_Grass.png', x, y )
	setmetatable( o, self )
	self.__index = self

	return o
end


return TerrGrass
