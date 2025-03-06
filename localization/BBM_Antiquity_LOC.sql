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
WHERE Tag = 'LOC_CITY_STATE_BONUS_ANTIQUITY_7_DESCRIPTION';

-- culture, +2 (from +1) Social Policy slot.
UPDATE LocalizedText
SET Text = 'BBM : +2 Social Policy slot.'
WHERE Tag = 'LOC_CITY_STATE_BONUS_ANTIQUITY_9_DESCRIPTION';

-- economic, lapis lazuli, +6 gold (from +4 prod) and +25% gold (from +5% gold) in the city
UPDATE LocalizedText
SET Text = 'BBM : Receive the Lapis Lazuli Resource in the Capital. Lapis Lazuli provides +6[icon:YIELD_GOLD] Gold and +25%[icon:YIELD_GOLD] Gold.'
WHERE Tag = 'LOC_CITY_STATE_BONUS_ANTIQUITY_13_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'BBM : +6[icon:YIELD_GOLD] Gold, +25%[icon:YIELD_GOLD] Gold (Not Tradeable)'
WHERE Tag = 'LOC_ANT_RESOURCE_LAPIS_LAZULI_TOOLTIP';

-- economic, +2 gold (from +1) on gold buildings for each suized city state
UPDATE LocalizedText
SET Text = 'BBM : Gold buildings receive +2[icon:YIELD_GOLD] Gold for every City-State you are Suzerain of.'
WHERE Tag = 'LOC_CITY_STATE_BONUS_ANTIQUITY_12_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Maya changes
--========================================================================================================================
-- civic modifier: The Altar gains a +1 Happiness (from 1 Science) Adjacency from Vegetated Terrain.
UPDATE LocalizedText
SET Text = 'BBM : The Altar gains a +1[icon:YIELD_HAPPINESS] Happiness Adjacency from Vegetated Terrain.'
WHERE Tag = 'LOC_MOD_CHAAC_ALTAR_VEGETATION_ADJACENCY_DESCRIPTION';

-- the calendar round bonuses now give 10% science/culture on masteries only
UPDATE LocalizedText
SET Text = 'BBM : After researching a Technology mastery, gain[icon:YIELD_CULTURE] Culture equal to 10% of its cost.'
WHERE Tag = 'LOC_MOD_CALENDAR_ROUND_CULTURE_FOR_TECH_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'BBM : After studying a Civic mastery, gain[icon:YIELD_SCIENCE] Science equal to 10% of its cost.'
WHERE Tag = 'LOC_MOD_CALENDAR_ROUND_SCIENCE_FOR_CIVIC_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Maurya changes
--========================================================================================================================
-- second pantheon delayed to the last unique civic 
UPDATE LocalizedText
SET Text = 'BBM : You can choose an additional Pantheon after unlocking Mantriparishad.'
WHERE Tag = 'LOC_CIVILIZATION_MAURYA_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'BBM : [LIST][LI]You can choose an additional [B]Pantheon [/B]after unlocking [B]Mantriparishad[/B].[LI][B]+30% [icon:YIELD_PRODUCTION] Production [/B]towards constructing [B]Sanchi Stupa[/B].[/LIST]'
WHERE Tag = 'LOC_TRAIT_MAURYA_ABILITY_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Resources
--========================================================================================================================
-- Wine: happiness in celebration: 5% (from 10%)
UPDATE LocalizedText
SET Text = 'BBM : +2[icon:YIELD_HAPPINESS] Happiness in the Capital and +5%[icon:YIELD_CULTURE] Culture when in a Celebration'
WHERE Tag = 'LOC_ANT_RESOURCE_WINE_TOOLTIP';
--========================================================================================================================
--========================================================================================================================
