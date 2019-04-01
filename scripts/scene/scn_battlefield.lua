local composer = require( 'composer' )
local TerrGrass = require( 'scripts.sprite.spr_terr_grass' )
local Background = require( 'scripts.image.img_background' )
 
local Battlefield = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via 'composer.removeScene()'
-- -----------------------------------------------------------------------------------
 
local xOrigin = 15
local yOrigin = 15
local bkgrX = 708
local bkgrY = yOrigin - 5
local spacing = 136
local terrGrid = {}
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function Battlefield:create( event )
    local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen
	local bkgrPanelRt = Background:new( nil, 'images/MFW_Main_Bkgr_Rt.png', bkgrX, bkgrY, 375, 1240 )
    sceneGroup:insert( bkgrPanelRt.image )

	for x=0,4 do
		terrGrid[x] = {}
		for y=0,9 do
			local grass = TerrGrass:new( nil, (xOrigin + (x * spacing)), (yOrigin + (y * spacing)) )
    		sceneGroup:insert( grass.image )
			terrGrid[x][y] = grass
		end
	end
end
 
 
-- show()
function Battlefield:show( event )
 
    local sceneGroup = self.view
	local phase = event.phase
 
    if ( phase == 'will' ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == 'did' ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function Battlefield:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == 'will' ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == 'did' ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function Battlefield:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
Battlefield:addEventListener( 'create', Battlefield )
Battlefield:addEventListener( 'show', Battlefield )
Battlefield:addEventListener( 'hide', Battlefield )
Battlefield:addEventListener( 'destroy', Battlefield )
-- -----------------------------------------------------------------------------------
 
return Battlefield
