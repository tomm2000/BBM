--========================================================================================================================
-- Religion beliefs
--========================================================================================================================
-- 'Icons' reliquary belief only gives 1 relic instead of 2
UPDATE LocalizedText
SET Text = 'BBM | +1 Relic for first-time conversion of a City-State'
WHERE Tag = 'LOC_BELIEF_BONUS_9_DESCRIPTION'

-- 'Reincarnation' belief only gives 0.5 science per tropical instead of 2
UPDATE LocalizedText
SET Text = 'BBM | +0.5[icon:YIELD_SCIENCE] Science for every Tropical tile in other Civilizations’ Settlements following your Religion.'
WHERE Tag = 'LOC_BELIEF_BONUS_22_DESCRIPTION'

-- 'Shamanism' belief only gives 0.5 culture per tundra instead of 2
UPDATE LocalizedText
SET Text = 'BBM | +0.5[icon:YIELD_CULTURE] Culture for every Tundra tile in other Civilizations’ Settlements following your Religion.'
WHERE Tag = 'LOC_BELIEF_BONUS_23_DESCRIPTION'

-- 'Desert Faith' belief only gives 1 gold per desert instead of 2
UPDATE LocalizedText
SET Text = 'BBM | +1[icon:YIELD_GOLD] Gold for every Desert tile in other Civilizations’ Settlements following your Religion.'
WHERE Tag = 'LOC_BELIEF_BONUS_24_DESCRIPTION'

-- 'Sacred Herds' belief only gives 0.5 science per grassland instead of 1
UPDATE LocalizedText
SET Text = 'BBM | +0.5[icon:YIELD_SCIENCE] Science for every Grassland tile in other Civilizations’ Settlements following your Religion.'
WHERE Tag = 'LOC_BELIEF_BONUS_27_DESCRIPTION';

-- 'Sky Gods' belief only gives 0.5 culture per plains instead of 1
UPDATE LocalizedText
SET Text = 'BBM | +0.5[icon:YIELD_CULTURE] Culture for every Plains tile in other Civilizations’ Settlements following your Religion.'
WHERE Tag = 'LOC_BELIEF_BONUS_28_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

