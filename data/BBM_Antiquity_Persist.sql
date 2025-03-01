--========================================================================================================================
-- Natural wonders
--========================================================================================================================

-- Uluru: from +2 culture on desert tiles to +1 culture on desert tiles
UPDATE Feature_CityYields
SET YieldChange = 1
WHERE Feature_CityYieldType = 'ULURU_DESERT_CULTURE';

-- ZHANGJIAJIE: from +2 culture on rough terrain tiles to +1 culture on rough terrain tiles
UPDATE Feature_CityYields
SET YieldType = 'YIELD_CULTURE'
WHERE Feature_CityYieldType = 'ZHANGJIAJIE_ROUGH_CULTURE'
--========================================================================================================================
--========================================================================================================================