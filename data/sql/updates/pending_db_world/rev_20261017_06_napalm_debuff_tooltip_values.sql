-- Napalm (805315), second wording pass. rev_20261017_05 corrected the debuff text
-- to "increased by 3% for each stack of Napalm", but the tooltip still does not
-- show what the values are across the stack ladder. No tooltip variable resolves
-- a live stack count ($a1 is effect radius; $u is only the cap; the $s values of
-- the server-repurposed effects do not render the scripted number), so the
-- reachable maximum is written out: +3% Fire damage taken per stack (Effect 0
-- base points 2, read by the scaling script as Amount(805315)) reaches +30% at
-- the 10-stack cap, while healing received stays a flat -3% (Effect 1 rewritten
-- to SPELL_AURA_MOD_HEALING_PCT -3, unscaled by stacks). $d (8 s) and $u
-- (10 stacks) are kept as proven variables. Supersedes the wording of _05; the
-- DELETE+INSERT stays idempotent.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (805315);
INSERT INTO `coa_client_spell_description` (`ID`,`Description`,`ToolTip`) VALUES
(805315,'你受到的火焰伤害每层凝固汽油提高 3%，最多 10 层时提高 30%，受到的治疗效果降低 3%，持续 $d。最多叠加 $u 次。','受到工匠的火焰伤害每层凝固汽油提高 3%，最多 10 层时提高 30%，受到的治疗效果降低 3%。');
