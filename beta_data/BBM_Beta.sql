--========================================================================================================================
-- Bath and garden buff
--========================================================================================================================
-- Rural districts get +1 culture from adjacent baths
INSERT INTO 'Adjacency_YieldChanges' ('ID','AdjacentBiome','AdjacentConstructible','AdjacentConstructibleTag','AdjacentDistrict','AdjacentFeature','AdjacentFeatureClass','AdjacentLake','AdjacentNaturalWonder','AdjacentNavigableRiver','AdjacentQuarter','AdjacentResource','AdjacentResourceClass','AdjacentRiver','AdjacentSeaResource','AdjacentTerrain','AdjacentUniqueQuarter','AdjacentUniqueQuarterType','Age','ProjectMaxYield','Self','TilesRequired','YieldChange','YieldType')
VALUES ('BBM_RuralBathAdjacency',NULL,'BUILDING_BATH',NULL,NULL,NULL,NULL,0,0,0,0,0,'NO_RESOURCECLASS',0,0,NULL,0,NULL,NULL,1,0,1,1.0,'YIELD_CULTURE');

INSERT INTO "Constructible_Adjacencies" ("ConstructibleType", "YieldChangeId")
VALUES
('IMPROVEMENT_FARM', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_PASTURE', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_PLANTATION', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_MINE', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_MINE_RESOURCE', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_QUARRY', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_CLAY_PIT', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_WOODCUTTER', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_WOODCUTTER_RESOURCE', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_CAMP', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_FISHING_BOAT', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_FISHING_BOAT_RESOURCE', 'BBM_RuralBathAdjacency'),
('IMPROVEMENT_OIL_RIG', 'BBM_RuralBathAdjacency');

-- Rural districts get +2 food from adjacent gardens
INSERT INTO 'Adjacency_YieldChanges' ('ID','AdjacentBiome','AdjacentConstructible','AdjacentConstructibleTag','AdjacentDistrict','AdjacentFeature','AdjacentFeatureClass','AdjacentLake','AdjacentNaturalWonder','AdjacentNavigableRiver','AdjacentQuarter','AdjacentResource','AdjacentResourceClass','AdjacentRiver','AdjacentSeaResource','AdjacentTerrain','AdjacentUniqueQuarter','AdjacentUniqueQuarterType','Age','ProjectMaxYield','Self','TilesRequired','YieldChange','YieldType')
VALUES ('BBM_RuralGardenAdjacency',NULL,'BUILDING_GARDEN',NULL,NULL,NULL,NULL,0,0,0,0,0,'NO_RESOURCECLASS',0,0,NULL,0,NULL,NULL,1,0,1,2.0,'YIELD_FOOD');

INSERT INTO "Constructible_Adjacencies" ("ConstructibleType", "YieldChangeId")
VALUES
('IMPROVEMENT_FARM', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_PASTURE', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_PLANTATION', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_MINE', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_MINE_RESOURCE', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_QUARRY', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_CLAY_PIT', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_WOODCUTTER', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_WOODCUTTER_RESOURCE', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_CAMP', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_FISHING_BOAT', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_FISHING_BOAT_RESOURCE', 'BBM_RuralGardenAdjacency'),
('IMPROVEMENT_OIL_RIG', 'BBM_RuralGardenAdjacency');
--========================================================================================================================
--========================================================================================================================
