--========================================================================================================================
-- Pantheons
--========================================================================================================================
-- 'Earth goddess' pantheon, +2 (from +1) happiness adjacent to natural wonders and mountains
UPDATE LocalizedText
SET Text = 'BBM : The Altar receives a +2[icon:YIELD_HAPPINESS] Happiness Adjacency for Mountains and Natural Wonders.'
WHERE Tag = 'LOC_PANTHEON_BONUS_2_DESCRIPTION';

-- 'Fertility Rites' pantheon, +25% (from +10%) on settlements (from on cities only)
UPDATE LocalizedText
SET Text = 'BBM : +25% Growth Rate in Settlements with an Altar.'
WHERE Tag = 'LOC_PANTHEON_BONUS_3_DESCRIPTION';

-- 'Goddess of Festivals' pantheon, +2 (from +1) culture on quarters
UPDATE LocalizedText
SET Text = 'BBM : +2[icon:YIELD_CULTURE] Culture on Quarters in Settlements with an Altar.'
WHERE Tag = 'LOC_PANTHEON_BONUS_4_DESCRIPTION';

-- 'God of Wisdom' pantheon, +2 (from +1) science on quarters
UPDATE LocalizedText
SET Text = 'BBM : +2[icon:YIELD_SCIENCE] Science on Quarters in Settlements with an Altar.'
WHERE Tag = 'LOC_PANTHEON_BONUS_12_DESCRIPTION';

-- 'God of the Forge' pantheon, +40% (from +10%) production towards buildings
UPDATE LocalizedText
SET Text = 'BBM : +40%[icon:YIELD_PRODUCTION] Production towards constructing Buildings in Cities with an Altar.'
WHERE Tag = 'LOC_PANTHEON_BONUS_8_DESCRIPTION';

-- 'God of War' pantheon, +40% (from +15%) production towards units
UPDATE LocalizedText
SET Text = 'BBM : +40%[icon:YIELD_PRODUCTION] Production towards training Military Units in Cities with an Altar.'
WHERE Tag = 'LOC_PANTHEON_BONUS_11_DESCRIPTION';

-- 'Monuments of the Gods' pantheon, +30% (from +10%) production towards wonders
UPDATE LocalizedText
SET Text = 'BBM : +30%[icon:YIELD_PRODUCTION] Production towards constructing Wonders in Cities with an Altar.'
WHERE Tag = 'LOC_PANTHEON_BONUS_13_DESCRIPTION';

-- 'Oral Tradition' pantheon, +50% (from +10%) production towards settlers
UPDATE LocalizedText
SET Text = 'BBM : +50%[icon:YIELD_PRODUCTION] Production towards training Settlers in Cities with an Altar.'
WHERE Tag = 'LOC_PANTHEON_BONUS_14_DESCRIPTION';

-- 'Sacred Waters' pantheon, +2 gold adjacency from water tiles (from +1 happiness)
UPDATE LocalizedText
SET Text = 'BBM : The Altar receives a +2[icon:YIELD_GOLD] Gold Adjacency for Coast, Lakes, and Navigable River tiles.'
WHERE Tag = 'LOC_PANTHEON_BONUS_15_DESCRIPTION';

-- 'God of the Forest' pantheon, +2 (from +1) gold on camps and woodcutters
UPDATE LocalizedText
SET Text = 'BBM : +2[icon:YIELD_GOLD] Gold on Camps and Woodcutters in Settlements with an Altar. Warehouse bonus.'
WHERE Tag = 'LOC_PANTHEON_BONUS_7_DESCRIPTION';

-- rename 'Stone circles' to 'Tom's private pantheon'
UPDATE LocalizedText
SET Text = 'Tom’s private pantheon'
WHERE Tag = 'LOC_PANTHEON_BONUS_16_NAME';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Legacy paths
--========================================================================================================================

-- culture legacy path requires 2,4,6 wonders instead of 2,4,7
UPDATE LocalizedText
SET Text = 'BBM : House 6 World Wonders in your empire.'
WHERE Tag = 'LOC_LEGACY_PATH_ANTIQUITY_CULTURE_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Independent people
--========================================================================================================================

-- culture, +1 culture per suized city on monuments (from +2)
UPDATE LocalizedText
SET Text = 'BBM : +1[icon:YIELD_CULTURE] Culture to Monuments for every City-State you are Suzerain of.'
WHERE Tag = 'LOC_CITY_STATE_BONUS_ANTIQUITY_7_DESCRIPTION'
--========================================================================================================================
--========================================================================================================================