-- Issue #8281: Aima's mount-journal entry rendered the raw riding-conditional template instead of the
-- resolved speed line. Its description shared the generic "Summons and dismisses this mount." first
-- sentence used by several custom mounts; give it a mount-specific first sentence like the stock mounts
-- carry. The riding-speed tiers below are unchanged.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (91617);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(91617, '召唤或解散艾玛，第二幻影之马。该坐骑可以飞行。\n\n$?s91774[地面速度 100%，飞行速度 310%。][$?s34091[地面速度 100%，飞行速度 280%。][$?s34090[地面速度 100%，飞行速度 150%。][$?s33391[地面速度 100%。][$?s33388[地面速度 60%。][地面速度 40%。]]]]]', '提高地面速度 ${$w2}%。$?s34090|s34091|s91774[ 提高飞行速度 ${$w3}%。][]');
