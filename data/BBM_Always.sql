--========================================================================================================================
-- Default host settings
--========================================================================================================================
UPDATE Parameters
SET DefaultValue = 'DIFFICULTY_DEITY'
WHERE parameterId = 'PlayerDifficulty';

UPDATE Parameters
SET DefaultValue = 'DIFFICULTY_DEITY'
WHERE parameterId = 'Difficulty';

-- UPDATE Parameters
-- SET DefaultValue = '0'
-- WHERE parameterId = 'CrisesEnabled';

-- UPDATE Parameters
-- SET DefaultValue = MAPSIZE_STANDARD
-- WHERE parameterId = 'MapSize';

UPDATE Parameters
SET DefaultValue = 'MAPSIZE_STANDARD', Domain = 'DistantLandsMapSizes'
WHERE parameterId = 'MapSize';

UPDATE Parameters
SET DefaultValue = '1'
WHERE parameterId = 'PrivateGame';

INSERT INTO "Rulesets"
("RulesetType","Name","Description","LongDescription","SupportsSinglePlayer","SupportsMultiPlayer","SortIndex","IsScenario","GameCore")
VALUES
('BBM_RULESET_FUNKY','BBM_LOC_RULESET_FUNKY_NAME','BBM_LOC_RULESET_FUNKY_DESCRIPTION',NULL,1,1,1,0,'Base');

INSERT INTO "Rulesets"
("RulesetType","Name","Description","LongDescription","SupportsSinglePlayer","SupportsMultiPlayer","SortIndex","IsScenario","GameCore")
VALUES
('BBM_RULESET_BETA','BBM_LOC_RULESET_BETA_NAME','BBM_LOC_RULESET_BETA_DESCRIPTION',NULL,1,1,1,0,'Base');