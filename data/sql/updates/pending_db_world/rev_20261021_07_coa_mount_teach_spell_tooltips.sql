-- Issue #8281 follow-up: the three Great Raven teaching spells carry the same nested $?s speed
-- block as the fixed mounts. Same treatment: static speeds in the description, riding-gated static
-- flying value in the tooltip (pipe form, no nesting).

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (970040, 970041, 970042);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(970040, '教你如何变身为先知的大渡鸦。\n\n地面速度 100%，飞行速度 280%。', '提高地面速度 ${$w2}%。$?s34090|s34091|s91774[ 提高飞行速度 280%。][]'),
(970041, '教你如何变身为大法师的大渡鸦。\n\n地面速度 100%，飞行速度 280%。', '提高地面速度 ${$w2}%。$?s34090|s34091|s91774[ 提高飞行速度 280%。][]'),
(970042, '教你如何变身为守护者的大渡鸦。\n\n地面速度 100%，飞行速度 280%。', '提高地面速度 ${$w2}%。$?s34090|s34091|s91774[ 提高飞行速度 280%。][]');
