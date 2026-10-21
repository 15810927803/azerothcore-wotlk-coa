-- House of Nobles: the footage and realm chat give the answering lines to Lord Aldous Bruck (three) and Countess Cecilia
-- Clessington (one), in the order Servin, Bruck, Bruck, Clessington, Servin, Servin, Bruck (0MqPfOJqF8w 7:36, chat
-- "Lord Aldous Bruck says"). #8051 moved them to Feandor and Mortel; this keeps its voiced timing on the right speakers.
DELETE FROM `creature_text` WHERE `CreatureID` IN (164217, 164218);
DELETE FROM `creature_text` WHERE (`CreatureID` = 164211 AND `GroupID` IN (0, 1, 2)) OR (`CreatureID` = 164212 AND `GroupID` = 0);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(164211, 0, 0, '而我相信，我们也已经表明了我们的立场，达伦加尔领主。', 12, 0, 100, 0, 0, 215201, 0, 0, 'Lord Aldous Bruck'),
(164211, 1, 0, '即使意见一致，本议会也不能在没有冷泉家族同意的情况下，就率军开进斯卡德。', 12, 0, 100, 0, 0, 215202, 0, 0, 'Lord Aldous Bruck'),
(164211, 2, 0, '你是在白费力气，找错了树，达伦加尔领主。我们的法律存在自有其道理。本次会议到此结束。', 12, 0, 100, 0, 0, 215206, 0, 0, 'Lord Aldous Bruck'),
(164212, 0, 0, '而且请记住，统治斯卡德的是冷泉家族，而不是你。', 12, 0, 100, 0, 0, 215203, 0, 0, 'Countess Cecilia Clessington');

-- Voiced lines shipped in the client (sound\scadeald\*.wav, SoundEntries 215207-215226), matched to their chat lines by
-- transcript: Deirdre (bruja1, 4, 5), Lady Serenya Coldmere (senerya1, 2, 5-8) and the Sicklight loa story (loa1-7).
UPDATE `creature_text` SET `Sound` = 215212 WHERE `CreatureID` = 164005 AND `GroupID` = 3 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215213 WHERE `CreatureID` = 164005 AND `GroupID` = 4 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215216 WHERE `CreatureID` = 164005 AND `GroupID` = 5 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215217 WHERE `CreatureID` = 164005 AND `GroupID` = 6 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215218 WHERE `CreatureID` = 164005 AND `GroupID` = 7 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215219 WHERE `CreatureID` = 164005 AND `GroupID` = 8 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215207 WHERE `CreatureID` = 164355 AND `GroupID` = 1 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215210 WHERE `CreatureID` = 164355 AND `GroupID` = 2 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215211 WHERE `CreatureID` = 164355 AND `GroupID` = 3 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215220 WHERE `CreatureID` = 164806 AND `GroupID` = 0 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215221 WHERE `CreatureID` = 164806 AND `GroupID` = 1 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215222 WHERE `CreatureID` = 164806 AND `GroupID` = 2 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215223 WHERE `CreatureID` = 164806 AND `GroupID` = 3 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215224 WHERE `CreatureID` = 164806 AND `GroupID` = 4 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215225 WHERE `CreatureID` = 164806 AND `GroupID` = 5 AND `ID` = 0;
UPDATE `creature_text` SET `Sound` = 215226 WHERE `CreatureID` = 164806 AND `GroupID` = 6 AND `ID` = 0;
