-- rectangle.lua

local Shape = require('scripts.sprites.shape');

local Rectangle = Shape:new()
-- Derived class method new
function Rectangle:new (o,length,breadth)
o = o or Shape:new(o,'Rectangle',name)
setmetatable(o, self)
self.__index = self
self.area = length * breadth
return o
end

function Rectangle:about ()
	print('I am a Rectangle: A parallelogram with all 4 angles are 90 degrees')
end

return Rectangle
