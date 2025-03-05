--========================================================================================================================
-- Ada Lovelace
--========================================================================================================================
-- cities receive +1 (from +1) science when you complete a civic mastery
UPDATE LocalizedText
SET Text = 'BBM : Cities receive +1 [icon:YIELD_SCIENCE] Science per Age when you complete a Civic Mastery. This resets at the start of each age. Gain [icon:YIELD_CULTURE] Culture equal to 50% of your total [icon:YIELD_SCIENCE] Science per turn when you complete a Technology Mastery.'
WHERE Tag = 'LOC_LEADER_ADA_LOVELACE_DESCRIPTION';

UPDATE LocalizedText
SET Text = '[LIST][LI]BBM : Cities receive +1[icon:YIELD_SCIENCE] Science per Age when you complete a Civic Mastery. This resets at the start of each age. [LI]Gain [icon:YIELD_CULTURE] Culture equal to 50% of your total [icon:YIELD_SCIENCE] Science per turn when you complete a Technology Mastery.[/LIST]'
WHERE Tag = 'LOC_TRAIT_LEADER_ADA_LOVELACE_ABILITY_DESCRIPTION';
--========================================================================================================================
--========================================================================================================================
