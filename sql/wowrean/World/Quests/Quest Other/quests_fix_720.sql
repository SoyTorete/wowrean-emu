-- Fix quest drop http://ru.wowhead.com/quest=12754
DELETE FROM `creature_loot_template` WHERE (`entry`=29076) AND (`item`=39646);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (29076, 39646, 100, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=29076) AND (`item`=39647);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (29076, 39647, 100, 1, 0, 1, 1);