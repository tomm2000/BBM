--========================================================================================================================
-- Natural wonders
--========================================================================================================================
-- Uluru: from +2 culture on desert tiles to +1 culture on desert tiles
UPDATE Feature_CityYields
SET YieldChange = 1
WHERE Feature_CityYieldType = 'ULURU_DESERT_CULTURE';

-- ZHANGJIAJIE: from +2 culture on rough terrain tiles to +2 happiness on rough terrain tiles
UPDATE Feature_CityYields
SET YieldType = 'YIELD_HAPPINESS'
WHERE Feature_CityYieldType = 'ZHANGJIAJIE_ROUGH_CULTURE';
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Farms & Granary
--========================================================================================================================
-- NOTE: The chain farm adjacency is unlockable in antiquity (BBM_Antiquity.sql) and default in other ages (BBM_Exploration_Persist.sql)

-- New: Farms get +2 gold for adjacent granaries
INSERT INTO Constructible_Adjacencies (ConstructibleType, YieldChangeId, RequiresActivation)
VALUES ('IMPROVEMENT_FARM', 'BBM_FarmGranaryProduction', 0);

INSERT INTO 'Adjacency_YieldChanges' ('ID','AdjacentBiome','AdjacentConstructible','AdjacentConstructibleTag','AdjacentDistrict','AdjacentFeature','AdjacentFeatureClass','AdjacentLake','AdjacentNaturalWonder','AdjacentNavigableRiver','AdjacentQuarter','AdjacentResource','AdjacentResourceClass','AdjacentRiver','AdjacentSeaResource','AdjacentTerrain','AdjacentUniqueQuarter','AdjacentUniqueQuarterType','Age','ProjectMaxYield','Self','TilesRequired','YieldChange','YieldType')
VALUES ('BBM_FarmGranaryProduction',NULL,'BUILDING_GRANARY',NULL,NULL,NULL,NULL,0,0,0,0,0,'NO_RESOURCECLASS',0,0,NULL,0,NULL,NULL,1,0,1,2.0,'YIELD_GOLD');
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Fishing Quay & Fishing boat
--========================================================================================================================
-- New: Fishing quay +1 gold on fishing boats. warehouse bonus
INSERT INTO Constructible_WarehouseYields (ConstructibleType, YieldChangeId, RequiresActivation)
VALUES ('BUILDING_FISHING_QUAY', 'BBM_FishingQuayBoatGold', 0);

INSERT INTO Warehouse_YieldChanges ('ID', 'Age', 'BiomeInCity', 'ConstructibleInCity', 'DistrictInCity', 'FeatureClassInCity', 'FeatureInCity', 'LakeInCity', 'MinorRiverInCity', 'NaturalWonderInCity', 'NavigableRiverInCity', 'Overbuilt', 'ResourceInCity', 'RouteInCity', 'TerrainInCity', 'TerrainTagInCity', 'YieldChange', 'YieldType')
VALUES ('BBM_FishingQuayBoatGold', NULL, NULL, 'IMPROVEMENT_FISHING_BOAT', NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, 1, 'YIELD_GOLD');
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Egypt Changes
--========================================================================================================================
-- Necropolis unique quarter: 200 (from 100) gold (on standard speed) when a wonder is built in the city
UPDATE ModifierArguments
SET Value = 200
WHERE ModifierId = 'MOD_EGYPT_NECROPOLIS_GOLD_ON_WONDER_CREATED' AND Name = 'Amount';

-- Egypt buffed navigable river bias from 20 to 200
UPDATE StartBiasTerrains
SET Score = 200
WHERE CivilizationType = 'CIVILIZATION_EGYPT';

-- Egypt buffed desert bias from 5 to 20
UPDATE StartBiasBiomes
SET Score = 40
WHERE CivilizationType = 'CIVILIZATION_EGYPT';
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Maya changes
--========================================================================================================================
-- Uwaybil K'uh unique quarter: 10% production (from 15%) on tech completed
UPDATE ModifierArguments
SET Value = 10
WHERE ModifierId = 'MOD_MAYA_UWAYBIL_KUH_PRODUCTION_ON_TECH_COMPLETED' AND Name = 'PercentCost';

-- max 1 player instances for Uwaybil K'uh and K'uh Nah buildings
UPDATE Buildings
SET MaxPlayerInstances = 1
WHERE ConstructibleType = 'BUILDING_JALAW';

UPDATE Buildings
SET MaxPlayerInstances = 1
WHERE ConstructibleType = 'BUILDING_KUH_NAH';
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Khmer changes
--========================================================================================================================

--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Missisipi changes
--========================================================================================================================
-- Removed flat terrain bias
DELETE FROM StartBiasTerrains
WHERE CivilizationType = 'CIVILIZATION_MISSISSIPPIAN' AND TerrainType = 'TERRAIN_FLAT';

-- Potkop UI: no base gold
DELETE FROM Constructible_YieldChanges
WHERE ConstructibleType = 'IMPROVEMENT_POTKOP' AND YieldType = 'YIELD_GOLD';

-- instead gets +2 food +2 gold from adjacent resources
DELETE FROM Constructible_Adjacencies
WHERE ConstructibleType = 'IMPROVEMENT_POTKOP';

INSERT INTO Adjacency_YieldChanges ('ID', 'AdjacentResource', 'ProjectMaxYield', 'Self', 'TilesRequired', 'YieldChange', 'YieldType')
VALUES ('BBM_PotkopResourceFood', 1, 1, 0, 1, 2.0, 'YIELD_FOOD');

INSERT INTO Adjacency_YieldChanges ('ID', 'AdjacentResource', 'ProjectMaxYield', 'Self', 'TilesRequired', 'YieldChange', 'YieldType')
VALUES ('BBM_PotkopResourceGold', 1, 1, 0, 1, 2.0, 'YIELD_GOLD');

INSERT INTO Constructible_Adjacencies (ConstructibleType, YieldChangeId, RequiresActivation)
VALUES ('IMPROVEMENT_POTKOP', 'BBM_PotkopResourceFood', 0);

INSERT INTO Constructible_Adjacencies (ConstructibleType, YieldChangeId, RequiresActivation)
VALUES ('IMPROVEMENT_POTKOP', 'BBM_PotkopResourceGold', 0);
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Terrain
--========================================================================================================================
-- Grassland terrain: +2 food (from +1 food) base, navigable river excluded
UPDATE TerrainBiomeFeature_YieldChanges
SET YieldChange = 2
WHERE YieldChange = 1
  AND NOT TerrainType = 'TERRAIN_NAVIGABLE_RIVER'
  AND BiomeType = 'BIOME_GRASSLAND'
  AND YieldType = 'YIELD_FOOD'
  AND ScaleByGameAge = 0;
--========================================================================================================================
--========================================================================================================================