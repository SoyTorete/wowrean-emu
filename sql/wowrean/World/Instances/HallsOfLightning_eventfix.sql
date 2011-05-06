-- Fix second phase event on HoL. by Reisa
UPDATE `creature_template` SET `gossip_menu_id` = 11031 WHERE `entry` = 37223;
