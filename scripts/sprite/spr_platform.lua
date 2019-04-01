--------------------------------------------------------------------------------
-- scripts/sprite/spr_platform.lua

local Sprite = require('scripts.sprite.spr_base');

local Platform = Sprite:new()
-- Derived class method new
function Platform:new (o, physics)
	o = o or Sprite:new(o,'images/platform.png')
	setmetatable(o, self)
	self.__index = self

	self.image = display.newImageRect(self.sheet, 300, 50)
	self.image.x = display.contentCenterX
	self.image.y = display.contentHeight - 25
	physics.addBody(self.image, 'static')
	return o
end

return Platform
