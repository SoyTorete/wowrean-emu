-- DELETE FROM db_script_string WHERE entry=2000000348;

-- insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('90003','0','0','0','0','0','4629','4629','4629','4629','Seele von Naxxramas',NULL,NULL,'0','80','80','0','35','35','1','1','1.14286','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','mob_naxxramas_teleporter','1');

UPDATE `creature_template` SET `ScriptName` = 'npc_arcanist_hathorel' WHERE `entry` = 36670;
UPDATE `creature_template` SET `ScriptName` = 'npc_arcanist_tybalin' WHERE `entry` = 36669;

UPDATE `creature_template` SET `ScriptName` = 'npc_captive_child' WHERE `entry` = 22314; 
UPDATE `gameobject_template` SET `ScriptName` = 'go_veil_skith_cage' WHERE `entry` IN (185202,185203,185204,185205); 
UPDATE `creature_template` SET `ScriptName` = 'npc_dark_ranger_marrah' WHERE `entry` = 24137; 
UPDATE `creature_template` SET `ScriptName` = 'npc_savage_worg' WHERE `entry` = 29735; 
UPDATE `creature_template` SET `ScriptName` = 'npc_steampowered_auctioneer' WHERE `entry` = '35607';   
UPDATE `creature_template` SET `ScriptName` = 'npc_variant' WHERE `entry` IN (33739, 33749, 33745, 33744, 33748,  33746, 33740, 33743, 33747, 33738);  

-- update `creature_template` set `equipment_id` = 0 where `Entry` in (37970,37972,37973,38399,38400,38401,38769,38770,38771,38772,38784,38785);

UPDATE `quest_template` SET `RewChoiceItemId2`=47241 WHERE `entry`=24788 LIMIT 1;
UPDATE `quest_template` SET `RewChoiceItemId1`=49426 WHERE `entry`=24788 LIMIT 1;
UPDATE `quest_template` SET `RewChoiceItemCount1`=2, `RewChoiceItemCount2`=2 WHERE `entry`=24788;

