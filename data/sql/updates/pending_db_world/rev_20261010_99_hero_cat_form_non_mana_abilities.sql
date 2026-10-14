-- A Hero in Cat Form used to drop the form for any ability flagged SPELL_ATTR0_NOT_SHAPESHIFTED; only mana spells
-- should (#6925). Cat Form 768 now gives a Hero four hidden SPELL_AURA_MOD_IGNORE_SHAPESHIFT auras, one per spell
-- family, and removes them with the form. The aura also skips the stance and stealth checks, so each mask holds only
-- family bits that no Hero ability with a mana cost, a stance or form requirement or a stealth requirement shares
-- (measured over Spell.dbc and every CharacterAdvancement.dbc rank): 264 Hero abilities. The description rows put
-- the auras in the client spell patch stream, so the client keeps the form as well.
DELETE FROM `spell_dbc` WHERE `ID` IN (9726361, 9726362, 9726363, 9726364);
INSERT INTO `spell_dbc` (`ID`, `Attributes`, `CastingTimeIndex`, `DurationIndex`, `RangeIndex`, `EquippedItemClass`,
    `Effect_1`, `EffectAura_1`, `ImplicitTargetA_1`, `SpellClassSet`, `EffectSpellClassMaskA_1`,
    `EffectSpellClassMaskA_2`, `EffectSpellClassMaskA_3`, `SchoolMask`, `Name_Lang_enUS`)
VALUES
(9726361, 448, 1, 21, 1, -1, 6, 275, 1, 4, 782776911, 147034405, 393216, 1, '猎豹形态：战士技能'),
(9726362, 448, 1, 21, 1, -1, 6, 275, 1, 7, 0, 0, 8, 1, '猎豹形态：德鲁伊技能'),
(9726363, 448, 1, 21, 1, -1, 6, 275, 1, 8, 1732118622, 11927561, 805505024, 1, '猎豹形态：盗贼技能'),
(9726364, 448, 1, 21, 1, -1, 6, 275, 1, 15, 1803337247, 3893088462, 32, 1, '猎豹形态：死亡骑士技能');

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (9726361, 9726362, 9726363, 9726364);
INSERT INTO `coa_client_spell_description` (`ID`, `Description`)
VALUES
(9726361, '你的不消耗法力的战士技能可以在猎豹形态下使用而不离开该形态。'),
(9726362, '你的不消耗法力的德鲁伊技能可以在猎豹形态下使用而不离开该形态。'),
(9726363, '你的不消耗法力的盗贼技能可以在猎豹形态下使用而不离开该形态。'),
(9726364, '你的不消耗法力的死亡骑士技能可以在猎豹形态下使用而不离开该形态。');

DELETE FROM `spell_script_names` WHERE `spell_id` = 768 AND `ScriptName` = 'aura_hero_cat_form_abilities';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`)
VALUES
(768, 'aura_hero_cat_form_abilities');
