-- Label Classic cache brackets with the verified item names.
-- Apply to the world database after SQL 47. Reward behaviour is unchanged.

START TRANSACTION;

UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：普通地下城' WHERE `bracket_id` = 1000 AND `cache_item_entry` = 1278050;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：英雄地下城' WHERE `bracket_id` = 1001 AND `cache_item_entry` = 1278051;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：祖尔格拉布' WHERE `bracket_id` = 1002 AND `cache_item_entry` = 1278052;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：英雄祖尔格拉布' WHERE `bracket_id` = 1003 AND `cache_item_entry` = 1278053;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：史诗祖尔格拉布' WHERE `bracket_id` = 1004 AND `cache_item_entry` = 1278055;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：熔火之心' WHERE `bracket_id` = 1005 AND `cache_item_entry` = 1278056;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：英雄熔火之心' WHERE `bracket_id` = 1006 AND `cache_item_entry` = 1278058;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：史诗熔火之心' WHERE `bracket_id` = 1007 AND `cache_item_entry` = 1278060;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：黑翼之巢' WHERE `bracket_id` = 1008 AND `cache_item_entry` = 1278066;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：英雄黑翼之巢' WHERE `bracket_id` = 1009 AND `cache_item_entry` = 1278068;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：史诗黑翼之巢' WHERE `bracket_id` = 1010 AND `cache_item_entry` = 1278069;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：安其拉废墟' WHERE `bracket_id` = 1011 AND `cache_item_entry` = 1278070;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：英雄安其拉废墟' WHERE `bracket_id` = 1012 AND `cache_item_entry` = 1278072;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：史诗安其拉废墟' WHERE `bracket_id` = 1013 AND `cache_item_entry` = 1278074;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：安其拉神殿' WHERE `bracket_id` = 1014 AND `cache_item_entry` = 1278075;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：英雄安其拉神殿' WHERE `bracket_id` = 1015 AND `cache_item_entry` = 1278077;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：史诗安其拉神殿' WHERE `bracket_id` = 1016 AND `cache_item_entry` = 1278078;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：纳克萨玛斯' WHERE `bracket_id` = 1017 AND `cache_item_entry` = 1278079;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：英雄纳克萨玛斯' WHERE `bracket_id` = 1018 AND `cache_item_entry` = 1278081;
UPDATE `manastorm_cache_bracket` SET `comment` = '法力风暴宝箱：史诗纳克萨玛斯' WHERE `bracket_id` = 1019 AND `cache_item_entry` = 1278083;

COMMIT;
