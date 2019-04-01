-- main.lua

Square = require('scripts.sprites.square');
Rectangle = require('scripts.sprites.rectangle');


-- Creating an object
mysquare = Square:new(nil,10)
mysquare:about()
mysquare:printArea()

-- Creating an object
myrectangle = Rectangle:new(nil,10,20)
myrectangle:about()
myrectangle:printArea()



-- Terrain Sprites base

-- local TerrBase = {}
-- local TerrBase_mt = {_index = TerrBase}

-- function TerrGrass_mt.baseAdd(a,b)
-- 	print(a+b)
-- end



-- -- Terrain Sprites - Grass

-- local TerrGrass = {}

-- function TerrGrass.new()
-- 	local grass = {}
-- 	setmetatable(grass,TerrBase_mt)
-- 	return grass
-- end

-- function TerrGrass.add(a,b)
-- 	print(a+b)
-- end

-- function TerrGrass.sub(a,b)
-- 	print(a-b)
-- end

-- function TerrGrass.mul(a,b)
-- 	print(a*b)
-- end

-- function TerrGrass.div(a,b)
-- 	print(a/b)
-- end

-- --

-- local grass = TerrGrass.new()

-- grass.add(5,7)

