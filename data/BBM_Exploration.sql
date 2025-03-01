--========================================================================================================================
-- Religion beliefs
--========================================================================================================================
-- 'Icons' reliquary belief only gives 1 relic instead of 2 on cs conversion
UPDATE ModifierArguments
SET Value = 1
WHERE ModifierId = 'ATTACH_RELIC_CITY_STATE' and Name = 'Amount';

-- 'Brahmanism' reliquary belief gives 3 relics instead of 4 on capital conversion
UPDATE ModifierArguments
SET Value = 3
WHERE ModifierId = 'ATTACH_RELIC_CAPITAL' and Name = 'Amount';

-- 'Reliquaries' belief gives 2 relics instead of 1 on temple city conversion
UPDATE ModifierArguments
SET Value = 2
WHERE ModifierId = 'ATTACH_RELIC_CONVERTING_RELIGIOUS_BUILDING' and Name = 'Amount';

-- 'Lay Followers' gives 2 relics instead of 1 for conversion of 10 (rural) pop city
UPDATE ModifierArguments
SET Value = 2
WHERE ModifierId = 'ATTACH_RELIC_RURAL_POP' and Name = 'Amount';

-- 'Ecclesiasticism' gives 2 relics instead of 1 for conversion of 10 (urban) pop city
UPDATE ModifierArguments
SET Value = 2
WHERE ModifierId = 'ATTACH_RELIC_URBAN_POP' and Name = 'Amount';

-- ========================================================================================================================

-- 'Reincarnation' belief only gives 0.5 science per tropical instead of 2
UPDATE ModifierArguments
SET Value = 0.5
WHERE ModifierId = 'ATTACH_TROPICAL_CITIES_FOLLOWING_SCIENCE' and Name = 'Amount';

-- 'Shamanism' belief only gives 0.5 culture per tundra instead of 2
UPDATE ModifierArguments
SET Value = 0.5
WHERE ModifierId = 'ATTACH_TUNDRA_CITIES_FOLLOWING_CULTURE' and Name = 'Amount';

-- 'Desert Faith' belief only gives 1 gold per desert instead of 2
UPDATE ModifierArguments
SET Value = 1
WHERE ModifierId = 'ATTACH_DESERT_CITIES_FOLLOWING_GOLD' and Name = 'Amount';

-- 'Sacred Herds' belief only gives 0.5 science per grassland instead of 1
UPDATE ModifierArguments
SET Value = 0.5
WHERE ModifierId = 'ATTACH_GRASSLAND_CITIES_FOLLOWING_SCIENCE' and Name = 'Amount';

-- 'Sky Gods' belief only gives 0.5 culture per plains instead of 1
UPDATE ModifierArguments
SET Value = 0.5
WHERE ModifierId = 'ATTACH_PLAINS_CITIES_FOLLOWING_SCIENCE' and Name = 'Amount';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Legacy paths
--========================================================================================================================
-- Changing the legacy path era progress from 5,10,20 to 5,8,11 (standard speed)
UPDATE AgeProgressionMilestones
SET AgeProgressionAmount = 
  CASE 
    WHEN AgeProgressionMilestoneType LIKE '%_MILESTONE_1' THEN 5
    WHEN AgeProgressionMilestoneType LIKE '%_MILESTONE_2' THEN 8
    WHEN AgeProgressionMilestoneType LIKE '%_MILESTONE_3' THEN 11
  END
WHERE AgeProgressionMilestoneType LIKE 'EXPLORATION_%_MILESTONE_%';

--========================================================================================================================
--========================================================================================================================