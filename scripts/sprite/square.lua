-- square.lua

local Shape = require('scripts.sprites.shape');

local Square = Shape:new()
-- Derived class method new
function Square:new (o,side)
o = o or Shape:new(o,'Square',side)
setmetatable(o, self)
self.__index = self
return o
end

function Square:about ()
	print('I am a Square: A rectangle with 4 sides equal length')
end

return Square
