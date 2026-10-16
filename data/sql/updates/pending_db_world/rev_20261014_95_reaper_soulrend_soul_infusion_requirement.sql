-- Soulrend (573316 and every later rank) requires Soul Infusion 803031, the
-- resource Reaped Soul 500363 grants at three stacks, so a Reaper cannot cast it
-- at all without one and the cast spends both auras. The client's own Spell.dbc
-- description names neither requirement, and the client's "Requires Melee Weapon"
-- line comes from the spell's own attributes, so `coa_client_spell_description`
-- publishes each rank's unchanged DBC text with the requirement the client cannot
-- derive. AscensionCompat already streams these rows to the client as
-- SMSG_PATCH_SPELL at login. The Reaper's own resource display names the cost as
-- "Reaped Soul" (AscensionCustomResourceData.h ResourceDisplays) and Soul Infusion
-- is the aura that spends it (AscensionCompat REAPER_ALL_SOUL_CONSUMERS), so the line
-- reads "Requires Soul Infusion (Consumes 3 Reaped Souls)". Every rank is listed,
-- including 802731, the level-12 chain member of the same spell.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (573316, 802731, 573317, 573318, 573319, 573321, 573322, 572341, 572342);
INSERT INTO `coa_client_spell_description` (`ID`,`Description`) VALUES
(573316,'$?a803031[|cffffffff][|cffff3232]需要灵魂灌注|r (消耗 3 个收割的灵魂)\r\n撕裂敌人的灵魂，造成 ${$m1+0+$AP*.36+$sps*.297} 点暗影伤害，并产生符文能量。'),
(802731,'$?a803031[|cffffffff][|cffff3232]需要灵魂灌注|r (消耗 3 个收割的灵魂)\r\n撕裂敌人的灵魂，造成 ${$m1+0+$AP*.36+$sps*.297} 点暗影伤害，使你的攻击无视其 $573320s1% 的护甲，持续 $573320d，并产生符文能量。'),
(573317,'$?a803031[|cffffffff][|cffff3232]需要灵魂灌注|r (消耗 3 个收割的灵魂)\r\n撕裂敌人的灵魂，造成 ${$m1+0+$AP*.36+$sps*.297} 点暗影伤害，产生符文能量，并使你的攻击无视其 $573320s1% 的护甲，持续 $573320d。'),
(573318,'$?a803031[|cffffffff][|cffff3232]需要灵魂灌注|r (消耗 3 个收割的灵魂)\r\n撕裂敌人的灵魂，造成 ${$m1+0+$AP*.36+$sps*.297} 点暗影伤害，产生符文能量，并使你的攻击无视其 $573320s1% 的护甲，持续 $573320d。'),
(573319,'$?a803031[|cffffffff][|cffff3232]需要灵魂灌注|r (消耗 3 个收割的灵魂)\r\n撕裂敌人的灵魂，造成 ${$m1+0+$AP*.36+$sps*.297} 点暗影伤害，产生符文能量，并使你的攻击无视其 $573320s1% 的护甲，持续 $573320d。'),
(573321,'$?a803031[|cffffffff][|cffff3232]需要灵魂灌注|r (消耗 3 个收割的灵魂)\r\n撕裂敌人的灵魂，造成 ${$m1+0+$AP*.36+$sps*.297} 点暗影伤害，产生符文能量，并使你的攻击无视其 $573320s1% 的护甲，持续 $573320d。'),
(573322,'$?a803031[|cffffffff][|cffff3232]需要灵魂灌注|r (消耗 3 个收割的灵魂)\r\n撕裂敌人的灵魂，造成 ${$m1+0+$AP*.36+$sps*.297} 点暗影伤害，产生符文能量，并使你的攻击无视其 $573320s1% 的护甲，持续 $573320d。'),
(572341,'$?a803031[|cffffffff][|cffff3232]需要灵魂灌注|r (消耗 3 个收割的灵魂)\r\n撕裂敌人的灵魂，造成 ${$m1+0+$AP*.36+$sps*.297} 点暗影伤害，产生符文能量，并使你的攻击无视其 $573320s1% 的护甲，持续 $573320d。'),
(572342,'$?a803031[|cffffffff][|cffff3232]需要灵魂灌注|r (消耗 3 个收割的灵魂)\r\n撕裂敌人的灵魂，造成 ${$m1+0+$AP*.36+$sps*.297} 点暗影伤害，产生符文能量，并使你的攻击无视其 $573320s1% 的护甲，持续 $573320d。');
