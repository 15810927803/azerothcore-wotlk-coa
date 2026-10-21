-- Tinker Gatling Gun (#8109): learned early, usable only inside the
-- Mechsuit (rejected with SPELL_FAILED_ONLY_MOUNTED outside it), but its
-- tooltip names no requirement, unlike its Mechsuit:-prefixed bar
-- neighbours. Build: Mechsuit already documents the Scrap Shot
-- transformation, and Scrap Shot itself is rejected inside the suit, so
-- only the Gatling line is missing. Publish the unchanged DBC text with
-- a form requirement through coa_client_spell_description, which the
-- server streams to the client (SMSG_PATCH_SPELL); DELETE+INSERT stays
-- idempotent. The line follows the Soulrend pattern: white while the
-- Mechsuit aura is up, red outside it. Confirm in game: hover Gatling
-- Gun in and out of the Mechsuit, check the requirement line.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (500213);
INSERT INTO `coa_client_spell_description` (`ID`,`Description`) VALUES
(500213,'$?a801384[|cffffffff][|cffff3232]需要机械形态|r\r\n锁定一个目标并开始引导速射枪击，造成 $500577s1% 远程武器伤害加上 ${$500577m2+$500577ppl2}，并每 $t1 秒产生 1 个 |cffc7c7c7废料|r，持续 $d。\r\n\r\n受 |cffffffff废料射击|r 的修正加成影响。\r\n\r\n可在移动时使用。');
