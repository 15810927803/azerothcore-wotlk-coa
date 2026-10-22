-- Stay a While (1660065): Bagamul Skyfang tells his story over gossip pages before the listen credit.
-- His option '<Stay a while and listen.>' (932516/0) credited the marker 162921 at once, with no story. It now
-- opens four pages; the first three continue with "What happened next?"-style options or offer
-- '<Skip the story.>', which credits 162921 at once. The last page's option credits 162921 and closes the gossip.
-- Every option shows only while 1660065 is taken.
--
-- WHERE EACH VALUE COMES FROM
--   greeting  npc_text 85189 and menu 932516 stay as rev_20260926_31 wrote them (cached greeting).
--   ids  gossip menus and npc_text 932517-932520: the next free ids in the 932515-932529 block rev_20260926_31
--     reserves for Razor Hill, whose highest id in use is 932516. Same-id npc_text follows rev_20260924_14.
--   flow  page chain as the report (#6035) describes: about three "what happened" options and a skip option.
--   texts  INFERRED, approved by the maintainer on 2026-10-20: all page and option texts. No source records
--     Bagamul's story (AscensionDB, CoA Tavern, client caches of all realms, addons, the db.exil.es dump and
--     Project Descension were searched). They follow his quest's own texts ('stay a while', the old orc who
--     murmurs as if to himself, 'Few bother to listen to this old orc') and his greeting on the Razor Hill tower.

DELETE FROM `npc_text` WHERE `ID` IN (932517, 932518, 932519, 932520);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`)
VALUES
(932517, '部落初次穿过黑暗之门时，我还只是个小崽子。到第二次战争结束时，我和大多数族人一样，坐在人类收容所的高墙之后，我心中的火焰早已冷却。$B$B我们在泥泞中躺了多年。后来，一位年轻的酋长砸开了收容所，古老的血脉重新记起了自由是什么滋味。', '部落初次穿过黑暗之门时，我还只是个小崽子。到第二次战争结束时，我和大多数族人一样，坐在人类收容所的高墙之后，我心中的火焰早已冷却。$B$B我们在泥泞中躺了多年。后来，一位年轻的酋长砸开了收容所，古老的血脉重新记起了自由是什么滋味。', 0, 0, 1),
(932518, '<巴加穆尔的目光飘向大海。>$B$B萨尔从人类手中夺来船只，带领我们向西，横渡无尽之海。风暴几乎让我们全军覆没。当我们终于抵达这片海岸时，大地赤红干燥，太阳像锤子一样砸下来。$B$B我们以酋长之父的名字，将这片土地命名为杜隆塔尔，并把它变成了我们自己的家园。', '<巴加穆尔的目光飘向大海。>$B$B萨尔从人类手中夺来船只，带领我们向西，横渡无尽之海。风暴几乎让我们全军覆没。当我们终于抵达这片海岸时，大地赤红干燥，太阳像锤子一样砸下来。$B$B我们以酋长之父的名字，将这片土地命名为杜隆塔尔，并把它变成了我们自己的家园。', 0, 0, 1),
(932519, '我们先建起这座塔，之后才建起第一间小屋。从这里，哨兵能同时看到道路、山丘和波浪，我在这座木台上站过许多班岗。$B$B大海并未保持平静。库尔提拉斯的船帆出现在地平线上，普罗德摩尔的士兵烧毁了我们建起的一切。他们的要塞仍矗立在海岸那边，提醒着人们，这里的和平是用鲜血换来的。', '我们先建起这座塔，之后才建起第一间小屋。从这里，哨兵能同时看到道路、山丘和波浪，我在这座木台上站过许多班岗。$B$B大海并未保持平静。库尔提拉斯的船帆出现在地平线上，普罗德摩尔的士兵烧毁了我们建起的一切。他们的要塞仍矗立在海岸那边，提醒着人们，这里的和平是用鲜血换来的。', 0, 0, 1),
(932520, '<老兽人沉默了好一会儿。>$B$B如今，年轻人匆匆经过这座塔，眼睛盯着奥格瑞玛和它背后的荣耀。让他们匆匆赶路吧。但总得有人记得，剃刀岭究竟为何存在。$B$B你耐心听了一个老兽人的回忆，$N。去吧。这个世界不会等我们中的任何一个。', '<老兽人沉默了好一会儿。>$B$B如今，年轻人匆匆经过这座塔，眼睛盯着奥格瑞玛和它背后的荣耀。让他们匆匆赶路吧。但总得有人记得，剃刀岭究竟为何存在。$B$B你耐心听了一个老兽人的回忆，$N。去吧。这个世界不会等我们中的任何一个。', 0, 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` IN (932517, 932518, 932519, 932520);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`)
VALUES
(932517, 932517),
(932518, 932518),
(932519, 932519),
(932520, 932520);

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (932516, 932517, 932518, 932519, 932520);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`)
VALUES
(932516, 0, 0, '<留下听听吧。>', 0, 1, 1, 932517, 0, 0, 0, '', 0),
(932517, 0, 0, '后来发生了什么？', 0, 1, 1, 932518, 0, 0, 0, '', 0),
(932517, 1, 0, '<跳过这段故事。>', 0, 1, 1, 0, 0, 0, 0, '', 0),
(932518, 0, 0, '然后又发生了什么？', 0, 1, 1, 932519, 0, 0, 0, '', 0),
(932518, 1, 0, '<跳过这段故事。>', 0, 1, 1, 0, 0, 0, 0, '', 0),
(932519, 0, 0, '那之后又发生了什么？', 0, 1, 1, 932520, 0, 0, 0, '', 0),
(932519, 1, 0, '<跳过这段故事。>', 0, 1, 1, 0, 0, 0, 0, '', 0),
(932520, 0, 0, '<感谢巴加穆尔的故事。>', 0, 1, 1, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (932516, 932517, 932518, 932519, 932520);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)
VALUES
(15, 932516, 0, 0, 0, 9, 0, 1660065, 0, 0, 0, 0, 0, '', 'show only while quest 1660065 taken'),
(15, 932517, 0, 0, 0, 9, 0, 1660065, 0, 0, 0, 0, 0, '', 'show only while quest 1660065 taken'),
(15, 932517, 1, 0, 0, 9, 0, 1660065, 0, 0, 0, 0, 0, '', 'show only while quest 1660065 taken'),
(15, 932518, 0, 0, 0, 9, 0, 1660065, 0, 0, 0, 0, 0, '', 'show only while quest 1660065 taken'),
(15, 932518, 1, 0, 0, 9, 0, 1660065, 0, 0, 0, 0, 0, '', 'show only while quest 1660065 taken'),
(15, 932519, 0, 0, 0, 9, 0, 1660065, 0, 0, 0, 0, 0, '', 'show only while quest 1660065 taken'),
(15, 932519, 1, 0, 0, 9, 0, 1660065, 0, 0, 0, 0, 0, '', 'show only while quest 1660065 taken'),
(15, 932520, 0, 0, 0, 9, 0, 1660065, 0, 0, 0, 0, 0, '', 'show only while quest 1660065 taken');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 162841 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES
(162841, 0, 0, 1, 62, 0, 100, 0, 932517, 1, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bagamul Skyfang - On Gossip 932517 Option 1 Selected - Close Gossip'),
(162841, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 162921, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bagamul Skyfang - Linked - Quest Credit Listen to Bagamul Skyfang (skipped on page 1)'),
(162841, 0, 2, 3, 62, 0, 100, 0, 932518, 1, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bagamul Skyfang - On Gossip 932518 Option 1 Selected - Close Gossip'),
(162841, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 162921, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bagamul Skyfang - Linked - Quest Credit Listen to Bagamul Skyfang (skipped on page 2)'),
(162841, 0, 4, 5, 62, 0, 100, 0, 932519, 1, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bagamul Skyfang - On Gossip 932519 Option 1 Selected - Close Gossip'),
(162841, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 162921, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bagamul Skyfang - Linked - Quest Credit Listen to Bagamul Skyfang (skipped on page 3)'),
(162841, 0, 6, 7, 62, 0, 100, 0, 932520, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bagamul Skyfang - On Gossip 932520 Option 0 Selected - Close Gossip'),
(162841, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 33, 162921, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Bagamul Skyfang - Linked - Quest Credit Listen to Bagamul Skyfang (story finished)');
