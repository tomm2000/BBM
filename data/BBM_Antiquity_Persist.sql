--========================================================================================================================
-- Natural wonders
--========================================================================================================================

-- Uluru: from +2 culture on desert tiles to +1 culture on desert tiles
UPDATE Feature_CityYields
SET YieldChange = 1
WHERE Feature_CityYieldType = 'ULURU_DESERT_CULTURE';

-- ZHANGJIAJIE: from +2 culture on rough terrain tiles to +1 culture on rough terrain tiles
UPDATE Feature_CityYields
SET YieldType = 'YIELD_CULTURE'
WHERE Feature_CityYieldType = 'ZHANGJIAJIE_ROUGH_CULTURE';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Spawn biases
--========================================================================================================================
-- Egypt buffed navigable river bias from 20 to 200
UPDATE StartBiasTerrains
SET Score = 200
WHERE CivilizationType = 'CIVILIZATION_EGYPT';

-- Egypt buffed desert bias from 5 to 20
UPDATE StartBiasBiomes
SET Score = 40
WHERE CivilizationType = 'CIVILIZATION_EGYPT';

-- Missisipi removed flat terrain bias
DELETE FROM StartBiasTerrains
WHERE CivilizationType = 'CIVILIZATION_MISSISSIPPIAN' AND TerrainType = 'TERRAIN_FLAT'
--========================================================================================================================
--========================================================================================================================