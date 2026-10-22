-- CoA Westfall: Protector Gariel (490) had no progress or reward text for 254042 'Wanted: Lenore the Hoarder' and
-- 254043 'Take It Back', so both windows opened empty. No capture of the original lines exists (the quest cache
-- does not store them); these texts are newly written to match the quests' descriptions.
DELETE FROM `quest_request_items` WHERE `ID` IN (254042, 254043);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(254042, 0, 0, '莱诺尔还逍遥法外？那商队就还在流血。找到她，$N，别让她再次溜走。', 0),
(254043, 0, 0, '旧塔那边有收获吗？我们每等一晚，迪菲亚就多抢走一点我们仅剩的东西。', 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (254042, 254043);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(254042, 0, 0, 0, 0, 0, 0, 0, 0, '囤积者莱诺尔，终于死了。你根本不知道她让这支民兵队度过了多少个不眠之夜。$B$B她死了，迪菲亚就失去了最好的补给者之一，我们的商队也许终于能抵达哨站了。西部荒野欠你一份情，$N。', 0),
(254043, 0, 0, 0, 0, 0, 0, 0, 0, '食物、绷带、工具……这比我敢奢望的还要多。你直捣他们的巢穴，还把它们带了回来。$B$B这能让民兵队再撑一阵子。迪菲亚从我们这儿抢走的东西，你夺了回来。谢谢你，$N。', 0);
