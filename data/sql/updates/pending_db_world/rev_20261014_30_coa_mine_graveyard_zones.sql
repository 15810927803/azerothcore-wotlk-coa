-- #7648 The CoA client gives each mine interior its own top-level zone (parent 0), and the WMOAreaTable groups of the
-- mine buildings resolve to those ids instead of the stock areas. Their graveyard links sat on the stock parent zones,
-- so a death inside a mine found no link and fell back to the default Westfall (Alliance) or Barrens (Horde) graveyard.
-- Link each mine zone to the graveyards of the zone that holds its stock area:
-- Fargodeep Mine 10124/10125 and Jasperlode Mine 10126 -> Elwynn Forest (12), Echo Ridge Mine 10130 -> Northshire Valley
-- (10138), Gold Coast Quarry 10136 and Jangolode Mine 10137 -> Westfall (40). The Elwynn mines skip Northshire (105),
-- which serves Northshire Valley: a ghost in the east of Jasperlode Mine was sent there past the Tower of Azora.
DELETE FROM `graveyard_zone` WHERE `GhostZone` IN (10124, 10125, 10126, 10130, 10136, 10137);
INSERT INTO `graveyard_zone` (`ID`, `GhostZone`, `Faction`, `Comment`)
SELECT `gz`.`ID`, `m`.`mine`, `gz`.`Faction`, `m`.`name`
FROM `graveyard_zone` `gz`
JOIN (SELECT 10124 AS `mine`, 12 AS `parent`, '法戈第矿洞 - 艾尔文森林墓地' AS `name`
      UNION ALL SELECT 10125, 12, '法戈第矿洞 - 艾尔文森林墓地'
      UNION ALL SELECT 10126, 12, '碧玉矿洞 - 艾尔文森林墓地'
      UNION ALL SELECT 10130, 10138, '回音山矿洞 - 北郡山谷墓地'
      UNION ALL SELECT 10136, 40, '黄金海岸采石场 - 西部荒野墓地'
      UNION ALL SELECT 10137, 40, '詹戈洛德矿洞 - 西部荒野墓地') `m` ON `m`.`parent` = `gz`.`GhostZone`
WHERE `gz`.`ID` <> 105 OR `m`.`parent` <> 12;
