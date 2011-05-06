-- Fix quest http://ru.wowhead.com/quest=10866
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '-185156' AND `ReqSpellCast1` = '38790' WHERE `entry` = '10866';