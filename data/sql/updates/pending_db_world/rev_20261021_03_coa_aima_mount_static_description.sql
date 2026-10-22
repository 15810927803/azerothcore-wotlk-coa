-- Issue #8281 follow-up: the mount journal renders the streamed Description's first sentence but
-- emits the $?s riding-speed conditional block as raw sNNN| markers instead of evaluating it. Give the
-- Description static, markup-free speed text (renders identically everywhere); the dynamic conditional
-- stays in ToolTip for the spellbook/buff path. Reversible diagnostic step, one row only.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (91617);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(91617, '召唤或解散艾玛，第二幻影之马。该坐骑可以飞行。\n\n地面速度 100%，飞行速度 280%。', '提高地面速度 ${$w2}%。$?s34090|s34091|s91774[ 提高飞行速度 ${$w3}%。][]');
