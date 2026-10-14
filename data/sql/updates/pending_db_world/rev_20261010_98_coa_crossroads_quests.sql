-- Crossroads (The Barrens) Ascension quests 255078-255083 and their NPCs, restored from Ascension captures.
-- Quests: client quest cache, conquest-of-azeroth mode, captured 2026-09-10 (hertigservices/ascension-data); paragraph
-- breaks from the Dawnrise quest cache capture (2026-09-01). NPCs: client creature cache, same mode and date.
-- Givers and enders follow the quest texts and NextQuestInChain. Recorded on live realms (YouTube): reward texts of
-- 255082 (PrimitiveWoW Part 12, 2026-08-08, 22:12) and 255083 (Part 13, 2026-08-11, 09:00), Raj'iri and Naj'iri's
-- exchange (Part 12, 01:02; Part 13, 10:04 and 35:00), Voltzix Sprocketpop level 21 Orgrimmar (Part 12, 22:16)
-- and Rhuna level 35 Orgrimmar (JohnGamingFuntime, 2026-07-07, 17:44). Spawns stand on the quests' client
-- QuestSuperTrack/SuperTrack points (patch-M, identical in the server DBC), facing the town centre (inferred). The
-- 255080 ender is Raj'iri: its "Taz'iri" turn-in point 21368 lies 0.1 yd from Raj'iri's point 21366. Raj'iri, Martin
-- and Brumbof take Rhuna's and Voltzix's Orgrimmar faction (inferred). Quest item drops use the 80% chance of the
-- Barrens quest drops from the mobs the quest texts name, and Brumbof hands out the drumstick through a gossip option
-- (both inferred, no capture). Naj'iri takes her sister's faction. The client has none of the captured displays except
-- Brumbof's 2129, so the others use stand-ins from the client (captured display in brackets): Raj'iri 4087 (112912) and
-- Naj'iri 4089 (112911), troll women; Rhuna 2127 (256406), Una's tauren leatherworker; Martin Lesterfield 1574
-- (112978), a Forsaken merchant; Voltzix Sprocketpop 10472 (919573), Roxxik's goblin engineer. Draft: Naj'iri's spawn
-- and the other NPCs' levels are not restored yet.

INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `RewardNextQuest`,
  `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `Flags`, `RewardItem1`, `RewardAmount1`, `RewardItem2`,
  `RewardAmount2`, `RewardFactionID1`, `RewardFactionValue1`, `LogTitle`, `LogDescription`, `QuestDescription`,
  `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`,
  `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredItemId1`, `RequiredItemId2`,
  `RequiredItemCount1`, `RequiredItemCount2`)
VALUES
(255078, 2, 13, 9, 17, 255079, 5, 600, 405, 8, 375250, 100, 1397885, 1, 76, 5, '凭感觉演奏', '拉吉里想和她的姐妹跳舞，但纳吉里没有心情。也许来点音乐会让她站起来。从科尔卡牧马者和科尔卡风暴者那里收集一根半人马风笛。', '啊，今天我感觉到了骨头里的节奏，兄弟！灵魂让我的脚在轻敲，让我的心在打鼓！$B$B但我可怜的姐妹……她从日出起就在阴影里郁郁寡欢。不笑，不摇，连哼都不哼一声。这不对啊。$B$B我们需要的是音乐！$B$B我一直在想……附近那些半人马营地？他们总是有那些召唤闪电的法师整天吟唱、跺脚。他们肯定有乐器放在那里。', '', '返回十字路口找拉吉里。', 0, 0, 0, 0, 0, 0, 355118, 0, 1, 0),
(255079, 2, 15, 11, 17, 255080, 5, -300, 0, 8, 375250, 100, 1397885, 1, 76, 5, '寻找节奏', '也许笛子是错误的乐器。收集 5 张刺鬃鬣狗皮、1 张贫瘠之地长颈鹿皮和 3 银币。然后把它们交给乌娜制作一面鼓。', '啊……所以笛子还不够激发她的精神。遗憾啊，兄弟。它唱得甜美，但她的心依然沉重。$B$B不过——我们不会放弃！不，不，我们只是需要更强的东西。更响亮的东西……一面鼓！对，就是这样！$B$B制皮匠鲁娜如果能拿到合适的材料，就能帮我们缝制一面……你愿意为我可怜的老姐妹做这件事吗？', '', '把材料连同 3 银币作为报酬交给贫瘠之地的鲁娜。', 0, 0, 0, 0, 0, 0, 355119, 355120, 5, 1),
(255080, 2, 15, 11, 17, 0, 4, 600, 405, 8, 375250, 100, 1397885, 1, 76, 4, '跟着节拍起舞', '牛头人旅店里已经开了一段时间的派对，很多人都在跳舞。问问鼓手布伦博夫是否有备用的鼓槌。获取鼓槌并连同鼓一起交给塔兹里。', '这面鼓可能是整个卡利姆多最好的，但没有鼓槌或木槌敲击它……$B$B在你离开之前，看看路对面的旅店，鼓手可能有多余的鼓槌放在那里。', '', '返回十字路口找塔兹里。', 0, 0, 0, 0, 0, 0, 355122, 0, 1, 0),
(255081, 2, 11, 7, 17, 0, 5, 600, 405, 8, 375250, 100, 1397885, 1, 76, 5, '理解经文', '听闻灼刃教派的力量后，马丁要求你从灼刃侍僧和灼刃打手那里取回一些他们的恶魔经文，以便他研究并或许能学到一些他们力量的东西。', '啊！多么及时的时机！$B$B我急需一位能干的助手！对，对……你正合适。$B$B灼刃教徒已经躲到了北边的那座山上，我想解读他们的经文！$B$B我不在乎你怎么弄到手，把他们的文字带给我，这样我——我们就能为已所用，驾驭他们的力量！', '', '返回十字路口找马丁·莱斯特菲尔德。', 0, 0, 0, 0, 0, 0, 355123, 0, 8, 0),
(255082, 2, 14, 10, 17, 255083, 5, 600, 405, 8, 375250, 100, 1397885, 1, 76, 5, '消灭竞争对手', '沃兹克斯·斯普洛克波普想让你杀死北边淤泥场的热砂财团势力。', '你知道什么对生意不好吗？其他地精也在做生意！$B$B尤其是在一块我正想用的完美淤泥场上！$B$B热砂财团本来就和部落关系不好。其实和谁都关系不好。我都不知道他们到处树敌是怎么赚到钱的。$B$B你为什么不去把他们干掉，我得到淤泥场，你们的城镇周围少了敌对势力，大家都开心！', '', '返回十字路口找沃兹克斯·斯普洛克波普。', 3282, 3284, 3285, 6, 6, 6, 0, 0, 0, 0),
(255083, 2, 16, 12, 17, 0, 5, 600, 405, 8, 375250, 100, 1397885, 1, 76, 5, '歼灭竞争对手', '沃兹克斯·斯普洛克波普想让你杀死北边巨石矿洞的热砂财团势力。', '热砂财团的问题在于，他们无处不在！$B$B现在他们跑到我的矿洞里了！一块完美的、充满珍贵宝石的矿洞，他们居然决定据为己有！$B$B你已经证明了你很擅长把那些人打压下去，去那个矿洞，像上次那样干就对了！', '', '返回十字路口找沃兹克斯·斯普洛克波普。', 3283, 3286, 0, 8, 8, 0, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `QuestType` = VALUES(`QuestType`), `QuestLevel` = VALUES(`QuestLevel`),
    `MinLevel` = VALUES(`MinLevel`), `QuestSortID` = VALUES(`QuestSortID`),
    `RewardNextQuest` = VALUES(`RewardNextQuest`), `RewardXPDifficulty` = VALUES(`RewardXPDifficulty`),
    `RewardMoney` = VALUES(`RewardMoney`), `RewardMoneyDifficulty` = VALUES(`RewardMoneyDifficulty`),
    `Flags` = VALUES(`Flags`), `RewardItem1` = VALUES(`RewardItem1`), `RewardAmount1` = VALUES(`RewardAmount1`),
    `RewardItem2` = VALUES(`RewardItem2`), `RewardAmount2` = VALUES(`RewardAmount2`),
    `RewardFactionID1` = VALUES(`RewardFactionID1`), `RewardFactionValue1` = VALUES(`RewardFactionValue1`),
    `LogTitle` = VALUES(`LogTitle`), `LogDescription` = VALUES(`LogDescription`),
    `QuestDescription` = VALUES(`QuestDescription`), `AreaDescription` = VALUES(`AreaDescription`),
    `QuestCompletionLog` = VALUES(`QuestCompletionLog`), `RequiredNpcOrGo1` = VALUES(`RequiredNpcOrGo1`),
    `RequiredNpcOrGo2` = VALUES(`RequiredNpcOrGo2`), `RequiredNpcOrGo3` = VALUES(`RequiredNpcOrGo3`),
    `RequiredNpcOrGoCount1` = VALUES(`RequiredNpcOrGoCount1`),
    `RequiredNpcOrGoCount2` = VALUES(`RequiredNpcOrGoCount2`),
    `RequiredNpcOrGoCount3` = VALUES(`RequiredNpcOrGoCount3`), `RequiredItemId1` = VALUES(`RequiredItemId1`),
    `RequiredItemId2` = VALUES(`RequiredItemId2`), `RequiredItemCount1` = VALUES(`RequiredItemCount1`),
    `RequiredItemCount2` = VALUES(`RequiredItemCount2`);

DELETE FROM `quest_template_addon` WHERE `ID` IN (255079,255080,255083);
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`) VALUES
(255079, 255078),
(255080, 255079),
(255083, 255082);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (255082,255083);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES
(255082, '他们死了？很好！我就知道能指望你！'),
(255083, '听起来那是最后一批了！其实，我听说他们正在打包回……某个地方，我没太注意。$B$B重要的是他们离开了，说什么危险开支之类的。');

INSERT INTO `creature_template` (`entry`, `name`, `subname`, `npcflag`, `type`, `type_flags`, `HealthModifier`,
  `ManaModifier`)
VALUES
(41719, '拉吉里', NULL, 2, 7, 0, 1.032, 1),
(741719, '纳吉里', NULL, 0, 7, 0, 0.99072, 1),
(41739, '鲁娜', '制皮训练师', 2, 7, 134217728, 1.136, 1),
(741722, '马丁·莱斯特菲尔德', '卷轴与奇物', 2, 7, 0, 1.136, 1),
(753513, '布伦博夫·布拉姆斯图姆', NULL, 0, 7, 0, 2.048, 1),
(753524, '沃兹克斯·斯普洛克波普', '工程学训练师', 2, 7, 0, 2.048, 1)
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `subname` = VALUES(`subname`), `npcflag` = VALUES(`npcflag`),
    `type` = VALUES(`type`), `type_flags` = VALUES(`type_flags`), `HealthModifier` = VALUES(`HealthModifier`),
    `ManaModifier` = VALUES(`ManaModifier`);

UPDATE `creature_template` SET `minlevel` = 35, `maxlevel` = 35, `faction` = 29 WHERE `entry` = 41739;
UPDATE `creature_template` SET `minlevel` = 21, `maxlevel` = 21, `faction` = 29 WHERE `entry` = 753524;
UPDATE `creature_template` SET `faction` = 29 WHERE `entry` IN (41719,741719,741722,753513);
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` IN (41719,741719,41739,741722,753513,753524);
UPDATE `creature_template` SET `npcflag` = 1, `gossip_menu_id` = 9010700, `AIName` = 'SmartAI' WHERE `entry` = 753513;

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (41719,741719,41739,741722,753513,753524);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(41719, 0, 4087, 1, 1),
(741719, 0, 4089, 1, 1),
(41739, 0, 2127, 1, 1),
(741722, 0, 1574, 1, 1),
(753513, 0, 2129, 1, 1),
(753524, 0, 10472, 1, 1);

DELETE FROM `creature_queststarter` WHERE `quest` IN (255078,255079,255080,255081,255082,255083);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(41719, 255078),
(41719, 255079),
(41739, 255080),
(741722, 255081),
(753524, 255082),
(753524, 255083);

DELETE FROM `creature_questender` WHERE `quest` IN (255078,255079,255080,255081,255082,255083);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(41719, 255078),
(41739, 255079),
(41719, 255080),
(741722, 255081),
(753524, 255082),
(753524, 255083);

DELETE FROM `creature` WHERE `guid` BETWEEN 9010700 AND 9010704;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`)
VALUES
(9010700, 41719, 1, 0, 0, 1, 1, 0, -393.124, -2607.53, 96.351, 2.32863, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Crossroads: Raj''iri at SuperTrack 21366, turn-in of 255078 and 255080'),
(9010701, 753513, 1, 0, 0, 1, 1, 0, -546.686, -2705.27, 96.037, 1.57543, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Crossroads: Brumbof Bramstum by the lodge drums near SuperTrack 21367, objective of 255080 in the tauren lodge'),
(9010702, 41739, 1, 0, 0, 1, 1, 0, -531.499, -2639.09, 96.066, 4.26463, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Crossroads: Rhuna at SuperTrack 21372, turn-in of 255079'),
(9010703, 741722, 1, 0, 0, 1, 1, 0, -464.983, -2536.49, 115.152, 4.766, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Crossroads: Martin Lesterfield at SuperTrack 21374, turn-in of 255081'),
(9010704, 753524, 1, 0, 0, 1, 1, 0, -354.925, -2657.8, 96.201, 2.883, 300, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, 'CoA Crossroads: Voltzix Sprocketpop at SuperTrack 21379, turn-in of 255083');

DELETE FROM `creature_text` WHERE `CreatureID` IN (41719,741719);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Probability`, `comment`) VALUES
(41719, 0, 0, '现在想跳舞了吗？', 12, 100, '拉吉里 - 邀请纳吉里跳舞'),
(41719, 1, 0, '现在怎么样，老兄？', 12, 100, '拉吉里 - 再次邀请纳吉里'),
(741719, 0, 0, '不太想，老兄……', 12, 100, '纳吉里 - 拒绝'),
(741719, 1, 0, '好吧，就跳一会儿……', 12, 100, '纳吉里 - 同意');

DELETE FROM `creature_loot_template` WHERE `Item` IN (355118,355119,355120,355123);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(3272, 355118, 0, 80, 1, 1, 0, 1, 1, 'Kolkar Wrangler - Centaur Windflute (255078)'),
(3273, 355118, 0, 80, 1, 1, 0, 1, 1, 'Kolkar Stormer - Centaur Windflute (255078)'),
(4127, 355119, 0, 80, 1, 1, 0, 1, 1, 'Hecklefang Hyena - Hyena Skin (255079)'),
(3248, 355120, 0, 80, 1, 1, 0, 1, 1, 'Barrens Giraffe - Giraffe Leather (255079)'),
(3379, 355123, 0, 80, 1, 1, 0, 1, 1, 'Burning Blade Bruiser - Demonic Scripture (255081)'),
(3380, 355123, 0, 80, 1, 1, 0, 1, 1, 'Burning Blade Acolyte - Demonic Scripture (255081)');

DELETE FROM `npc_text` WHERE `ID` = 9010700;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `Probability0`) VALUES
(9010700, '这间旅店里的节拍永不停歇，$c。', '这间旅店里的节拍永不停歇，$c。', 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` = 9010700;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(9010700, 9010700);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 9010700;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`) VALUES
(9010700, 0, 0, '你有多余的鼓槌可以匀给我吗？', 0, 1, 1, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 9010700;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 9010700, 0, 0, 0, 9, 0, 255080, 0, 0, 0, 0, 0, '', 'Brumbof Bramstum - drumstick option only while Dancing to the Beat is taken'),
(15, 9010700, 0, 0, 0, 2, 0, 355122, 1, 0, 1, 0, 0, '', 'Brumbof Bramstum - drumstick option only without a Drumstick');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 753513 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(753513, 0, 0, 1, 62, 0, 100, 0, 9010700, 0, 0, 0, 0, 0, 56, 355122, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Brumbof Bramstum - On Gossip Option 0 Selected - Add Drumstick'),
(753513, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Brumbof Bramstum - Linked - Close Gossip');
