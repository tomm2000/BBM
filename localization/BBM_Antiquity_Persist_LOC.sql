--========================================================================================================================
-- Natural wonders
--========================================================================================================================

-- Uluru: from +2 culture on desert tiles to +1 culture on desert tiles
UPDATE LocalizedText
SET Text = 'BBM : +6[icon:YIELD_HAPPINESS] Happiness per Age. +1[icon:YIELD_CULTURE] Culture on Desert Terrain in this Settlement.'
WHERE Tag = 'LOC_FEATURE_ULURU_DESCRIPTION';

-- ZHANGJIAJIE: from +2 culture on rough terrain tiles to +1 culture on rough terrain tiles
UPDATE LocalizedText
SET Text = 'BBM : +2[icon:YIELD_HAPPINESS] Happiness and +4[icon:YIELD_PRODUCTION] Production per Age. +1[icon:YIELD_HAPPINESS] Culture on Rough Terrain in this Settlement.'
WHERE Tag = 'LOC_FEATURE_ZHANGJIAJIE_DESCRIPTION'
--========================================================================================================================
--========================================================================================================================