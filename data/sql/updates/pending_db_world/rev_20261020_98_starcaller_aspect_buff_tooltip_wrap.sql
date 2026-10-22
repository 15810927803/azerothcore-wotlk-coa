-- Starcaller Aspect buff tooltips (#4007): the aura ToolTip of Aspect of the
-- Moonwell (574360) and Aspect of the Stars (800510, 803887, 803888) ends with
-- an @s:<spell>:0@ embed. The client wraps that embed in the spell tooltip but
-- prints it on one unwrapped line in the buff tooltip, so the Scattered Stars
-- details run outside the frame. Republish the unchanged DBC Description and a
-- ToolTip with the embedded spell's text written inline; tokens that belonged
-- to the embedded spell name it explicitly so the values stay the same.
-- Confirm in game: activate each Aspect and hover the buff.

DELETE FROM `coa_client_spell_description` WHERE `ID` IN (574360, 800510, 803887, 803888);
INSERT INTO `coa_client_spell_description` (`ID`,`Description`,`ToolTip`) VALUES
(574360,'激活期间，消耗|cff66ccff散落星辰|r造成的伤害和获得的法力翻倍。@s:804716:0@\r\n\r\n@ext:与其他|cffffffff守护|r共享冷却时间。:ext@','消耗|cff66ccff散落星辰|r造成的伤害和获得的法力翻倍。\r\n\r\n|cff66ccff消耗散落星辰|r：每消耗一颗|cffffffff散落星辰|R，造成 ${$804995m1+$804995ppl1} 点额外奥术伤害并恢复 $804994s2% 最大法力值。'),
(800510,'近战和远程自动攻击现在有 $h% 的几率施加|cff66ccff散落星辰|r并造成 ${$m2+0+0.1*$spa+0.07*$AP} 点奥术伤害。@s:804378:0@\r\n\r\n@ext:与其他|cffffffff守护|r共享冷却时间。:ext@','近战和远程自动攻击现在有 $h% 的几率施加|cff66ccff散落星辰|r并造成 ${$m2+$ppl2+0.1*$spa+0.07*$AP} 点奥术伤害。\r\n\r\n|cff66ccff散落星辰|r：可被法术消耗，造成额外奥术伤害。$?s704797[并使你造成的奥术伤害提高 $704797s1%。][] 持续 $804378d，最多叠加 $804378u 次。'),
(803887,'近战和远程自动攻击现在有 $h% 的几率施加|cff66ccff散落星辰|r并造成 ${$m2+0+0.1*$spa+0.07*$AP} 点奥术伤害。@s:804378:0@\r\n\r\n@ext:与其他|cffffffff守护|r共享冷却时间。:ext@','近战和远程自动攻击现在有 $h% 的几率施加|cff66ccff散落星辰|r并造成 ${$m2+$ppl2+0.1*$spa+0.07*$AP} 点奥术伤害。\r\n\r\n|cff66ccff散落星辰|r：可被法术消耗，造成额外奥术伤害。$?s704797[并使你造成的奥术伤害提高 $704797s1%。][] 持续 $804378d，最多叠加 $804378u 次。'),
(803888,'近战和远程自动攻击现在有 $h% 的几率施加|cff66ccff散落星辰|r并造成 ${$m2+0+0.1*$spa+0.07*$AP} 点奥术伤害。@s:804378:0@\r\n\r\n@ext:与其他|cffffffff守护|r共享冷却时间。:ext@','近战和远程自动攻击现在有 $h% 的几率施加|cff66ccff散落星辰|r并造成 ${$m2+$ppl2+0.1*$spa+0.07*$AP} 点奥术伤害。\r\n\r\n|cff66ccff散落星辰|r：可被法术消耗，造成额外奥术伤害。$?s704797[并使你造成的奥术伤害提高 $704797s1%。][] 持续 $804378d，最多叠加 $804378u 次。');
