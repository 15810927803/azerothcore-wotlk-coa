-- Issue #8281 follow-up: the mounted buff tooltip reads the live aura for its flying number
-- (${$w3}), but the flight effect is stripped where flying is not allowed, rendering
-- "Increases flying speed by 0%." Use static riding-gated tiers instead, mirroring the spell
-- description: the buff path evaluates nested $?s fully, and static numbers do not depend on
-- the stripped aura. Ground speed keeps the live aura value, which is always present.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (91617);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(91617, '召唤或解散艾玛，第二幻影之马。该坐骑可以飞行。\n\n地面速度 100%，飞行速度 280%。', '提高地面速度 ${$w2}%。$?s91774[ 提高飞行速度 310%。][$?s34091[ 提高飞行速度 280%。][$?s34090[ 提高飞行速度 150%。][]]');
