-- Issue #8362: Divine Strikes' enemy debuff (803372) read its percentage from slot $w1, the unused
-- dummy effect, so it showed 0%. The Argent Blade damage bonus is effect 2, which is slot $w2.
-- Its own description was a stale copy of Scourgebane's damage text; it now states the talent's effect.

DELETE FROM `coa_client_spell_description` WHERE `ID` = 803372;
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(803372, 'Scourgebane 造成的伤害现在使 Argent Blade 的伤害提高 $s2%，持续 $d，最多叠加 $u 次。', '受到 Crusader 的 Argent Blade 造成的伤害提高 ${$w2}%。最多叠加 $u 次。');
