--========================================================================================================================
-- Natural wonders
--========================================================================================================================

-- Uluru: from +2 culture on desert tiles to +1 culture on desert tiles
UPDATE LocalizedText
SET Text = 'BBM : +6[icon:YIELD_HAPPINESS] Happiness per Age. +1[icon:YIELD_CULTURE] Culture on Desert Terrain in this Settlement.'
WHERE Tag = 'LOC_FEATURE_ULURU_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'BBM : +1[icon:YIELD_CULTURE] Culture on Desert Terrain in this Settlement.'
WHERE Tag = 'LOC_FEATURE_ULURU_TOOLTIP';

-- ZHANGJIAJIE: from +2 culture on rough terrain tiles to +1 culture on rough terrain tiles
UPDATE LocalizedText
SET Text = 'BBM : +2[icon:YIELD_HAPPINESS] Happiness and +4[icon:YIELD_PRODUCTION] Production per Age. +2[icon:YIELD_HAPPINESS] Culture on Rough Terrain in this Settlement.'
WHERE Tag = 'LOC_FEATURE_ZHANGJIAJIE_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'BBM : +2[icon:YIELD_HAPPINESS] Culture on Rough Terrain in this Settlement.'
WHERE Tag = 'LOC_FEATURE_ZHANGJIAJIE_TOOLTIP';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Egypt Changes
--========================================================================================================================
-- Necropolis unique quarter: 200 (from 100) gold (on standard speed) when a wonder is built in the city
UPDATE LocalizedText
SET Text = 'BBM : Egyptian Unique Quarter. Created by constructing the Mastaba and Mortuary Temple in the same District. Grants 200[icon:YIELD_GOLD] Gold (on Standard Speed) when any Wonder is completed in this City.'
WHERE Tag = 'LOC_QUARTER_NECROPOLIS_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'BBM : Grants 200[icon:YIELD_GOLD] Gold (on Standard Speed) when any Wonder is completed in this City.'
WHERE Tag = 'LOC_QUARTER_NECROPOLIS_TOOLTIP';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Maya changes
--========================================================================================================================
-- Uwaybil K'uh unique quarter: 10% production (from 15%) on tech completed
UPDATE LocalizedText
SET Text = 'BBM : Maya Unique Quarter. Created by constructing the Jalaw and K’uh Nah in the same District. Every time you research a Technology, this Settlement gains[icon:YIELD_PRODUCTION] Production equal to 10% of its cost.'
WHERE Tag = 'LOC_QUARTER_UWAYBIL_KUH_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'BBM : Every time you research a Technology, this Settlement gains[icon:YIELD_PRODUCTION] Production equal to 10% of its cost.'
WHERE Tag = 'LOC_QUARTER_UWAYBIL_KUH_TOOLTIP';

-- increased gold maintenance for Uwaybil K'uh and K'uh Nah buildings (10 gold instead of 2)
UPDATE LocalizedText
SET Text = 'BBM : +3[icon:YIELD_HAPPINESS] Happiness. +1[icon:YIELD_CULTURE] Culture Adjacency for Quarters and Wonders. Heavy [icon:YIELD_GOLD] gold maintenance. Mayan Unique Happiness Building. Ageless.'
WHERE Tag = 'LOC_BUILDING_JALAW_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'BBM : +3[icon:YIELD_SCIENCE] Science. +2[icon:YIELD_SCIENCE] Science if placed on Vegetation. +1[icon:YIELD_SCIENCE] Science Adjacency for Wonders. Heavy [icon:YIELD_GOLD] gold maintenance. Mayan Unique Science Building. Ageless.'
WHERE Tag = 'LOC_BUILDING_KUH_NAH_DESCRIPTION'

--========================================================================================================================
--========================================================================================================================
