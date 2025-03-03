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
WHERE CivilizationType = 'CIVILIZATION_MISSISSIPPIAN' AND TerrainType = 'TERRAIN_FLAT';
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Rural districts
--========================================================================================================================
-- New: Farm 1 food adjacency for every adjacent farm
INSERT INTO Constructible_Adjacencies (ConstructibleType, YieldChangeId, RequiresActivation)
VALUES ('IMPROVEMENT_FARM', 'BBM_FarmChainFood', 0);

INSERT INTO "Adjacency_YieldChanges" ("ID","AdjacentBiome","AdjacentConstructible","AdjacentConstructibleTag","AdjacentDistrict","AdjacentFeature","AdjacentFeatureClass","AdjacentLake","AdjacentNaturalWonder","AdjacentNavigableRiver","AdjacentQuarter","AdjacentResource","AdjacentResourceClass","AdjacentRiver","AdjacentSeaResource","AdjacentTerrain","AdjacentUniqueQuarter","AdjacentUniqueQuarterType","Age","ProjectMaxYield","Self","TilesRequired","YieldChange","YieldType")
VALUES ('BBM_FarmChainFood',NULL,'IMPROVEMENT_FARM',NULL,NULL,NULL,NULL,0,0,0,0,0,'NO_RESOURCECLASS',0,0,NULL,0,NULL,NULL,1,0,1,1.0,'YIELD_GOLD');

-- New: Farms get +1 production for adjacent granaries
INSERT INTO Constructible_Adjacencies (ConstructibleType, YieldChangeId, RequiresActivation)
VALUES ('IMPROVEMENT_FARM', 'BBM_FarmGranaryProduction', 0);

INSERT INTO "Adjacency_YieldChanges" ("ID","AdjacentBiome","AdjacentConstructible","AdjacentConstructibleTag","AdjacentDistrict","AdjacentFeature","AdjacentFeatureClass","AdjacentLake","AdjacentNaturalWonder","AdjacentNavigableRiver","AdjacentQuarter","AdjacentResource","AdjacentResourceClass","AdjacentRiver","AdjacentSeaResource","AdjacentTerrain","AdjacentUniqueQuarter","AdjacentUniqueQuarterType","Age","ProjectMaxYield","Self","TilesRequired","YieldChange","YieldType")
VALUES ('BBM_FarmGranaryProduction',NULL,'BUILDING_GRANARY',NULL,NULL,NULL,NULL,0,0,0,0,0,'NO_RESOURCECLASS',0,0,NULL,0,NULL,NULL,1,0,1,1.0,'YIELD_PRODUCTION');
--========================================================================================================================
--========================================================================================================================