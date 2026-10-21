-- Celestial Treasure Keeper (#8110). Its summon spell 93417 ships the generic companion text, while
-- the Treasure Keeper's 985356 says what both pets do (mod-treasure-keeper treats them alike: banker
-- flag, same High-Risk/War Mode refusal). Give 93417 the same description so the action bar and
-- the companion list show the bank.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (93417);
INSERT INTO `coa_client_spell_description` (`ID`,`Description`,`ToolTip`) VALUES
(93417,'右键点击以召唤并解散你的伙伴，在安全区域内可充当便携银行。无法在高风险开放世界中召唤。',NULL);
