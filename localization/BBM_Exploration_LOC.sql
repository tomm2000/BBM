--========================================================================================================================
-- Religion beliefs
--========================================================================================================================
-- 'Icons' reliquary belief only gives 1 relic instead of 2 on cs conversion
UPDATE LocalizedText
SET Text = "BBM | +1 Relic for first-time conversion of a City-State"
WHERE Tag = "LOC_BELIEF_BONUS_9_DESCRIPTION"

-- "Brahmanism" reliquary belief gives 3 relics instead of 4 on capital conversion
UPDATE LocalizedText
SET Text = "BBM | +3 Relics for first-time conversion of another Civilization’s Capital city"
WHERE Tag = "LOC_BELIEF_BONUS_10_DESCRIPTION"

-- "Reliquaries" belief gives 2 relics instead of 1 on temple city conversion
UPDATE LocalizedText
SET Text = "BBM | +2 Relic for first-time conversion of another Civilization’s settlement with a Temple or Altar"
WHERE Tag = "LOC_BELIEF_BONUS_11_DESCRIPTION"

-- "Lay Followers" gives 2 relics instead of 1 for conversion of 10 (rural) pop city
UPDATE LocalizedText
SET Text = "BBM | +2 Relic for the first time conversion of another Civilization's settlement with at least 10 Rural Population"
WHERE Tag = "LOC_BELIEF_BONUS_15_DESCRIPTION"

-- "Ecclesiasticism" gives 2 relics instead of 1 for conversion of 10 (urban) pop city
UPDATE LocalizedText
SET Text = "BBM | +2 Relic for the first time conversion of another Civilization's settlement with at least 10 Urban Population"
WHERE Tag = "LOC_BELIEF_BONUS_16_DESCRIPTION"

-- ========================================================================================================================

-- "Reincarnation" belief only gives 0.5 science per tropical instead of 2
UPDATE LocalizedText
SET Text = "BBM | +0.5[icon:YIELD_SCIENCE] Science for every Tropical tile in other Civilizations’ Settlements following your Religion."
WHERE Tag = "LOC_BELIEF_BONUS_22_DESCRIPTION"

-- "Shamanism" belief only gives 0.5 culture per tundra instead of 2
UPDATE LocalizedText
SET Text = "BBM | +0.5[icon:YIELD_CULTURE] Culture for every Tundra tile in other Civilizations’ Settlements following your Religion."
WHERE Tag = "LOC_BELIEF_BONUS_23_DESCRIPTION"

-- "Desert Faith" belief only gives 1 gold per desert instead of 2
UPDATE LocalizedText
SET Text = "BBM | +1[icon:YIELD_GOLD] Gold for every Desert tile in other Civilizations’ Settlements following your Religion."
WHERE Tag = "LOC_BELIEF_BONUS_24_DESCRIPTION"

-- "Sacred Herds" belief only gives 0.5 science per grassland instead of 1
UPDATE LocalizedText
SET Text = "BBM | +0.5[icon:YIELD_SCIENCE] Science for every Grassland tile in other Civilizations’ Settlements following your Religion."
WHERE Tag = "LOC_BELIEF_BONUS_27_DESCRIPTION";

-- "Sky Gods" belief only gives 0.5 culture per plains instead of 1
UPDATE LocalizedText
SET Text = "BBM | +0.5[icon:YIELD_CULTURE] Culture for every Plains tile in other Civilizations’ Settlements following your Religion."
WHERE Tag = "LOC_BELIEF_BONUS_28_DESCRIPTION";
--========================================================================================================================
--========================================================================================================================

