--------------------------------------------------------------------------------
-- main.lua

local composer = require ('composer')
local TerrGrass = require( 'scripts.sprite.spr_terr_grass' )
local Background = require( 'scripts.image.img_background' )

display.setDefault( 'anchorX', 0 )
display.setDefault( 'anchorY', 0 )

physics = require( 'physics' )
physics.start()

composer.gotoScene( 'scripts.scene.scn_battlefield')
