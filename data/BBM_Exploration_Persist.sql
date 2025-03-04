--========================================================================================================================
-- Farms & Granary
--========================================================================================================================
-- NOTE: The chain farm adjacency is unlockable in antiquity (BBM_Antiquity.sql) and default in other ages (BBM_Exploration_Persist.sql)

-- New: Farm 1 food adjacency for every adjacent farm
INSERT INTO Constructible_Adjacencies (ConstructibleType, YieldChangeId, RequiresActivation)
VALUES ('IMPROVEMENT_FARM', 'BBM_FarmChainFoodAdjacency', 0);
--                                                        ^ 0 means unlocked always

INSERT INTO 'Adjacency_YieldChanges' ('ID','AdjacentBiome','AdjacentConstructible','AdjacentConstructibleTag','AdjacentDistrict','AdjacentFeature','AdjacentFeatureClass','AdjacentLake','AdjacentNaturalWonder','AdjacentNavigableRiver','AdjacentQuarter','AdjacentResource','AdjacentResourceClass','AdjacentRiver','AdjacentSeaResource','AdjacentTerrain','AdjacentUniqueQuarter','AdjacentUniqueQuarterType','Age','ProjectMaxYield','Self','TilesRequired','YieldChange','YieldType')
VALUES ('BBM_FarmChainFoodAdjacency',NULL,'IMPROVEMENT_FARM',NULL,NULL,NULL,NULL,0,0,0,0,0,'NO_RESOURCECLASS',0,0,NULL,0,NULL,NULL,1,0,1,1.0,'YIELD_FOOD')
--========================================================================================================================
--========================================================================================================================
