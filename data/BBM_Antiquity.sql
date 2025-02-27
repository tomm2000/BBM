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

-- 'God of the Forge' pantheon, +25% (from +10%) production towards buildings
UPDATE ModifierArguments
SET Value = 25
WHERE ModifierId = 'ATTACH_PANTHEON_BUILDING_PRODUCTION' and Name = 'Percent';

-- 'God of War' pantheon, +35% (from +15%) production towards units
UPDATE ModifierArguments
SET Value = 35
WHERE ModifierId = 'ATTACH_PANTHEON_ALTAR_UNIT_PRODUCTION' and Name = 'Percent';

-- 'Monuments of the Gods' pantheon, +20% (from +10%) production towards wonders
UPDATE ModifierArguments
SET Value = 20
WHERE ModifierId = 'ATTACH_PANTHEON_ALTAR_WONDER_PRODUCTION' and Name = 'Percent';

-- 'Oral Tradition' pantheon, +40% (from +10%) production towards settlers
UPDATE ModifierArguments
SET Value = 40
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
WHERE ID = 'PantheonAltarCampGold'
--========================================================================================================================
--========================================================================================================================

