--========================================================================================================================
-- Religion beliefs
--========================================================================================================================
-- "Icons" reliquary belief only gives 1 relic instead of 2
UPDATE ModifierArguments
SET Value = 1
WHERE ModifierId = "ATTACH_RELIC_CITY_STATE" and Name = "Amount";

-- "Reincarnation" belief only gives 0.5 science per tropical instead of 2
UPDATE ModifierArguments
SET Value = 0.5
WHERE ModifierId = "ATTACH_TROPICAL_CITIES_FOLLOWING_SCIENCE" and Name = "Amount";

-- "Shamanism" belief only gives 0.5 culture per tundra instead of 2
UPDATE ModifierArguments
SET Value = 0.5
WHERE ModifierId = "ATTACH_TUNDRA_CITIES_FOLLOWING_CULTURE" and Name = "Amount";

-- "Desert Faith" belief only gives 1 gold per desert instead of 2
UPDATE ModifierArguments
SET Value = 1
WHERE ModifierId = "ATTACH_DESERT_CITIES_FOLLOWING_GOLD" and Name = "Amount";

-- "Sacred Herds" belief only gives 0.5 science per grassland instead of 1
UPDATE ModifierArguments
SET Value = 0.5
WHERE ModifierId = "ATTACH_GRASSLAND_CITIES_FOLLOWING_SCIENCE" and Name = "Amount";

-- "Sky Gods" belief only gives 0.5 culture per plains instead of 1
UPDATE ModifierArguments
SET Value = 0.5
WHERE ModifierId = "ATTACH_PLAINS_CITIES_FOLLOWING_SCIENCE" and Name = "Amount";
--========================================================================================================================
--========================================================================================================================

