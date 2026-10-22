-- Issue #8281 follow-up: the nested $?s tiers in the buff tooltip do not evaluate cleanly
-- in the buff path (it emits sNNN| markers verbatim), while the pipe-form any-of gate does.
-- Keep the pipe gate (hides the line for riders who cannot fly at all) with a static number,
-- which does not depend on the flight aura that is stripped where flying is disallowed
-- (that strip is what rendered ${$w3} as 0%). Ground speed keeps the live aura value.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (91617);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(91617, '召唤或解散艾玛，第二幻影之马。该坐骑可以飞行。\n\n地面速度 100%，飞行速度 280%。', '提高地面速度 ${$w2}%。$?s34090|s34091|s91774[ 提高飞行速度 280%。][]');
