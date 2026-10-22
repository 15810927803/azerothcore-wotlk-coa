-- Stellar Convergence (#7523): 572784 triggers the Eclipsing Arrows mark
-- 574154 on every party and raid member in range, but its description only
-- names the mark. Lunar Cascade 704725 and the Eclipsing Arrows talent 800504
-- explain it: the mark lasts $574154d and Huntress Shot heals marked allies.
-- Republish the description with that explanation, using 800504's heal
-- formula so the shown amount matches the healing done.
-- Confirm in game: hover Stellar Convergence and read the duration and heal.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (572784);
INSERT INTO `coa_client_spell_description` (`ID`,`Description`) VALUES
(572784,'对 $a1 码内所有小队和团队成员施加|cFFFFFFFF蚀影箭|r，持续 $574154d。\r\n\r\n施放|cffffffff女猎手射击|r会为被标记的盟友恢复 ${($704232m1+$704232ppl1+$SP*.3)*((100+$887014ppl3)/100)} 点生命值。');
