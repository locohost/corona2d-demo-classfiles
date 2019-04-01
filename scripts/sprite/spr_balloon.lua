--------------------------------------------------------------------------------
-- scripts/sprite/spr_balloon.lua

local Sprite = require( 'scripts.sprite.spr_base' );

local Balloon = Sprite:new()
-- Derived class method new
function Balloon:new ( o, physics )
	o = o or Sprite:new( o, 'images/balloon.png' )
	setmetatable( o, self )
	self.__index = self

	self.image = display.newImageRect( self.sheet, 112, 112 )
	self.image.x = display.contentCenterX
	self.image.y = display.contentCenterY
	self.image.alpha = 0.8
	self.image.tap = self.pushBalloon
	self.image:addEventListener( 'tap', self.image )
	physics.addBody( self.image, 'dynamic', { radius=50, bounce=0.3 } )
	return o
end

function Balloon:pushBalloon( event )
	local balloon = event.target
	balloon:applyLinearImpulse( 0, -0.75, balloon.x, balloon.y )
	tapCount = tapCount + 1
	tapText = tapCount
end

return Balloon
