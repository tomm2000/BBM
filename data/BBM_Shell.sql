--========================================================================================================================
-- Default host settings
--========================================================================================================================
-- UPDATE Parameters
-- SET DefaultValue = 'DIFFICULTY_DEITY'
-- WHERE parameterId = 'PlayerDifficulty';

-- UPDATE Parameters
-- SET DefaultValue = 'DIFFICULTY_DEITY'
-- WHERE parameterId = 'Difficulty';

-- UPDATE Parameters
-- SET DefaultValue = '0'
-- WHERE parameterId = 'CrisesEnabled';

UPDATE Parameters
SET SupportsLANMultiplayer = 0, SupportsInternetMultiplayer = 0
WHERE parameterId = 'MapSize';

UPDATE Parameters
SET SupportsLANMultiplayer = 0, SupportsInternetMultiplayer = 0
WHERE parameterId = 'MapSize';

INSERT INTO "Parameters"
("Key1","Key2","ParameterID","Name","Description","Domain","Hash","Array","DefaultValue","ConfigurationGroup","ConfigurationKey","DomainConfigurationKey","PossibleValuesConfigurationKey","ValueConfigurationKey","ValueNameConfigurationKey","ValueHashConfigurationKey","ValueDomainConfigurationKey","NameArrayConfigurationKey","GroupID","Hidden","ReadOnly","SupportsSinglePlayer","SupportsLANMultiplayer","SupportsInternetMultiplayer","IsUGC","ChangeableAfterGameStart","UxHint","SortIndex") VALUES 
(NULL,NULL,'MapSize','LOC_MAP_SIZE','LOC_MAPSIZE_DESCRIPTION','StandardMapSizes',1,0,'MAPSIZE_STANDARD','Map','SizeType',NULL,NULL,'SizeTypeName','SizeName',NULL,NULL,NULL,'MapOptions',0,0,0,1,1,0,0,NULL,220);

-- UPDATE Parameters
-- SET DefaultValue = '1'
-- WHERE parameterId = 'PrivateGame';
--========================================================================================================================
--========================================================================================================================

--========================================================================================================================
-- Custom rulesets
--========================================================================================================================
INSERT INTO "Rulesets"
("RulesetType","Name","Description","LongDescription","SupportsSinglePlayer","SupportsMultiPlayer","SortIndex","IsScenario","GameCore")
VALUES
('BBM_RULESET_FUNKY','BBM_LOC_RULESET_FUNKY_NAME','BBM_LOC_RULESET_FUNKY_DESCRIPTION',NULL,1,1,1,0,'Base');

INSERT INTO "Rulesets"
("RulesetType","Name","Description","LongDescription","SupportsSinglePlayer","SupportsMultiPlayer","SortIndex","IsScenario","GameCore")
VALUES
('BBM_RULESET_BETA','BBM_LOC_RULESET_BETA_NAME','BBM_LOC_RULESET_BETA_DESCRIPTION',NULL,1,1,1,0,'Base');
--========================================================================================================================
--========================================================================================================================
