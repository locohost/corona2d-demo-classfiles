--------------------------------------------------------------------------------
-- scripts/image/img_background.lua

local ImageBase = require( 'scripts.image.img_base' );

local Background = ImageBase:new()
-- Derived class method new
function Background:new( o, fileName, x, y, w, h )
	o = o or ImageBase:new( o, fileName, x, y, w, h )
	setmetatable( o, self )
	self.__index = self

	return o
end

return Background
