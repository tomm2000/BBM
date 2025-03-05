UPDATE TerrainBiomeFeature_YieldChanges
SET YieldChange = 2
WHERE YieldChange = 1
  AND NOT TerrainType = 'TERRAIN_NAVIGABLE_RIVER'
  AND BiomeType = 'BIOME_GRASSLAND'
  AND YieldType = 'YIELD_FOOD'
  AND ScaleByGameAge = 0;


-- INSERT INTO "Constructible_Adjacencies" ("ConstructibleType", "YieldChangeId")
-- SELECT "ConstructibleType", 'BBM_RuralBathAdjacency'
-- FROM "Constructible_ValidDistricts"
-- WHERE "DistrictType" = 'DISTRICT_RURAL';

-- INSERT INTO 'Adjacency_YieldChanges' ('ID','AdjacentBiome','AdjacentConstructible','AdjacentConstructibleTag','AdjacentDistrict','AdjacentFeature','AdjacentFeatureClass','AdjacentLake','AdjacentNaturalWonder','AdjacentNavigableRiver','AdjacentQuarter','AdjacentResource','AdjacentResourceClass','AdjacentRiver','AdjacentSeaResource','AdjacentTerrain','AdjacentUniqueQuarter','AdjacentUniqueQuarterType','Age','ProjectMaxYield','Self','TilesRequired','YieldChange','YieldType')
-- VALUES ('BBM_RuralBathAdjacency',NULL,'BUILDING_BATH',NULL,NULL,NULL,NULL,0,0,0,0,0,'NO_RESOURCECLASS',0,0,NULL,0,NULL,NULL,1,0,1,1.0,'YIELD_CULTURE');



-- INSERT INTO "Constructible_Adjacencies" ("ConstructibleType", "YieldChangeId")
-- SELECT "ConstructibleType", 'BBM_RuralGardenAdjacency'
-- FROM "Constructible_ValidDistricts"
-- WHERE "DistrictType" = 'DISTRICT_RURAL';


INSERT INTO "Constructible_Adjacencies" ("ConstructibleType", "YieldChangeId")
VALUES
('IMPROVEMENT_FARM', 'BBM_RuralGardenAdjacency');

INSERT INTO "Constructible_Adjacencies" ("ConstructibleType", "YieldChangeId")
VALUES
('IMPROVEMENT_WOODCUTTER', 'BBM_RuralGardenAdjacency');

INSERT INTO 'Adjacency_YieldChanges' ('ID','AdjacentBiome','AdjacentConstructible','AdjacentConstructibleTag','AdjacentDistrict','AdjacentFeature','AdjacentFeatureClass','AdjacentLake','AdjacentNaturalWonder','AdjacentNavigableRiver','AdjacentQuarter','AdjacentResource','AdjacentResourceClass','AdjacentRiver','AdjacentSeaResource','AdjacentTerrain','AdjacentUniqueQuarter','AdjacentUniqueQuarterType','Age','ProjectMaxYield','Self','TilesRequired','YieldChange','YieldType')
VALUES ('BBM_RuralGardenAdjacency',NULL,'BUILDING_BATH',NULL,NULL,NULL,NULL,0,0,0,0,0,'NO_RESOURCECLASS',0,0,NULL,0,NULL,NULL,1,0,1,2.0,'YIELD_FOOD');