-- Terrain Sprites base

local TerrBase = {}
local TerrBase_mt = {_index = TerrBase}


-- function mymath.add(a,b)
--    print(a+b)
-- end

-- function mymath.sub(a,b)
--    print(a-b)
-- end

-- function mymath.mul(a,b)
--    print(a*b)
-- end

-- function mymath.div(a,b)
--    print(a/b)
-- end

--return TerrBase_mt

-- Terrain Sprites - Grass

--local TerrBase = require'spr_terr_base'

local TerrGrass = {}

function TerrGrass:new()
	local grass = {}
	setmetatable(grass,TerrBase)
	return grass
end

function TerrGrass:add(a,b)
	print(a+b)
end

function TerrGrass:sub(a,b)
	print(a-b)
end

function TerrGrass:mul(a,b)
	print(a*b)
end

function TerrGrass:div(a,b)
	print(a/b)
end

return TerrGrass
