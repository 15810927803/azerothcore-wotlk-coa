-- Elune's Cradle (#7531): the area 807992 lasts 12 sec (duration index 29),
-- but its description never states the duration, so Warden's Blade's
-- Aspect of the Goddess line (which embeds @s:807992:0@) omits it too.
-- Republish the DBC description with the duration added.
-- Confirm in game: hover Warden's Blade and Elune's Cradle and read 12 sec.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (807992);
INSERT INTO `coa_client_spell_description` (`ID`,`Description`) VALUES
(807992,'在敌人周围创造一片复苏星辰区域，持续 $d，每 $t1 秒为 $a1 码内最多 $i 名盟友恢复 ${$m1*$<scalingbp>+$BH*0.08} 点生命值。');
