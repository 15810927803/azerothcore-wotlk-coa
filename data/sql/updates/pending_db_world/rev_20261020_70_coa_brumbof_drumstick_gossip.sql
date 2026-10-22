-- Brumbof Bramstum: live gossip pages, level and faction (#7422)
UPDATE `creature_template` SET `minlevel` = 14, `maxlevel` = 14, `faction` = 104 WHERE `entry` = 753513;

DELETE FROM `npc_text` WHERE `ID` IN (9010700, 9010701);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `Probability0`) VALUES
(9010700, '<鼓手正忙着打鼓。他似乎没有注意到你。>', '<鼓手正忙着打鼓。他似乎没有注意到你。>', 0, 1),
(9010701, '我不知道十字路口这里还有另一个鼓手。$B$B我有一根备用的鼓槌，如果你答应派对结束后介绍我们认识，就送给你！', '我不知道十字路口这里还有另一个鼓手。$B$B我有一根备用的鼓槌，如果你答应派对结束后介绍我们认识，就送给你！', 0, 1);

DELETE FROM `gossip_menu` WHERE `MenuID` = 9010701;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(9010701, 9010701);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 9010700;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`) VALUES
(9010700, 0, 0, '打扰一下，朋友。我需要一根鼓槌给某人，你有多余的吗？', 0, 1, 1, 9010701, 0, 0, 0, '', 0);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 753513 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(753513, 0, 0, 0, 62, 0, 100, 0, 9010700, 0, 0, 0, 0, 0, 56, 355122, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Brumbof Bramstum - On Gossip Option 0 Selected - Add Drumstick');
