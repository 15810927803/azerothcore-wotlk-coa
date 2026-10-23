-- Mythical Caches (24 h) and Mythic Keystones (7 days) count down while their owner is logged off (ITEM_FLAGS_CU_DURATION_REAL_TIME)
UPDATE `item_template` SET `flagsCustom` = `flagsCustom` | 1
WHERE (`name` = 'Mythical Cache' OR `name` = '神话宝箱')
  AND `duration` = 86400 AND `spellid_1` = 84284;

UPDATE `item_template` SET `flagsCustom` = `flagsCustom` | 1
WHERE (`name` LIKE 'Keystone:%' OR `name` LIKE '钥石:%')
  AND `duration` = 604800 AND `spellid_1` = 161;
