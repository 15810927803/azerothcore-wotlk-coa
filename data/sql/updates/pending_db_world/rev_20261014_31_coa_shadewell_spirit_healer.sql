-- Shadewell Spring (game_graveyard 6074) had no Spirit Healer, and Shadewell (10305) was not linked to any graveyard, so
-- a ghost released in Shadewell town went to Westfall or the Barrens. Place a Spirit Healer at 6074, like the other
-- Elwynn graveyards, and link Shadewell to it beside the Secret Inquisitorial Dungeon (10197) and the Vaults (10218).
-- Creature guid block 9009000-9009099.
DELETE FROM `creature` WHERE `guid` = 9009000;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `curhealth`, `MovementType`, `Comment`) VALUES
(9009000, 6491, 0, 1, 4294967295, -8596.849, -624.761, 145.158, 1.268, 60, 0, 4120, 0, '灵魂医者 - 艾尔文森林，暗影泉墓地');
DELETE FROM `graveyard_zone` WHERE `GhostZone` IN (10197, 10218, 10305);
INSERT INTO `graveyard_zone` (`ID`, `GhostZone`, `Faction`, `Comment`) VALUES
(6074, 10197, 0, '秘密审判地牢 - 艾尔文森林，暗影泉'),
(6074, 10218, 0, '审判庭宝库 - 艾尔文森林，暗影泉'),
(6074, 10305, 0, '暗影之井 - 艾尔文森林，暗影泉');
