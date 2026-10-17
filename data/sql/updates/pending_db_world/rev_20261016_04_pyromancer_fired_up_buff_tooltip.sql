-- Fired Up! (704823) buff tooltip: the client's own ToolTip text ("Ember
-- spenders are instant and have a chance to refund their cost.") names neither
-- the refund chance nor the 30% critical strike chance the aura grants, while
-- the spellbook Description already states both. Publish a buff-voiced ToolTip
-- with the same facts (40% refund from ProcChance, fixed 30% from Effect[2]),
-- leaving the duration to the client's own "N seconds remaining" line. The
-- Description row is republished unchanged. AscensionCompat streams the ToolTip
-- over the DBC one as SMSG_PATCH_SPELL at login.
DELETE FROM `coa_client_spell_description` WHERE `ID` = 704823;
INSERT INTO `coa_client_spell_description` (`ID`,`Description`,`ToolTip`) VALUES
(704823,'你的 |cffff7f7f余烬|r 消耗技能现在变为瞬发，并有 $h% 的几率返还其消耗，同时使你的爆击几率提高 30%，持续 $d。','|cffff7f7f余烬|r 消耗技能变为瞬发，并有 40% 的几率返还其消耗，同时使你的爆击几率提高 30%。');
