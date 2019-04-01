--------------------------------------------------------------------------------
-- main.lua

local Balloon = require('scripts.sprite.spr_balloon')
local Platform = require('scripts.sprite.spr_platform')
local Background = require('scripts.image.img_background')

local physics = require('physics')
physics.start()

local bkrgSky = Background:new(nil, 'images/background.png')

tapCount = 0
tapText = display.newText(tapCount, display.contentCenterX, 20, native.systemFont, 40)
tapText:setFillColor(0, 0, 0)

local sprPlatform = Platform:new(nil, physics)

local sprBalloon = Balloon:new(nil, physics)
