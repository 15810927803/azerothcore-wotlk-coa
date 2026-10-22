-- The Ealdir Trial of Strength (175037) had no completion text, so Raigh Anramor's turn-in window was blank. Text from
-- the realm turn-in window (Redthedeer VOD DuWTvw19xtg, 00:42:22).
DELETE FROM `quest_offer_reward` WHERE `ID` = 175037;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(175037, 0, 0, 0, 0, 0, 0, 0, 0, '令人惊叹！而且你才刚刚抵达。$B$B如果每个埃尔迪尔都像你这样战斗，我们眨眼之间就能赢得这场战争。$B$B你已经赢得了留在这里的资格。从今往后，就把埃尔德梅恩洞穴当作你的新家吧。我们还有很多事要做。', 0);
