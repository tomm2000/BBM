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
WHERE Tag = 'LOC_QUARTER_NECROPOLIS_TOOLTIP'
--========================================================================================================================
--========================================================================================================================
