DELETE FROM `command` WHERE `name` = 'raf';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('raf', 0, '招募好友命令：\n.raf <角色名> - 邀请一名在线玩家进行永久招募（接受/拒绝）。\n.raf status - 显示你的直接招募对象及其两小时资格进度。\n.raf rewards - 列出本服务器的奖励及其状态。\n.raf claim <奖励ID> - 通过游戏内邮件领取符合条件的奖励。\n.help raf - 显示此命令列表。');
