--========================================================================================================================
-- Pantheons
--========================================================================================================================
-- 'Earth goddess' pantheon, +2 (from +1) happiness adjacent to natural wonders and mountains
UPDATE Adjacency_YieldChanges
SET YieldChange = 2
WHERE ID = 'AltarMountainHappiness';

UPDATE Adjacency_YieldChanges
SET YieldChange = 2
WHERE ID = 'AltarNaturalWonderHappiness';

-- 'Fertility Rites' pantheon, +25% (from +10%) on settlements (from on cities only)
UPDATE ModifierArguments
SET Value = 25
WHERE ModifierId = 'ATTACH_PANTHEON_CITY_GROWTH_RATE' and Name = 'Amount';

DELETE FROM RequirementSetRequirements
WHERE RequirementId = 'ATTACH_PANTHEON_CITY_GROWTH_RATE_SUBJECT_REQUIREMENTS_1';

-- 'Goddess of Festivals' pantheon, +2 (from +1) culture on quarters
UPDATE ModifierArguments
SET Value = 2
WHERE ModifierId = 'ATTACH_PANTHEON_URBAN_CULTURE' and Name = 'Amount';

-- 'God of Wisdom' pantheon, +2 (from +1) science on quarters
UPDATE ModifierArguments
SET Value = 2
WHERE ModifierId = 'ATTACH_PANTHEON_URBAN_SCIENCE' and Name = 'Amount';

-- 'God of the Forge' pantheon, +40% (from +10%) production towards buildings
UPDATE ModifierArguments
SET Value = 40
WHERE ModifierId = 'ATTACH_PANTHEON_BUILDING_PRODUCTION' and Name = 'Percent';

-- 'God of War' pantheon, +40% (from +15%) production towards units
UPDATE ModifierArguments
SET Value = 40
WHERE ModifierId = 'ATTACH_PANTHEON_ALTAR_UNIT_PRODUCTION' and Name = 'Percent';

-- 'Monuments of the Gods' pantheon, +30% (from +10%) production towards wonders
UPDATE ModifierArguments
SET Value = 30
WHERE ModifierId = 'ATTACH_PANTHEON_ALTAR_WONDER_PRODUCTION' and Name = 'Percent';

-- 'Oral Tradition' pantheon, +50% (from +10%) production towards settlers
UPDATE ModifierArguments
SET Value = 50
WHERE ModifierId = 'ATTACH_PANTHEON_ALTAR_SETTLER_PRODUCTION' and Name = 'Percent';

-- 'Sacred Waters' pantheon, +2 gold adjacency from water tiles (from +1 happiness)
UPDATE Adjacency_YieldChanges
SET YieldChange = 2, YieldType = 'YIELD_GOLD'
WHERE ID = 'AltarCoastHappiness';

UPDATE Adjacency_YieldChanges
SET YieldChange = 2, YieldType = 'YIELD_GOLD'
WHERE ID = 'AltarLakeHappiness';

UPDATE Adjacency_YieldChanges
SET YieldChange = 2, YieldType = 'YIELD_GOLD'
WHERE ID = 'AltarRiverHappiness';

-- 'God of the Forest' pantheon, +2 (from +1) gold on camps and woodcutters
UPDATE Warehouse_YieldChanges
SET YieldChange = 2
WHERE ID = 'PantheonAltarWoodcutterResourceGold';

UPDATE Warehouse_YieldChanges
SET YieldChange = 2
WHERE ID = 'PantheonAltarVegetatedFeatureGold';

UPDATE Warehouse_YieldChanges
SET YieldChange = 2
WHERE ID = 'PantheonAltarCampGold';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Legacy paths
--========================================================================================================================

-- culture legacy path requires 2,4,6 wonders instead of 2,4,7
UPDATE AgeProgressionMilestones
SET RequiredPathPoints = 6
WHERE AgeProgressionMilestoneType = 'ANTIQUITY_CULTURE_MILESTONE_3';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Independent people
--========================================================================================================================

-- culture, +1 culture per suized city on monuments (from +2)
UPDATE ModifierArguments
SET Value = 1
WHERE ModifierId = 'ATTACH_MONUMENT_CULTURE' and Name = 'Amount';

-- culture, +2 (from +1) Social Policy slot.
UPDATE ModifierArguments
SET Value = 2
WHERE ModifierId = 'ATTACH_TRADITION_SLOT' and Name = 'Amount';

-- economic, lapis lazuli, +6 gold (from +4 prod) and +25% gold (from +5% gold) in the city
UPDATE ModifierArguments
SET Value = 6
WHERE ModifierId = 'MOD_LAPIS_LAZULI_CITY_FLAT_PRODUCTION' and Name = 'Amount';

UPDATE ModifierArguments
SET Value = 'YIELD_GOLD'
WHERE ModifierId = 'MOD_LAPIS_LAZULI_CITY_FLAT_PRODUCTION' and Name = 'YieldType';

UPDATE ModifierArguments
SET Value = 25
WHERE ModifierId = 'MOD_LAPIS_LAZULI_CITY_GOLD' and Name = 'Amount';

-- economic, +2 gold (from +1) on gold buildings for each suized city state
UPDATE ModifierArguments
SET Value = 2
WHERE ModifierId = 'ATTACH_GOLD_BUILDINGS_GOLD' and Name = 'Amount';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Farms & Granary
--========================================================================================================================
-- NOTE: The chain farm adjacency is unlockable in antiquity (BBM_Antiquity.sql) and default in other ages (BBM_Exploration_Persist.sql)

-- New: Farm 1 food adjacency for every adjacent farm
INSERT INTO Constructible_Adjacencies (ConstructibleType, YieldChangeId, RequiresActivation)
VALUES ('IMPROVEMENT_FARM', 'BBM_FarmChainFoodAdjacency', 1);

INSERT INTO 'Adjacency_YieldChanges' ('ID','AdjacentBiome','AdjacentConstructible','AdjacentConstructibleTag','AdjacentDistrict','AdjacentFeature','AdjacentFeatureClass','AdjacentLake','AdjacentNaturalWonder','AdjacentNavigableRiver','AdjacentQuarter','AdjacentResource','AdjacentResourceClass','AdjacentRiver','AdjacentSeaResource','AdjacentTerrain','AdjacentUniqueQuarter','AdjacentUniqueQuarterType','Age','ProjectMaxYield','Self','TilesRequired','YieldChange','YieldType')
VALUES ('BBM_FarmChainFoodAdjacency',NULL,'IMPROVEMENT_FARM',NULL,NULL,NULL,NULL,0,0,0,0,0,'NO_RESOURCECLASS',0,0,NULL,0,NULL,NULL,1,0,1,1.0,'YIELD_FOOD');
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Maya changes
--========================================================================================================================
-- civic modifier: The Altar gains a +1 Happiness (from 1 Science) Adjacency from Vegetated Terrain.
UPDATE Adjacency_YieldChanges
SET YieldType = 'YIELD_HAPPINESS'
WHERE ID = 'MayaAltarVegetatedScience';

-- the calendar round bonuses now give 10% science/culture on masteries only
UPDATE DynamicModifiers
SET EffectType = 'TRIGGER_PLAYER_GRANT_YIELD_ON_MASTERY_COMPLETED'
WHERE ModifierType = 'MOD_CALENDAR_ROUND_CULTURE_FOR_TECH_TYPE' OR ModifierType = 'MOD_CALENDAR_ROUND_SCIENCE_FOR_CIVIC_TYPE';
--========================================================================================================================
--========================================================================================================================