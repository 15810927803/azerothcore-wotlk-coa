-- Falconstrike ranks ship malformed DBC weapon percentages (rank 8 advertises 3197%) while the server
-- normalizes the damage to 121% (AscensionRangerDamage.cpp). Correct the client text and state the
-- ready requirement that spell_ascension_ranger_falconstrike::CheckReady enforces.
DELETE FROM `coa_client_spell_description` WHERE `ID` IN (806345, 806437, 806438, 806439, 806440, 806441, 806442, 806443);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`, `ToolTip`) VALUES
(806345, '$?a573338[|cffffffff][|cffff3232]需要游侠号角或 5 层快速射击|r\r\n|cff8fff7a产生 2 层优势|r\r\n召唤一群猎鹰袭击敌人，造成 121% 远程武器伤害加上 ${$m1+0} 点自然伤害，并召唤 1 只 |cffffffff战争猎鹰|r 协助你，持续 $520588d。\r\n\r\n@ext:将所有激活的召唤物重定向为攻击你的目标。:ext@', NULL),
(806437, '$?a573338[|cffffffff][|cffff3232]需要游侠号角或 5 层快速射击|r\r\n召唤一群猎鹰袭击敌人，造成 121% 远程武器伤害加上 ${$m1+0} 点自然伤害，并召唤 1 只 |cffffffff战争猎鹰|r 协助你，持续 $520588d。\r\n\r\n产生 1 层 |cff8fff7a优势|r。 \r\n\r\n@ext:将所有激活的召唤物重定向为攻击你的目标。:ext@', NULL),
(806438, '$?a573338[|cffffffff][|cffff3232]需要游侠号角或 5 层快速射击|r\r\n召唤一群猎鹰袭击敌人，造成 121% 远程武器伤害加上 ${$m1+0} 点自然伤害，并召唤 1 只 |cffffffff战争猎鹰|r 协助你，持续 $520588d。\r\n\r\n产生 1 层 |cff8fff7a优势|r。 \r\n\r\n@ext:将所有激活的召唤物重定向为攻击你的目标。:ext@', NULL),
(806439, '$?a573338[|cffffffff][|cffff3232]需要游侠号角或 5 层快速射击|r\r\n召唤一群猎鹰袭击敌人，造成 121% 远程武器伤害加上 ${$m1+0} 点自然伤害，并召唤 1 只 |cffffffff战争猎鹰|r 协助你，持续 $520588d。\r\n\r\n产生 1 层 |cff8fff7a优势|r。 \r\n\r\n@ext:将所有激活的召唤物重定向为攻击你的目标。:ext@', NULL),
(806440, '$?a573338[|cffffffff][|cffff3232]需要游侠号角或 5 层快速射击|r\r\n召唤一群猎鹰袭击敌人，造成 121% 远程武器伤害加上 ${$m1+0} 点自然伤害，并召唤 1 只 |cffffffff战争猎鹰|r 协助你，持续 $520588d。\r\n\r\n产生 1 层 |cff8fff7a优势|r。 \r\n\r\n@ext:将所有激活的召唤物重定向为攻击你的目标。:ext@', NULL),
(806441, '$?a573338[|cffffffff][|cffff3232]需要游侠号角或 5 层快速射击|r\r\n召唤一群猎鹰袭击敌人，造成 121% 远程武器伤害加上 ${$m1+0} 点自然伤害，并召唤 1 只 |cffffffff战争猎鹰|r 协助你，持续 $520588d。\r\n\r\n产生 1 层 |cff8fff7a优势|r。 \r\n\r\n@ext:将所有激活的召唤物重定向为攻击你的目标。:ext@', NULL),
(806442, '$?a573338[|cffffffff][|cffff3232]需要游侠号角或 5 层快速射击|r\r\n召唤一群猎鹰袭击敌人，造成 121% 远程武器伤害加上 ${$m1+0} 点自然伤害，并召唤 1 只 |cffffffff战争猎鹰|r 协助你，持续 $520588d。\r\n\r\n产生 1 层 |cff8fff7a优势|r。 \r\n\r\n@ext:将所有激活的召唤物重定向为攻击你的目标。:ext@', NULL),
(806443, '$?a573338[|cffffffff][|cffff3232]需要游侠号角或 5 层快速射击|r\r\n召唤一群猎鹰袭击敌人，造成 121% 远程武器伤害加上 ${$m1+0} 点自然伤害，并召唤 1 只 |cffffffff战争猎鹰|r 协助你，持续 $520588d。\r\n\r\n产生 1 层 |cff8fff7a优势|r。 \r\n\r\n@ext:将所有激活的召唤物重定向为攻击你的目标。:ext@', NULL);
