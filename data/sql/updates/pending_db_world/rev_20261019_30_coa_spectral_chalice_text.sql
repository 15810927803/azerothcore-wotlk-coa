-- CoA: 4083 'The Spectral Chalice' showed only its title: the quest had no LogDescription
-- or QuestDescription, and its completion text still pointed at Alterac while the chalice
-- stands in Blackrock Depths. Give the quest its description and fix the turn-in line.
UPDATE `quest_template` SET `LogDescription` = '向黑石深渊中的幽灵圣杯献上宝石和贵金属。', `QuestDescription` = '那么你找到了它，幽灵圣杯，你族人最古老的锻造传说中吟唱之物。$B$B它渴了，旅行者。它不喝清水也不饮酒，只渴望大地的财富：切割纯净的宝石，锻造纯正的金属。向它献上两颗星红宝石、二十块金锭和十块真银锭，它便会在深处锻造出降临符文作为回应。$B$B将供品放入圣杯之中。', `QuestCompletionLog` = '返回黑石深渊中的幽灵圣杯。' WHERE `ID` = 4083;
