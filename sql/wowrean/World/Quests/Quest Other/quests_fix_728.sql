-- Fix quest http://ru.wowhead.com/quest=9600
UPDATE `quest_template` SET `ReqSpellCast1` = '8593' WHERE `entry` = '9600';