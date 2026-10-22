-- Scroll of Retreat: Orgrimmar and Stormwind (#8272): the spells' text read "Returns you to the entrance of the Orgrimmar."
-- They now match their items and the Booty Bay stone.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (84288, 84289);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(84288, '将你传送回杜隆塔尔的奥格瑞玛。', NULL),
(84289, '将你传送回艾尔文森林的暴风城。', NULL);
