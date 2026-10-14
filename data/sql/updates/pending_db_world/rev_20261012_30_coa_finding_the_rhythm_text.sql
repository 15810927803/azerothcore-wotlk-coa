-- "Finding the Rhythm" (255079) and "Dancing to the Beat" (255080) showed blank progress/completion windows:
-- quest_request_items and quest_offer_reward had no row for them. Text as shown by Ascension (issue #7416).
DELETE FROM `quest_request_items` WHERE `ID` IN (255079,255080);
INSERT INTO `quest_request_items` (`ID`, `CompletionText`) VALUES
(255079, '你需要什么，朋友？'),
(255080, '你回来啦！拿到那面鼓了吗？');

DELETE FROM `quest_offer_reward` WHERE `ID` IN (255079,255080);
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES
(255079, '你说你需要一面鼓？$B$B你找对地方了，我的制皮手艺是整个贫瘠之地最好的！'),
(255080, '以洛阿之名，看看这个！$B$B一面做工精良的鼓和一根大鼓槌！$B$B这一定能让我妹妹沉重的心情好起来！愿灵魂与你同在，兄弟！');
