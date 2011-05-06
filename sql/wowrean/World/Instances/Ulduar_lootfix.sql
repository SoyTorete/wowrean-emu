-- Fix emblem of valor -> emblem of triumph loot. By Seither
UPDATE `creature_template` SET `gossip_menu_id` = 11031 WHERE `entry` = 37223;
