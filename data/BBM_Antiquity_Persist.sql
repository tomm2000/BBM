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
-- Farms & Granary
--========================================================================================================================
-- New: Farm 1 food adjacency for every adjacent farm
INSERT INTO Constructible_Adjacencies (ConstructibleType, YieldChangeId, RequiresActivation)
VALUES ('IMPROVEMENT_FARM', 'BBM_FarmChainFood', 0);

INSERT INTO 'Adjacency_YieldChanges' ('ID','AdjacentBiome','AdjacentConstructible','AdjacentConstructibleTag','AdjacentDistrict','AdjacentFeature','AdjacentFeatureClass','AdjacentLake','AdjacentNaturalWonder','AdjacentNavigableRiver','AdjacentQuarter','AdjacentResource','AdjacentResourceClass','AdjacentRiver','AdjacentSeaResource','AdjacentTerrain','AdjacentUniqueQuarter','AdjacentUniqueQuarterType','Age','ProjectMaxYield','Self','TilesRequired','YieldChange','YieldType')
VALUES ('BBM_FarmChainFood',NULL,'IMPROVEMENT_FARM',NULL,NULL,NULL,NULL,0,0,0,0,0,'NO_RESOURCECLASS',0,0,NULL,0,NULL,NULL,1,0,1,1.0,'YIELD_FOOD');

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
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Maya changes
--========================================================================================================================
-- Uwaybil K'uh unique quarter: 10% production (from 15%) on tech completed
UPDATE ModifierArguments
SET Value = 10
WHERE ModifierId = 'MOD_MAYA_UWAYBIL_KUH_PRODUCTION_ON_TECH_COMPLETED' AND Name = 'PercentCost';

-- increased gold maintenance for Uwaybil K'uh and K'uh Nah buildings (10 gold instead of 2)
UPDATE Constructible_Maintenances
SET Amount = 10
WHERE ConstructibleType = 'BUILDING_JALAW' AND YieldType = 'YIELD_GOLD';

UPDATE Constructible_Maintenances
SET Amount = 10
WHERE ConstructibleType = 'BUILDING_KUH_NAH' AND YieldType = 'YIELD_GOLD'
--========================================================================================================================
--========================================================================================================================
