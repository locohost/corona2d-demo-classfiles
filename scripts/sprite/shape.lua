-- shape.lua

-- Meta class
local Shape = {name = "", area = 0}

-- Base class method new

function Shape:new (o,name,side)
o = o or {}
setmetatable(o, self)
self.__index = self
side = side or 0
self.name = name
self.area = side*side;
return o
end

-- Base class method printArea

function Shape:printArea ()
print("The area of " .. self.name .. " is ", self.area)
end

return Shape
