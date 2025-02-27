--========================================================================================================================
-- Pantheons
--========================================================================================================================
-- 'Earth goddess' pantheon, +2 (from +1) happiness adjacent to natural wonders and mountains
UPDATE LocalizedText
SET Text = "BBM | The Altar receives a +2[icon:YIELD_HAPPINESS] Happiness Adjacency for Mountains and Natural Wonders."
WHERE Tag = "LOC_PANTHEON_BONUS_2_DESCRIPTION";

-- 'Fertility Rites' pantheon, +25% (from +10%) on settlements (from on cities only)
UPDATE LocalizedText
SET Text = "BBM | +25% Growth Rate in Settlements with an Altar."
WHERE Tag = "LOC_PANTHEON_BONUS_3_DESCRIPTION";

-- 'Goddess of Festivals' pantheon, +2 (from +1) culture on quarters
UPDATE LocalizedText
SET Text = "BBM | +2[icon:YIELD_CULTURE] Culture on Quarters in Settlements with an Altar."
WHERE Tag = "LOC_PANTHEON_BONUS_4_DESCRIPTION";

-- 'God of Wisdom' pantheon, +2 (from +1) science on quarters
UPDATE LocalizedText
SET Text = "BBM | +2[icon:YIELD_SCIENCE] Science on Quarters in Settlements with an Altar."
WHERE Tag = "LOC_PANTHEON_BONUS_12_DESCRIPTION";

-- 'God of the Forge' pantheon, +25% (from +10%) production towards buildings
UPDATE LocalizedText
SET Text = "BBM | +25%[icon:YIELD_PRODUCTION] Production towards constructing Buildings in Cities with an Altar."
WHERE Tag = "LOC_PANTHEON_BONUS_8_DESCRIPTION";

-- 'God of War' pantheon, +35% (from +15%) production towards units
UPDATE LocalizedText
SET Text = "BBM | +35%[icon:YIELD_PRODUCTION] Production towards training Military Units in Cities with an Altar."
WHERE Tag = "LOC_PANTHEON_BONUS_11_DESCRIPTION";

-- 'Monuments of the Gods' pantheon, +20% (from +10%) production towards wonders
UPDATE LocalizedText
SET Text = "BBM | +20%[icon:YIELD_PRODUCTION] Production towards constructing Wonders in Cities with an Altar."
WHERE Tag = "LOC_PANTHEON_BONUS_13_DESCRIPTION";

-- 'Oral Tradition' pantheon, +40% (from +10%) production towards settlers
UPDATE LocalizedText
SET Text = "BBM | +40%[icon:YIELD_PRODUCTION] Production towards training Settlers in Cities with an Altar."
WHERE Tag = "LOC_PANTHEON_BONUS_14_DESCRIPTION";

-- 'Sacred Waters' pantheon, +2 gold adjacency from water tiles (from +1 happiness)
UPDATE LocalizedText
SET Text = "BBM | The Altar receives a +2[icon:YIELD_GOLD] Gold Adjacency for Coast, Lakes, and Navigable River tiles."
WHERE Tag = "LOC_PANTHEON_BONUS_14_DESCRIPTION"

-- 'God of the Forest' pantheon, +2 (from +1) gold on camps and woodcutters
UPDATE LocalizedText
SET Text = "BBM | +2[icon:YIELD_GOLD] Gold on Camps and Woodcutters in Settlements with an Altar. Warehouse bonus."
WHERE Tag = "LOC_PANTHEON_BONUS_7_DESCRIPTION"
--========================================================================================================================
--========================================================================================================================

