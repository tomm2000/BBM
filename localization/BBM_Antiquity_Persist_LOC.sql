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

-- max 1 player instances for Uwaybil K'uh and K'uh Nah buildings
UPDATE LocalizedText
SET Text = 'BBM : +3[icon:YIELD_HAPPINESS] Happiness. +1[icon:YIELD_CULTURE] Culture Adjacency for Quarters and Wonders. Can only be built once per empire. Mayan Unique Happiness Building. Ageless.'
WHERE Tag = 'LOC_BUILDING_JALAW_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'BBM : +4[icon:YIELD_SCIENCE] Science. +2[icon:YIELD_SCIENCE] Science if placed on Vegetation. +1[icon:YIELD_SCIENCE] Science Adjacency for Wonders. Can only be built once per empire. Mayan Unique Science Building. Ageless.'
WHERE Tag = 'LOC_BUILDING_KUH_NAH_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Missisipi changes
--========================================================================================================================
-- Potkop UI: no base gold, instead gets +2 food +2 gold from adjacent resources
UPDATE LocalizedText
SET Text = 'BBM :+2[icon:YIELD_GOLD] Gold and +2[icon:YIELD_FOOD] Food for each adjacent Resource. Mississippian Unique Improvement. Ageless. Does not remove Warehouse bonuses on a tile. Must be placed on Flat Terrain. Cannot be placed adjacent to another Potkop.'
WHERE Tag = 'LOC_IMPROVEMENT_POTKOP_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================


--========================================================================================================================
-- Independent people
--========================================================================================================================
-- economic, emporium can only be placed on flat terrain
UPDATE LocalizedText
SET Text = 'BBM : +2[icon:YIELD_GOLD] Gold. +2[icon:YIELD_GOLD] Gold in Cities if they have at least one Resource assigned to them. City-State Unique Improvement. Does not remove Warehouse bonuses on a tile. Must be placed on Flat Terrain. Cannot be placed adjacent to another Emporium.'
WHERE Tag = 'LOC_IMPROVEMENT_SOUQ_DESCRIPTION';

UPDATE LocalizedText
SET Text = 'BBM : +2[icon:YIELD_GOLD] Gold in Cities if they have at least one Resource assigned to them. City-State Unique Improvement. Does not remove Warehouse bonuses on a tile. Must be placed on Flat Terrain. Cannot be placed adjacent to another Emporium.'
WHERE Tag = 'LOC_IMPROVEMENT_SOUQ_TOOLTIP';
--========================================================================================================================
--========================================================================================================================
