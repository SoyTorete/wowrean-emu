SET NAMES 'utf8';

-- Anticheat
REPLACE INTO `trinity_string` VALUES ('12000', 'Cheater DETECTED> %s  ID:( %u ) Reason> %s', null, null, null, null, null, null, null, 'Найден читер:> %s ID:( %u) Причина> %s');

-- Battlegrounds
-- Dalaran Arena
UPDATE `gameobject_template` SET `flags` = '36' WHERE `gameobject_template`.`entry` =192642 LIMIT 1 ;
UPDATE `gameobject_template` SET `flags` = '36' WHERE `gameobject_template`.`entry` =192643 LIMIT 1 ;
UPDATE `battleground_template` SET `MinPlayersPerTeam` = '0', `MaxPlayersPerTeam` = '2' WHERE `battleground_template`.`id` =10 LIMIT 1 ;
DELETE FROM `disables` WHERE `entry` = 10 ;

-- Grizzly Hills
UPDATE creature set spawnMask = 0 where id in (27748, 27708, 29253, 27730, 29251, 27758, 27759, 29252,27760, 29250);
DELETE FROM `trinity_string` WHERE entry BETWEEN 12001 AND 12004;
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(12001, 'The Horde has taken the Venture Bay Lighthouse!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(12002, 'The Alliance has taken the Venture Bay Lighthouse!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(12003, 'The Horde lost the Venture Bay Lighthouse!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(12004, 'The Alliance lost the Venture Bay Lighthouse!', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);

-- IoC
UPDATE gameobject_template SET size=2.151325 WHERE entry=195451;
UPDATE gameobject_template SET size=2.151325 WHERE entry=195452;
UPDATE gameobject_template SET size=3.163336 WHERE entry=195223;
UPDATE creature_template SET speed_run=1.142857 WHERE entry=36154;
UPDATE creature_template SET speed_run=1.142857 WHERE entry=36169;
UPDATE `creature_template` SET `spell1`=69495,`VehicleId`='452' WHERE `entry` =34929;
UPDATE `creature_template` SET `spell1`=68825,`VehicleId`='453' WHERE `entry` =34935;
UPDATE `creature_template` SET `VehicleId`=160,`spell1`=67452,`spell2`='68169' WHERE `entry` =34944;
UPDATE `creature_template` SET `VehicleId`=438,`spell1`=66218,`spell2`=66296 WHERE `entry`=34793;
UPDATE `creature_template` SET `VehicleId`='509',`spell1`='67442',`spell2`='68068' WHERE `entry` =34775;
UPDATE `creature_template` SET `VehicleId`=447,`spell1`=67816,`spell2`=69502 WHERE `entry`=34776;
UPDATE `creature_template` SET `VehicleId`=436,`spell1`=67816,`spell2`=69502 WHERE `entry`=35069;
UPDATE `creature_template` SET `VehicleId`=447,`spell1`=68827,`spell2`=69515 WHERE `entry`=34802;
UPDATE `creature_template` SET `VehicleId`=447,`spell1`=68827,`spell2`=69515 WHERE `entry`=35273;
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =34778;
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =36356;
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=34777;
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=36355;
UPDATE creature_template SET `speed_run`=2.428571,`speed_walk`=2.8 WHERE `entry`=34793;
UPDATE creature_template SET `ScriptName`='boss_isle_of_conquest' WHERE `entry` IN (34924,34922);
INSERT IGNORE `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(12039, 'le donjon de l''alliance', NULL, 'le donjon de l''alliance', NULL, NULL, NULL, NULL, NULL, NULL),
(12038, 'le donjon de la Horde', NULL, 'le donjon de la Horde', NULL, NULL, NULL, NULL, NULL, NULL),
(12037, 'L''Alliance a pris le donjon de la Horde !', NULL, 'L''Alliance a pris le donjon de la Horde !', NULL, NULL, NULL, NULL, NULL, NULL),
(12036, 'La Horde a pris le donjon de l''Alliance !', NULL, 'La Horde a pris le donjon de l''Alliance !', NULL, NULL, NULL, NULL, NULL, NULL),
(12035, '%s l''emporte !', NULL, '%s l''emporte !', NULL, NULL, NULL, NULL, NULL, NULL),
(12034, '%s a attaquй le donjon de la Horde !', NULL, '%s a attaquй le donjon de la Horde !', NULL, NULL, NULL, NULL, NULL, NULL),
(12033, '%s a attaquй le donjon de l''Alliance !', NULL, '%s a attaquй le donjon de l''Alliance !', NULL, NULL, NULL, NULL, NULL, NULL),
(12032, 'La porte ouest du donjon de la Horde est dйtruite !', NULL, 'La porte ouest du donjon de la Horde est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12031, 'La porte est du donjon de la Horde est dйtruite !', NULL, 'La porte est du donjon de la Horde est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12030, 'La porte sud du donjon de la Horde est dйtruite !', NULL, 'La porte sud du donjon de la Horde est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12029, 'La porte ouest du donjon de l''Alliance est dйtruite !', NULL, 'La porte ouest du donjon de l''Alliance est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12028, 'La porte est du donjon de l''Alliance est dйtruite !', NULL, 'La porte est du donjon de l''Alliance est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12027, 'La porte nord du donjon de l''Alliance est dйtruite !', NULL, 'La porte nord du donjon de l''Alliance est dйtruite !', NULL, NULL, NULL, NULL, NULL, NULL),
(12026, 'The battle will begin in 15 seconds!', NULL, 'La bataille commencera dans 15 secondes.', NULL, NULL, NULL, NULL, NULL, NULL),
(12025, '$n has assaulted the %s', '', '$n a attaquй %s !', '', '', '', '', '', ''),
(12024, '$n has defended the %s', '', '$n a dйfendu %s', '', '', '', '', '', ''),
(12023, '$n claims the %s! If left unchallenged, the %s will control it in 1 minute!', NULL, '$n а attaquй %s! Si rien n\'est fait, %s le contrфlera dans 1 minute!', NULL, NULL, NULL, NULL, NULL, NULL),
(12022, 'Alliance', NULL, 'L''Alliance', NULL, NULL, NULL, NULL, NULL, NULL),
(12021, 'Horde', NULL, 'La Horde', NULL, NULL, NULL, NULL, NULL, NULL),
(12020, 'The %s has taken the %s', NULL, '%s a pris %s', NULL, NULL, NULL, NULL, NULL, NULL),
(12019, 'Workshop', NULL, 'l''atelier', NULL, NULL, NULL, NULL, NULL, NULL),
(12018, 'Docks', NULL, 'les docks', NULL, NULL, NULL, NULL, NULL, NULL),
(12017, 'Refinery', NULL, 'la raffinerie', NULL, NULL, NULL, NULL, NULL, NULL),
(12016, 'Quarry', NULL, 'la carriиre', NULL, NULL, NULL, NULL, NULL, NULL),
(12015, 'Hangar', NULL, 'le hangar', NULL, NULL, NULL, NULL, NULL, NULL),
(12014, 'The battle has begun!', NULL, 'Que la bataille commence !', NULL, NULL, NULL, NULL, NULL, NULL),
(12013, 'The battle will begin in 30 seconds!', NULL, 'La bataille commencera dans 30 secondes.', NULL, NULL, NULL, NULL, NULL, NULL),
(12012, 'The battle will begin in one minute!', NULL, 'La bataille commencera dans 1 minute.', NULL, NULL, NULL, NULL, NULL, NULL),
(12011, 'The battle will begin in two minutes!', NULL, 'La bataille commencera dans 2 minutes.', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT IGNORE `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(66548, 66550, 0, 'Isle of Conquest (OUT>IN)'),
(66549, 66550, 0, 'Isle of Conquest (IN>OUT)'),
(66550, -66549, 2, 'Isle of Conquest Teleport (OUT>IN) Debuff limit'),
(66550, -66548, 2, 'Isle of Conquest Teleport (IN>OUT) Debuff limit');
UPDATE `creature_template` SET `spell1`=66518 WHERE `entry` =34929;
UPDATE `creature_template` SET `spell1`=69495 WHERE `entry` =35410;
UPDATE `creature_template` SET `spell1`=66529 WHERE `entry` =34935;
UPDATE `creature_template` SET `spell1`=68825 WHERE `entry` =35427;
UPDATE `creature_template` SET `spell1`=68170,`spell2`='66541' WHERE `entry` =34944;
UPDATE `creature_template` SET `spell1`=67452,`spell2`='68169' WHERE `entry` =35429;
UPDATE `creature_template` SET `spell1`=66218,`spell2`=66296 WHERE `entry`=34793;
UPDATE `creature_template` SET `spell1`=66218,`spell2`=66296 WHERE `entry`=35413;
UPDATE `creature_template` SET `spell1`='67440',`spell2`='67441' WHERE `entry` =34775;
UPDATE `creature_template` SET `spell1`='68068',`spell2`='67442' WHERE `entry` =35415;
UPDATE `creature_template` SET `spell1`=67796,`spell2`=67797 WHERE `entry`=34776;
UPDATE `creature_template` SET `spell1`=67816,`spell2`=69502 WHERE `entry`=35431;
UPDATE `creature_template` SET `spell1`=67796,`spell2`=67797 WHERE `entry`=35069;
UPDATE `creature_template` SET `spell1`=67816,`spell2`=69502 WHERE `entry`=35433;
UPDATE `creature_template` SET `spell1`=66456,`spell2`=67195 WHERE `entry`=34802;
UPDATE `creature_template` SET `spell1`=68827,`spell2`=69515 WHERE `entry`=35419;
UPDATE `creature_template` SET `spell1`=67034,`spell2`=67195 WHERE `entry`=35273;
UPDATE `creature_template` SET `spell1`=68826,`spell2`=69515 WHERE `entry`=35421;
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =34778;
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =35417;
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =36356;
UPDATE `creature_template` SET `spell1`='68832' WHERE `entry` =36358;
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=34777;
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=35436;
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=36355;
UPDATE `creature_template` SET `spell1`=67462,`spell2`=69505 WHERE `entry`=36357;
DELETE FROM `creature` WHERE `guid` IN (250194,250214,250212,250210,250208,250206,250203,250198,250196,250182,250182,250180,250186);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(250194, 23472, 628, 3, 1, 0, 0, 1139.92, -780.212, 48.6757, 3.16908, 300, 0, 0, 4120, 0, 0, 0),
(250214, 22515, 628, 3, 1, 0, 0, 323.214, -884.536, 48.9155, 1.59435, 300, 0, 0, 4120, 0, 0, 0),
(250212, 22515, 628, 3, 1, 0, 0, 325.953, -782.401, 48.9163, 4.65741, 300, 0, 0, 4120, 0, 0, 0),
(250210, 22515, 628, 3, 1, 0, 0, 393.258, -858.941, 48.9161, 3.22484, 300, 0, 0, 4120, 0, 0, 0),
(250208, 22515, 628, 3, 1, 0, 0, 1233.08, -840.021, 48.9176, 1.51268, 300, 0, 0, 4120, 0, 0, 0),
(250206, 22515, 628, 3, 1, 0, 0, 1162.9, -746.146, 48.6285, 6.1536, 300, 0, 0, 4120, 0, 0, 0),
(250203, 22515, 628, 3, 1, 0, 0, 1235.15, -689.807, 49.1079, 1.52132, 300, 0, 0, 4120, 0, 0, 0),
(250198, 23472, 628, 3, 1, 0, 0, 1235.61, -863.124, 48.9713, 4.7171, 300, 0, 0, 4120, 0, 0, 0),
(250196, 23472, 628, 3, 1, 0, 0, 1236.6, -663.616, 47.8887, 3.00572, 300, 0, 0, 4120, 0, 0, 0),
(250182, 23472, 628, 3, 1, 0, 0, 324.262, -745.282, 49.4923, 1.55901, 300, 0, 0, 4120, 0, 0, 0),
(250180, 23472, 628, 3, 1, 0, 0, 311.937, -918.894, 48.6856, 4.76736, 300, 0, 0, 4120, 0, 0, 0),
(250186, 23472, 628, 3, 1, 0, 0, 430.61, -857.491, 48.198, 0.074609, 300, 0, 0, 4120, 0, 0, 0); 
UPDATE creature_template SET `ScriptName`='bosses_isle_of_conquest' WHERE `entry` IN (34924,34922);

-- Outdoorpvp
REPLACE INTO `outdoorpvp_template` (`TypeId`, `ScriptName`, `Comment`) VALUES
(1, 'outdoorpvp_hp', 'Hellfire Peninsula'),
(2, 'outdoorpvp_na', 'Nagrand'),
(3, 'outdoorpvp_tf', 'Terokkar Forest'),
(4, 'outdoorpvp_zm', 'Zangarmarsh'),
(5, 'outdoorpvp_si', 'Silithus'),
(6, 'outdoorpvp_ep', 'Eastern Plaguelands'),
(7, 'outdoorpvp_gh', 'Grizzly Hills'),
(8, 'outdoorpvp_wg', 'Wintergrasp');

-- Wintergrasp
SET NAMES 'utf8';

DELETE FROM `trinity_string` WHERE entry IN (756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,780,781,782,783);
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('756', 'Battle begins!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Битва началась'),
('757', '%s has successfully defended the fortress!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s успешно защитил(а) крепость!'),
('758', '%s has taken over the fortress!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s захватил(а) крепость'),
('759', 'The %s siege workshop has been damaged by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('760', 'The %s siege workshop has been destroyed by the %s!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('761', 'The %s tower has been damaged!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s башня повреждена'),
('762', 'The %s tower has been destroyed!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '%s башня уничтожена!'),
('763', 'Wintergrasp fortress is under attack!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('764', 'Wintergrasp is now under the control of the %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('765', 'Wintergrasp timer set to %s.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('766', 'Wintergrasp battle started.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('767', 'Wintergrasp battle finished.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('768', 'Wintergrasp info: %s controlled. Timer: %s. Wartime: %s. Number of Players: (Horde: %u, Alliance: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('769', 'Wintergrasp outdoorPvP is disabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('770', 'Wintergrasp outdoorPvP is enabled.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('771', 'You have reached Rank 1: Corporal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы достигли Ранга 1: Капрал'),
('772', 'You have reached Rank 2: First Lieutenant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы достигли Ранга 2: Лейтенант'),
('780', 'Before the Battle of  Wintergrasp left 30 minutes!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'До битвы на  Озере Ледяных Оков осталось 30 минут!'),
('781', 'Before the Battle of  Wintergrasp left 10 minutes! Portal from Dalaran will work at begin of the battle.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'До битвы на  Озере Ледяных Оков осталось 10 минут! Портал с Даларана начнет работу во время боя.'),
('782', 'The battle for Wintergrasp  has stopped! Not enough defenders. Wintergrasp Fortress remains  Attackers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Битва за Озеро Ледяных Оков Остановлена. Не хватает защитников. Крепость переходит атакующей  стороне.'),
('783', 'The battle for Wintergrasp  has stopped! Not enough attackers. Wintergrasp Fortress remains  Defenders.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Битва за Озеро Ледяных Оков Остановлена. Не хватает нападающих. Крепость остается защитникам.');

DELETE FROM `command` WHERE name IN ('wg','wg enable','wg start','wg status','wg stop','wg switch','wg timer');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('wg', '3', 'Syntax: .wg $subcommand.'),
('wg enable', '3', 'Syntax: .wg enable [on/off] Enable/Disable Wintergrasp outdoorPvP.'),
('wg start', '3', 'Syntax: .wg start\r\nForce Wintergrasp battle start.'),
('wg status', '3', 'Syntax: .wg status\r\nWintergrasp info, defender, timer, wartime.'),
('wg stop', '3', 'Syntax: .wg stop\r\nForce Wintergrasp battle stop (No rewards).'),
('wg switch', '3', 'Syntax: .wg switch\r\nSwitchs Wintergrasp defender team.'),
('wg timer', '3', 'Syntax: .wg timer $minutes\r\nChange the current timer. Min value = 1, Max value 60 (Wartime), 1440 (Not Wartime)');

/* WG scriptname */
DELETE FROM `outdoorpvp_template` WHERE TypeId=8;
INSERT INTO `outdoorpvp_template` (`TypeId`, `ScriptName`, `comment`) VALUES 
('8', 'outdoorpvp_wg', 'Wintergrasp');

UPDATE `creature_template` SET `ScriptName` = 'npc_demolisher_engineerer' WHERE `entry` IN (30400,30499);

/* Teleport WG SPELLs*/
DELETE FROM `spell_target_position` WHERE id IN ('59096', '58632', '58633');
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('59096', '571', '5325.06', '2843.36', '409.285', '3.20278'),
('58632', '571', '5097.79', '2180.29', '365.61', '2.41'),
('58633', '571', '5026.80', '3676.69', '362.58', '3.94');

/* Defender's Portal Activate Proper Spell */
DELETE FROM `spell_linked_spell` WHERE spell_trigger=54640;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
('54640','54643','0','Defender\'s Portal Activate Proper Spell');

/* Temp removed gameobject stopping you getting to the relic
* 194323 - [Wintergrasp Keep Collision Wall X:5396.209961 Y:2840.010010 Z:432.268005 MapId:571
* 194162 - [Doodad_WG_Keep_Door01_collision01 X:5397.109863 Y:2841.540039 Z:425.901001 MapId:571]*/
DELETE FROM gameobject WHERE id IN ('194323', '194162');

/* Titan Relic remove */
DELETE FROM `gameobject` WHERE `id`=192829;

/* Towers */
UPDATE `gameobject_template` SET `faction` = 0, `flags` = 6553632 WHERE `entry` IN (190356,190357,190358);

/*Spirit healer FIX */
UPDATE creature_template SET npcflag=npcflag|32768 WHERE entry IN (31841,31842);

/* Creature template */
UPDATE creature_template SET faction_A = '1802', faction_H = '1802' WHERE entry IN (30499,28312,28319);
UPDATE creature_template SET faction_A = '1801', faction_H = '1801' WHERE entry IN (30400,32629,32627);
UPDATE creature_template SET npcflag=npcflag|32768 WHERE entry   IN (31841,31842);

/* spell target for build vehicles */
DELETE FROM `conditions` WHERE ConditionValue2=27852;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 0, 49899, 0, 18, 1, 27852, 0, 0, '', NULL),
(13, 0, 56575, 0, 18, 1, 27852, 0, 0, '', NULL),
(13, 0, 56661, 0, 18, 1, 27852, 0, 0, '', NULL),
(13, 0, 56663, 0, 18, 1, 27852, 0, 0, '', NULL),
(13, 0, 56665, 0, 18, 1, 27852, 0, 0, '', NULL),
(13, 0, 56667, 0, 18, 1, 27852, 0, 0, '', NULL),
(13, 0, 56669, 0, 18, 1, 27852, 0, 0, '', NULL),
(13, 0, 61408, 0, 18, 1, 27852, 0, 0, '', NULL);

/* Workshop */
UPDATE `gameobject_template` SET `faction` = 35 WHERE `entry` IN (192028,192029,192030,192031,192032,192033);

/*WG Spell area Data */
/*For wg antifly */
DELETE FROM `spell_area` WHERE spell IN (58730, 57940, 58045);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES
(58730, 4197, 0, 0, 0, 0, 0, 2, 1),
(58730, 4584, 0, 0, 0, 0, 0, 2, 1),
(58730, 4581, 0, 0, 0, 0, 0, 2, 1),
(58730, 4585, 0, 0, 0, 0, 0, 2, 1),
(58730, 4612, 0, 0, 0, 0, 0, 2, 1),
(58730, 4582, 0, 0, 0, 0, 0, 2, 1),
(58730, 4611, 0, 0, 0, 0, 0, 2, 1),
(58730, 4578, 0, 0, 0, 0, 0, 2, 1),
(58730, 4576, 0, 0, 0, 0, 0, 2, 1),
(58730, 4538, 0, 0, 0, 0, 0, 2, 1),
(57940, 65, 0, 0, 0, 0, 0, 2, 1),
(57940, 66, 0, 0, 0, 0, 0, 2, 1),
(57940, 67, 0, 0, 0, 0, 0, 2, 1),
(57940, 206, 0, 0, 0, 0, 0, 2, 1),
(57940, 210, 0, 0, 0, 0, 0, 2, 1),
(57940, 394, 0, 0, 0, 0, 0, 2, 1),
(57940, 395, 0, 0, 0, 0, 0, 2, 1),
(57940, 1196, 0, 0, 0, 0, 0, 2, 1),
(57940, 2817, 0, 0, 0, 0, 0, 2, 1),
(57940, 3456, 0, 0, 0, 0, 0, 2, 1),
(57940, 3477, 0, 0, 0, 0, 0, 2, 1),
(57940, 3537, 0, 0, 0, 0, 0, 2, 1),
(57940, 3711, 0, 0, 0, 0, 0, 2, 1),
(57940, 4100, 0, 0, 0, 0, 0, 2, 1),
(57940, 4196, 0, 0, 0, 0, 0, 2, 1),
(57940, 4228, 0, 0, 0, 0, 0, 2, 1),
(57940, 4264, 0, 0, 0, 0, 0, 2, 1),
(57940, 4265, 0, 0, 0, 0, 0, 2, 1),
(57940, 4272, 0, 0, 0, 0, 0, 2, 1),
(57940, 4273, 0, 0, 0, 0, 0, 2, 1),
(57940, 4395, 0, 0, 0, 0, 0, 2, 1),
(57940, 4415, 0, 0, 0, 0, 0, 2, 1),
(57940, 4416, 0, 0, 0, 0, 0, 2, 1),
(57940, 4493, 0, 0, 0, 0, 0, 2, 1),
(57940, 4494, 0, 0, 0, 0, 0, 2, 1),
(57940, 4603, 0, 0, 0, 0, 0, 2, 1),
(58045, 4197, 0, 0, 0, 0, 0, 2, 1);

/* Portal Dalaran->WG */
DELETE FROM `gameobject` WHERE `id`=193772;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(193772, 571, 1, 64, 5924.11, 573.387, 661.087, 4.43208, 0, 0, 0.798953, -0.601393, 300, 0, 1),
(193772, 571, 1, 65535, 5686.57, 772.921, 647.754, 5.62225, 0, 0, 0.324484, -0.945891, 600, 0, 1),
(193772, 571, 1, 65535, 5930.82, 548.961, 640.632, 1.88506, 0, 0, 0.809047, 0.587744, 300, 0, 1);


/* Wintergrasp Battle-Mage */
DELETE FROM `creature` WHERE `id`=32170;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(32170, 571, 1, 65535, 27801, 0, 5925.34, 573.71, 661.087, 4.06662, 300, 0, 0, 504000, 440700, 0, 0, 0, 0, 0),
(32170, 571, 1, 64, 0, 918, 5932.96, 549.906, 641.595, 2.09189, 300, 0, 0, 504000, 440700, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `ScriptName`='npc_wg_ally_battle_mage' WHERE `entry`=32169;
UPDATE `creature_template` SET `ScriptName`='npc_wg_horde_battle_mage' WHERE `entry`=32170;

UPDATE `gameobject_template` SET `type` = 6, `faction` = 0, `data2` = 10, `data3` = 54643, `ScriptName` = 'go_wg_veh_teleporter' WHERE `entry` = 192951;

DELETE FROM gameobject WHERE 
       id IN (192317,192335,192313,192316,192332,192331,192330,192329,192487,192310,192314,192308,192309,192324,192326,192312,192325,192304,187433,193984,193983,192377,192321,192318,192322,192320,192269,192273,192274,192277,192278,192280,192283,192284,192285,192289,192290,192336,192338,192339,192349,192350,192351,192352,192353,192354,192355,192356,192357,192358,192359,192360,192361,192362,192363,192364,192366,192367,192368,192369,192370,192371,192372,192373,192374,192375,192378,192379,192406,192407,192414,192416,192417,192418,192429,192433,192434,192435,192458,192459,192460,192461,192488,192501,192254,192255,192688,192686,180398,193764,193762,192319,192287,192323,192305,192286,192334,192307,192306,192328,192252,192253,192292,192299,192327,192267,192449,192450) 
          AND map=571;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
  (192317, 571, 1, 385, 5363.39, 2781.28, 435.634, 1.58825, 0, 0, 0, 1, 300, 255, 1)
, (192335, 571, 1, 385, 5363.72, 2763.25, 445.023, -1.54462, 0, 0, 0, 1, 300, 255, 1)
, (192313, 571, 1, 1, 5392.65, 3037.11, 433.713, -1.52716, 0, 0, -0.691512, 0.722365, 300, 0, 1)
, (192316, 571, 1, 385, 5322.01, 2781.13, 435.673, 1.57952, 0, 0, 0, 1, 300, 255, 1)
, (192332, 571, 1, 1, 5289.46, 2704.68, 435.875, -0.017451, 0, 0, -0.00872539, 0.999962, 300, 0, 1)
, (192331, 571, 1, 1, 5350.95, 2640.36, 435.408, 1.5708, 0, 0, 0.707108, 0.707106, 300, 0, 1)
, (192330, 571, 1, 1, 5392.27, 2639.74, 435.331, 1.50971, 0, 0, 0.685183, 0.728371, 300, 0, 1)
, (192329, 571, 1, 1, 5350.88, 2622.72, 444.686, -1.5708, 0, 0, -0.707108, 0.707106, 300, 0, 1)
, (192487, 571, 1, 1, 5278.38, 2613.83, 432.721, -1.58825, 0, 0, -0.713251, 0.700909, 300, 0, 1)
, (192487, 571, 1, 1, 5260.82, 2631.8, 433.324, 3.05433, 0, 0, 0.999048, 0.0436174, 300, 0, 1)
, (192310, 571, 1, 1, 5271.8, 2704.87, 445.183, -3.13286, 0, 0, -0.99999, 0.00436634, 300, 0, 1)
, (192314, 571, 1, 1, 5236.27, 2739.46, 444.992, -1.59698, 0, 0, -0.716303, 0.697789, 300, 0, 1)
, (192487, 571, 1, 1, 5163.78, 2729.68, 432.009, -1.58825, 0, 0, -0.713251, 0.700909, 300, 0, 1)
, (192308, 571, 1, 1, 5237.07, 2757.03, 435.796, 1.51844, 0, 0, 0.688356, 0.725373, 300, 0, 1)
, (192309, 571, 1, 1, 5235.34, 2924.34, 435.04, -1.5708, 0, 0, -0.707108, 0.707106, 300, 0, 1)
, (192487, 571, 1, 1, 5262.54, 3047.95, 430.979, 3.10665, 0, 0, 0.999847, 0.0174704, 300, 0, 1)
, (192487, 571, 1, 1, 5163.13, 2952.59, 433.503, 1.53589, 0, 0, 0.694658, 0.71934, 300, 0, 1)
, (192324, 571, 1, 1, 5235.19, 2942, 443.948, 1.58825, 0, 0, 0.713251, 0.700909, 300, 0, 1)
, (192326, 571, 1, 1, 5272.73, 2976.55, 443.81, 3.12412, 0, 0, 0.999962, 0.00873622, 300, 0, 1)
, (192312, 571, 1, 1, 5352.37, 3037.09, 435.252, -1.5708, 0, 0, -0.707108, 0.707106, 300, 0, 1)
, (192325, 571, 1, 1, 5290.35, 2976.56, 435.221, 0.017452, 0, 0, 0.00872589, 0.999962, 300, 0, 1)
, (192304, 571, 1, 385, 5397.76, 2873.08, 455.321, 3.10665, 0, 0, 0.999847, 0.0174704, 300, 0, 1)
, (187433, 571, 1, 1, 2832.84, 6184.45, 84.6827, -2.58308, 0, 0, 0, 0, 300, 100, 1)
, (187433, 571, 1, 1, 2835.96, 6180.37, 84.6827, 1.50098, 0, 0, 0, 0, 180, 100, 1)
, (187433, 571, 1, 1, 2830.12, 6188.96, 84.6827, -0.855211, 0, 0, 0, 0, 300, 100, 1)
, (187433, 571, 1, 1, 2831.88, 6188.72, 84.6827, -1.65806, 0, 0, 0, 0, 300, 100, 1)
, (193984, 571, 1, 1, 7647.47, 2055.55, 599.399, -0.279252, 0, 0, 0, 0, 300, 0, 1)
, (193984, 571, 1, 1, 7647.42, 2065.23, 599.308, 0.279252, 0, 0, 0, 0, 300, 0, 1)
, (193984, 571, 1, 1, 7609.86, 2055.53, 599.494, -2.86234, 0, 0, 0, 0, 300, 0, 1)
, (193984, 571, 1, 1, 7610.18, 2065.31, 599.426, 2.87979, 0, 0, 0, 0, 300, 0, 1)
, (193983, 571, 1, 1, 7906.95, 2053.04, 599.626, -0.296705, 0, 0, 0, 0, 300, 0, 1)
, (193983, 571, 1, 1, 7907.01, 2063.02, 599.587, 0.261798, 0, 0, 0, 0, 300, 0, 1)
, (193983, 571, 1, 1, 7870.43, 2053.35, 599.669, -2.87979, 0, 0, 0, 0, 180, 0, 1)
, (193983, 571, 1, 1, 7870.36, 2063.25, 599.628, 2.86234, 0, 0, 0, 0, 300, 0, 1)
, (192377, 571, 1, 1, 5414.19, 3069.8, 415.187, 1.64061, 0, 0, 0, 0, 5, 100, 1)
, (192321, 571, 1, 385, 5288.85, 2861.82, 435.591, 0.026179, 0, 0, 0, 1, 300, 255, 1)
, (192318, 571, 1, 385, 5322.25, 2898.95, 435.643, -1.57952, 0, 0, 0, 1, 300, 255, 1)
, (192322, 571, 1, 385, 5322.89, 2917.14, 445.154, 1.56207, 0, 0, 0, 1, 300, 255, 1)
, (192320, 571, 1, 385, 5289.05, 2820.23, 435.674, 0, 0, 0, 0, 1, 300, 255, 1)
, (192269, 571, 1, 1, 4526.46, 2810.18, 391.2, -2.99322, 0, 0, 0, 1, 180, 0, 1)
, (192273, 571, 1, 1, 4417.94, 2324.81, 371.577, 3.08051, 0, 0, 0, 1, 180, 0, 1)
, (192274, 571, 1, 1, 4424.15, 3286.54, 371.546, 3.12412, 0, 0, 0, 1, 180, 0, 1)
, (192277, 571, 1, 1, 4572.93, 3475.52, 363.009, 1.42244, 0, 0, 0, 1, 180, 0, 1)
, (192278, 571, 1, 1, 4433.9, 3534.14, 360.275, -1.85005, 0, 0, 0, 1, 180, 0, 1)
, (192280, 571, 1, 1, 4857.97, 3335.44, 368.881, -2.94959, 0, 0, 0, 1, 180, 0, 1)
, (192283, 571, 1, 1, 5006.34, 3280.4, 371.163, 2.22529, 0, 0, 0, 1, 180, 0, 1)
, (192284, 571, 1, 65, 5372.48, 2862.5, 409.049, 3.14159, 0, 0, 0, 1, 180, 0, 1)
, (192285, 571, 1, 65, 5371.49, 2820.8, 409.177, 3.14159, 0, 0, 0, 1, 180, 0, 1)
, (192289, 571, 1, 1, 4778.19, 2438.06, 345.644, -2.94088, 0, 0, 0, 1, 180, 0, 1)
, (192290, 571, 1, 1, 5024.57, 2532.75, 344.023, -1.93732, 0, 0, 0, 1, 180, 0, 1)
, (192336, 571, 1, 1, 5154.49, 2862.15, 445.012, 3.14159, 0, 0, 0, 1, 180, 0, 1)
, (192338, 571, 1, 65, 5397.76, 2873.08, 455.461, 3.10665, 0, 0, 0, 1, 180, 0, 1)
, (192339, 571, 1, 65, 5397.39, 2809.33, 455.344, 3.10665, 0, 0, 0, 1, 180, 0, 1)
, (192349, 571, 1, 1, 5155.31, 2820.74, 444.979, -3.13286, 0, 0, 0, 1, 180, 0, 1)
, (192350, 571, 1, 1, 5270.69, 2861.78, 445.058, -3.11539, 0, 0, 0, 1, 180, 0, 1)
, (192351, 571, 1, 1, 5271.28, 2820.16, 445.201, -3.13286, 0, 0, 0, 1, 180, 0, 1)
, (192352, 571, 1, 1, 5173.02, 2820.93, 435.72, 0.017452, 0, 0, 0, 1, 180, 0, 1)
, (192353, 571, 1, 1, 5172.11, 2862.57, 435.721, 0.017452, 0, 0, 0, 1, 180, 0, 1)
, (192354, 571, 1, 1, 5288.41, 2861.79, 435.721, 0.017452, 0, 0, 0, 1, 180, 0, 1)
, (192355, 571, 1, 1, 5288.92, 2820.22, 435.721, 0.017452, 0, 0, 0, 1, 180, 0, 1)
, (192356, 571, 1, 1, 5237.07, 2757.03, 435.796, 1.51844, 0, 0, 0, 1, 180, 0, 1)
, (192357, 571, 1, 1, 5235.34, 2924.34, 435.04, -1.5708, 0, 0, 0, 1, 180, 0, 1)
, (192358, 571, 1, 65, 5322.23, 2899.43, 435.808, -1.58825, 0, 0, 0, 1, 180, 0, 1)
, (192359, 571, 1, 65, 5364.35, 2899.4, 435.839, -1.5708, 0, 0, 0, 1, 180, 0, 1)
, (192360, 571, 1, 65, 5352.37, 3037.09, 435.252, -1.5708, 0, 0, 0, 1, 180, 0, 1)
, (192361, 571, 1, 65, 5392.65, 3037.11, 433.713, -1.52716, 0, 0, 0, 1, 180, 0, 1)
, (192362, 571, 1, 65, 5322.12, 2763.61, 444.974, -1.55334, 0, 0, 0, 1, 180, 0, 1)
, (192363, 571, 1, 65, 5363.61, 2763.39, 445.024, -1.54462, 0, 0, 0, 1, 180, 0, 1)
, (192364, 571, 1, 1, 5350.88, 2622.72, 444.686, -1.5708, 0, 0, 0, 1, 180, 0, 1)
, (192366, 571, 1, 1, 5236.27, 2739.46, 444.992, -1.59698, 0, 0, 0, 1, 180, 0, 1)
, (192367, 571, 1, 1, 5271.8, 2704.87, 445.183, -3.13286, 0, 0, 0, 1, 180, 0, 1)
, (192368, 571, 1, 65, 5289.46, 2704.68, 435.875, -0.017451, 0, 0, 0, 1, 180, 0, 1)
, (192369, 571, 1, 1, 5350.95, 2640.36, 435.408, 1.5708, 0, 0, 0, 1, 180, 0, 1)
, (192370, 571, 1, 1, 5392.27, 2639.74, 435.331, 1.50971, 0, 0, 0, 1, 180, 0, 1)
, (192371, 571, 1, 65, 5364.29, 2916.94, 445.331, 1.57952, 0, 0, 0, 1, 180, 0, 1)
, (192372, 571, 1, 65, 5322.86, 2916.95, 445.154, 1.56207, 0, 0, 0, 1, 180, 0, 1)
, (192373, 571, 1, 1, 5290.35, 2976.56, 435.221, 0.017452, 0, 0, 0, 1, 180, 0, 1)
, (192374, 571, 1, 1, 5272.94, 2976.55, 444.492, 3.12412, 0, 0, 0, 1, 180, 0, 1)
, (192375, 571, 1, 1, 5235.19, 2941.9, 444.278, 1.58825, 0, 0, 0, 1, 180, 0, 1)
, (192378, 571, 1, 65, 5322.02, 2781.13, 435.811, 1.5708, 0, 0, 0, 1, 180, 0, 1)
, (192379, 571, 1, 65, 5363.42, 2781.03, 435.763, 1.5708, 0, 0, 0, 1, 180, 0, 1)
, (192406, 571, 1, 1, 4438.3, 3361.08, 371.568, -0.017451, 0, 0, 0, 1, 180, 0, 1)
, (192407, 571, 1, 1, 4448.17, 3235.63, 370.412, -1.56207, 0, 0, 0, 1, 180, 0, 1)
, (192414, 571, 1, 1, 4387.62, 2719.57, 389.935, -1.54462, 0, 0, 0, 1, 180, 0, 1)
, (192416, 571, 1, 1, 4408.57, 2422.61, 377.179, 1.58825, 0, 0, 0, 1, 180, 0, 1)
, (192417, 571, 1, 1, 4416.59, 2414.08, 377.196, 0, 0, 0, 0, 1, 180, 0, 1)
, (192418, 571, 1, 1, 4417.25, 2301.14, 377.214, 0.026179, 0, 0, 0, 1, 180, 0, 1)
, (192429, 571, 1, 1, 4464.12, 2855.45, 406.111, 0.829032, 0, 0, 0, 1, 180, 0, 1)
, (192433, 571, 1, 1, 4401.63, 3377.46, 363.365, 1.55334, 0, 0, 0, 1, 180, 0, 1)
, (192434, 571, 1, 1, 5041.61, 3294.4, 382.15, -1.63188, 0, 0, 0, 1, 180, 0, 1)
, (192435, 571, 1, 1, 4855.63, 3297.62, 376.739, -3.13286, 0, 0, 0, 1, 180, 0, 1)
, (192458, 571, 1, 1, 4811.4, 2441.9, 358.207, -2.0333, 0, 0, 0, 1, 180, 0, 1)
, (192459, 571, 1, 1, 4805.67, 2407.48, 358.191, 1.78023, 0, 0, 0, 1, 180, 0, 1)
, (192460, 571, 1, 1, 5004.35, 2486.36, 358.449, 2.17294, 0, 0, 0, 1, 180, 0, 1)
, (192461, 571, 1, 1, 4983.28, 2503.09, 358.177, -0.427603, 0, 0, 0, 1, 180, 0, 1)
, (192488, 571, 1, 1, 5160.34, 2798.61, 430.769, 3.14159, 0, 0, 0, 1, 180, 0, 1)
, (192488, 571, 1, 1, 5158.81, 2883.13, 431.618, 3.14159, 0, 0, 0, 1, 180, 0, 1)
, (192488, 571, 1, 1, 5278.38, 2613.83, 433.409, -1.58825, 0, 0, 0, 1, 180, 0, 1)
, (192488, 571, 1, 1, 5260.82, 2631.8, 433.324, 3.05433, 0, 0, 0, 1, 180, 0, 1)
, (192488, 571, 1, 1, 5163.13, 2952.59, 433.503, 1.53589, 0, 0, 0, 1, 180, 0, 1)
, (192488, 571, 1, 1, 5145.11, 2935, 433.386, 3.14159, 0, 0, 0, 1, 180, 0, 1)
, (192488, 571, 1, 1, 5262.54, 3047.95, 432.055, 3.10665, 0, 0, 0, 1, 180, 0, 1)
, (192488, 571, 1, 1, 5146.04, 2747.21, 433.584, 3.07177, 0, 0, 0, 1, 180, 0, 1)
, (192488, 571, 1, 1, 5163.78, 2729.68, 433.394, -1.58825, 0, 0, 0, 1, 180, 0, 1)
, (192501, 571, 1, 1, 4398.82, 2804.7, 429.792, -1.58825, 0, 0, 0, 1, 180, 0, 1)
, (192501, 571, 1, 1, 4416, 2822.67, 429.851, -0.017452, 0, 0, 0, 1, 180, 0, 1)
, (192501, 571, 1, 1, 4559.11, 3606.22, 419.999, -1.48353, 0, 0, 0, 1, 180, 0, 1)
, (192501, 571, 1, 1, 4539.42, 3622.49, 420.034, -3.07177, 0, 0, 0, 1, 180, 0, 1)
, (192501, 571, 1, 1, 4555.26, 3641.65, 419.974, 1.67551, 0, 0, 0, 1, 180, 0, 1)
, (192501, 571, 1, 1, 4574.87, 3625.91, 420.079, 0.087266, 0, 0, 0, 1, 180, 0, 1)
, (192501, 571, 1, 1, 4466.79, 1960.42, 459.144, 1.15192, 0, 0, 0, 1, 180, 0, 1)
, (192501, 571, 1, 1, 4475.35, 1937.03, 459.07, -0.436332, 0, 0, 0, 1, 180, 0, 1)
, (192501, 571, 1, 1, 4451.76, 1928.1, 459.076, -2.00713, 0, 0, 0, 1, 180, 0, 1)
, (192501, 571, 1, 1, 4442.99, 1951.9, 459.093, 2.74016, 0, 0, 0, 1, 180, 0, 1)
, (192254, 571, 1, 1, 5154.46, 2828.94, 409.189, 3.14159, 0, 0, 0, 1, 180, 0, 1)
, (192255, 571, 1, 1, 5154.52, 2853.31, 409.183, 3.14159, 0, 0, 0, 1, 180, 0, 1)
, (192688, 571, 1, 1, 5916.1, 566.209, 639.625, -2.72271, 0, 0, 0, 1, 180, 100, 1)
, (192686, 571, 1, 1, 5664.81, 791.002, 653.698, -0.663223, 0, 0, 0, 1, 180, 100, 1)
, (180398, 571, 1, 1, 5665.02, 790.2, 653.698, -0.610864, 0, 0, 0, 1, 180, 100, 1)
, (192487, 571, 1, 256, 4855.63, 3297.62, 376.281, -3.13286, 0, 0, -0.99999, 0.00436634, 300, 0, 1)
, (192290, 571, 1, 256, 4526.46, 2810.18, 391.2, -2.99322, 0, 0, -0.997249, 0.0741182, 300, 0, 1)
, (192487, 571, 1, 256, 4517.75, 2717.23, 387.812, -1.53589, 0, 0, -0.694658, 0.71934, 300, 0, 1)
, (192488, 571, 1, 256, 4475.35, 1937.03, 459.07, -0.436332, 0, 0, -0.216439, 0.976296, 300, 0, 1)
, (192488, 571, 1, 256, 4451.76, 1928.1, 459.076, -2.00713, 0, 0, -0.843392, 0.537299, 300, 0, 1)
, (192488, 571, 1, 256, 4442.99, 1951.9, 459.093, 2.74016, 0, 0, 0.979924, 0.199371, 300, 0, 1)
, (192488, 571, 1, 256, 4466.8, 1960.44, 459.841, 1.15192, 0, 0, 0.54464, 0.83867, 300, 0, 1)
, (192487, 571, 1, 256, 5041.61, 3294.4, 382.15, -1.63188, 0, 0, -0.72837, 0.685184, 300, 0, 1)
, (192278, 571, 1, 256, 5006.34, 3280.4, 371.163, 2.22529, 0, 0, 0.896872, 0.442291, 300, 0, 1)
, (192278, 571, 1, 256, 4857.97, 3335.44, 368.881, -2.94959, 0, 0, -0.995395, 0.0958539, 300, 0, 1)
, (192290, 571, 1, 256, 4433.9, 3534.14, 360.275, -1.85005, 0, 0, -0.798636, 0.601815, 300, 0, 1)
, (192290, 571, 1, 256, 4572.93, 3475.52, 363.009, 1.42244, 0, 0, 0.652758, 0.757566, 300, 0, 1)
, (192488, 571, 1, 256, 4555.26, 3641.65, 419.974, 1.67551, 0, 0, 0.743143, 0.669133, 300, 0, 1)
, (192488, 571, 1, 256, 4574.87, 3625.91, 420.079, 0.087266, 0, 0, 0.0436192, 0.999048, 300, 0, 1)
, (192488, 571, 1, 256, 4559.11, 3606.22, 419.999, -1.48353, 0, 0, -0.67559, 0.737277, 300, 0, 1)
, (192488, 571, 1, 256, 4539.42, 3622.49, 420.034, -3.07177, 0, 0, -0.999391, 0.0349043, 300, 0, 1)
, (192290, 571, 1, 256, 4401.63, 3377.46, 363.365, 1.55334, 0, 0, 0.700908, 0.713252, 300, 0, 1)
, (192488, 571, 1, 256, 4448.17, 3235.63, 370.412, -1.56207, 0, 0, -0.704015, 0.710185, 300, 0, 1)
, (192488, 571, 1, 256, 4438.3, 3361.08, 371.299, -0.017451, 0, 0, -0.00872539, 0.999962, 300, 0, 1)
, (192290, 571, 1, 256, 4424.15, 3286.54, 371.546, 3.12412, 0, 0, 0.999962, 0.00873622, 300, 0, 1)
, (192461, 571, 1, 1, 4416.03, 2822.68, 430.475, -0.017452, 0, 0, -0.00872589, 0.999962, 300, 0, 1)
, (192461, 571, 1, 1, 4464.12, 2855.45, 406.111, 0.829032, 0, 0, 0.402747, 0.915311, 300, 0, 1)
, (192461, 571, 1, 1, 4398.82, 2804.7, 429.792, -1.58825, 0, 0, -0.713251, 0.700909, 300, 0, 1)
, (192461, 571, 1, 1, 4408.57, 2422.61, 377.179, 1.58825, 0, 0, 0.713251, 0.700909, 300, 0, 1)
, (192461, 571, 1, 1, 4416.59, 2414.08, 377.13, 0, 0, 0, 0, 1, 300, 0, 1)
, (192461, 571, 1, 1, 4417.25, 2301.14, 377.214, 0.026179, 0, 0, 0.0130891, 0.999914, 300, 0, 1)
, (192418, 571, 1, 1, 4805.67, 2407.48, 358.191, 1.78023, 0, 0, 0.777144, 0.629323, 300, 0, 1)
, (192418, 571, 1, 1, 4811.4, 2441.9, 358.207, -2.0333, 0, 0, -0.85035, 0.526218, 300, 0, 1)
, (192273, 571, 1, 1, 4778.19, 2438.06, 345.644, -2.94088, 0, 0, -0.994969, 0.100188, 300, 0, 1)
, (192273, 571, 1, 1, 5024.57, 2532.75, 344.023, -1.93732, 0, 0, -0.824127, 0.566404, 300, 0, 1)
, (192418, 571, 1, 1, 5004.35, 2486.36, 358.449, 2.17294, 0, 0, 0.884989, 0.465612, 300, 0, 1)
, (192418, 571, 1, 1, 4983.28, 2503.09, 358.177, -0.427603, 0, 0, -0.212176, 0.977231, 300, 0, 1)
, (192290, 571, 1, 1, 4417.94, 2324.81, 371.577, 3.08051, 0, 0, 0.999534, 0.0305366, 300, 0, 1)
, (193764, 571, 1, 1, 7625.87, 2060.05, 604.27, 0.07854, 0, 0, 0.99999, 0.004363, 180, 255, 1)
, (193762, 571, 1, 1, 7625.66, 2060.04, 604.195, -3.05428, 0, 0, 0.99999, 0.004363, 180, 255, 1)
, (192319, 571, 1, 385, 5364.3, 2899.22, 435.691, -1.55334, 0, 0, 0, 1, 300, 255, 1)
, (192287, 571, 1, 385, 5372.42, 2862.48, 409.366, 3.14159, 0, 0, 0, 1, 300, 255, 1)
, (192323, 571, 1, 385, 5364.28, 2917.26, 445.332, 1.58825, 0, 0, 0, 1, 300, 255, 1)
, (192305, 571, 1, 385, 5397.31, 2809.26, 455.102, 3.13286, 0, 0, 0, 1, 300, 255, 1)
, (192286, 571, 1, 385, 5371.45, 2820.79, 409.427, 3.12412, 0, 0, 0, 1, 300, 255, 1)
, (192334, 571, 1, 385, 5322.17, 2763.2, 444.974, -1.56207, 0, 0, 0, 1, 300, 255, 1)
, (192307, 571, 1, 385, 5271.16, 2820.11, 445.109, -3.13286, 0, 0, 0, 1, 300, 255, 1)
, (192306, 571, 1, 385, 5270.56, 2861.68, 444.917, -3.12412, 0, 0, 0, 1, 300, 255, 1)
, (192487, 571, 1, 385, 5160.28, 2798.6, 430.604, -3.12412, 0, 0, 0, 1, 300, 255, 1)
, (192487, 571, 1, 385, 5146.04, 2747.3, 433.527, 3.12412, 0, 0, 0, 1, 300, 255, 1)
, (192328, 571, 1, 385, 5173.13, 2820.96, 435.658, 0.026179, 0, 0, 0, 1, 300, 255, 1)
, (192252, 571, 1, 385, 5154.37, 2853.23, 409.183, 3.14159, 0, 0, 0, 1, 300, 255, 1)
, (192253, 571, 1, 385, 5154.42, 2828.93, 409.189, 3.14159, 0, 0, 0, 1, 300, 255, 1)
, (192292, 571, 1, 385, 5154.35, 2862.08, 445.01, 3.14159, 0, 0, 0, 1, 300, 255, 1)
, (192299, 571, 1, 385, 5155.22, 2820.63, 444.979, -3.11539, 0, 0, 0, 1, 300, 255, 1)
, (192327, 571, 1, 385, 5172.34, 2862.57, 435.658, 0, 0, 0, 0, 1, 300, 255, 1)
, (192487, 571, 1, 385, 5158.71, 2882.9, 431.274, 3.14159, 0, 0, 0, 1, 300, 255, 1)
, (192487, 571, 1, 385, 5145.11, 2934.95, 433.255, -3.10665, 0, 0, 0, 1, 300, 255, 1)
, (192267, 571, 1, 385, 4452.76, 2639.14, 358.444, 1.67552, 0, 0, 0, 1, 300, 255, 1)
, (192449, 571, 1, 385, 4517.75, 2717.23, 387.812, -1.53589, 0, 0, 0, 1, 300, 255, 1)
, (192450, 571, 1, 385, 4387.59, 2719.9, 390.201, -1.51843, 0, 0, 0, 1, 300, 255, 1);

-- Instances
-- Vaul of Archavon
DELETE FROM spell_script_names WHERE spell_id = 66765;
INSERT INTO spell_script_names VALUES 
(66765, 'spell_koralon_meteor_fists');

DELETE FROM `creature_model_info` WHERE (`modelid`=29524);
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (29524, 0.45, 8, 2, 0);

-- Ankhanet
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (59465,56312,60342);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) 
VALUES
(13, 59465, 18, 1, 30178),
(13, 56312, 18, 1, 29310),
(13, 60342, 18, 1, 29310);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (57055, 56648);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) 
VALUES
(57055, -56648, 1, 'Amanitar: Remove Potent Fungus'),
(56648, -57055, 1, 'Amanitar: Remove Mini');
UPDATE `creature_template` SET `scale` = 1 WHERE `entry` IN (31461, 31462);
UPDATE `creature_template` SET `dmg_multiplier` = 20, `flags_extra` = `flags_extra`|1 WHERE `entry` IN (31456,31463,31464,31465,31469);
UPDATE `creature_template` SET `dmg_multiplier` = 0.75 WHERE `entry` = 30625;
UPDATE `creature_template` SET `dmg_multiplier` = 1.5 WHERE `entry` = 31480;
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|4|8|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|67108864|536870912 WHERE `entry` IN (29308,29309,29310,29311,30385,30114,31456,31463,31464,31465,31469,31474,31473);
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask` &~ 4 WHERE `entry` IN (29310,31465);

-- Crusader Coliseum
DELETE FROM `gameobject` WHERE `map`=649;
INSERT INTO `gameobject` VALUES
(500000,195527,649,15,1,563.678,177.284,398.621,1.57047,0,0,0,0,0,100,0),
(500001,195647,649,15,1,563.678,199.329,394.766,1.58619,0,0,0,0,0,100,1),
(500002,195650,649,15,1,624.656,139.342,395.261,0.00202179,0,0,0,0,0,100,1),
(500003,195648,649,15,1,563.671,78.459,395.261,4.69083,0,0,0,0,0,100,0),
(500004,195649,649,15,1,502.674,139.302,395.26,3.14933,0,0,0,0,0,100,1),
(500046,195594,649,1,1,563.72,77.1442,396.336,1.559,0,0,0.715397,-0.698718,300,0,1),
(500048,195595,649,2,1,563.72,77.1442,396.336,1.559,0,0,0.715397,-0.698718,300,0,1),
(500050,195596,649,8,1,563.72,77.1442,396.336,1.559,0,0,0.715397,-0.698718,300,0,1),
(500052,195593,649,4,1,563.72,77.1442,396.336,1.559,0,0,0.715397,-0.698718,300,0,1);
DELETE FROM `creature` WHERE `map`=649;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(604905,34990,649,15,1,0,0,624.633,139.386,418.209,3.15008,300,0,0,8367000,0,0,0),
(604903,34996,649,15,1,0,547,563.697,78.3457, 418.21,1.55937,300,0,0,13945000,4258,0,0),
(604907,34995,649,15,1,0,0,502.825,139.407,418.211,0.0163429,300,0,0,1394500,0,0,0),
(604911,34816,649,15,1,0,0,556.27,89.0785,395.241,1.05514,300,0,0,126000,0,0,0),
(504913,34564,649,15,1,0,0,783.237,133.477,142.576,3.06614,300,0,0,4183500,0,0,0);
SET @id := -1760000;
DELETE FROM `script_texts` WHERE `entry` BETWEEN @id-76 AND @id;
INSERT INTO `script_texts` (npc_entry, entry, content_default, sound, type, language, emote, comment) VALUES
(34995, @id, "Welcome champions, you have heard the call of the Argent Crusade and you have boldly answered. It is here in the crusaders coliseum that you will face your greatest challenges. Those of you who survive the rigors of the coliseum will join the Argent Crusade on its marsh to ice crown citadel.", 16036, 1, 0, 0, "Trial of the Crusader - welcome"),
(36095, @id-1, "Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!", 16038, 1, 0, 0, "Gormok the Impaler - intro"),
(36095, @id-2, "Steel yourselves, heroes, for the twin terrors Acidmaw and Dreadscale. Enter the arena!", 16039, 1, 0, 0, "Acidmaw and Dreadscale - intro"),
(34799, @id-3, "At its companion perishes, %s becomes enraged!", 0, 3, 0, 0, "Acidmaws adn dreadscales enrage emote"),
(36095, @id-4, "The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!", 16040, 1, 0, 0, "Icehowl - intro"),
(34995, @id-5, "The monstrous menagerie has been vanquished!", 16041, 1, 0, 0, "Beasts of Northrend - victory"),
(36095, @id-6, "Tragic... They fought valiantly, but the beasts of Northrend triumphed. Let us observe a moment of silence for our fallen heroes.", 16042, 1, 0, 0, "Raid wipe"),
(36095, @id-7, "Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!", 16043, 1, 0, 0, "Lord Jaraxxus - intro"),
(35458, @id-8, "Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!", 16268, 1, 0, 0, "Lord Jaraxxus - intro2"),
(35458, @id-9, "Prepare for oblivion!", 16269, 1, 0, 0, "Wilfred Fizzlebang - summoning"),
(35458, @id-10, "Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!", 16270, 1, 0, 0, "Lord Jaraxxus - portal"),
(34780, @id-11, "Trifling gnome, your arrogance will be your undoing!", 16143, 1, 0, 0, "Lord Jaraxxus - intro3"),
(35458, @id-12, "But I'm in charge her-", 16271, 1, 0, 0, "Wilfred Fizzlebang - die"),
(36095, @id-13, "Quickly, heroes! Destroy the demon lord before it can open a portal to its twisted demonic realm!", 16044, 1, 0, 0, "Lord Jaraxxus - intro4"),
(34780, @id-14, "You face Jaraxxus, eredar lord of the Burning Legion!", 16144, 1, 0, 0, "Lord Jaraxxus - aggro"),
(34780, @id-15, "FLESH FROM BONE!", 16149, 1, 0, 0, "Lord Jaraxxus - Incinerate Flesh"),
(34780, @id-16, "$n has |cFF00FFFFIncinerate flesh!|R Heal $ghim:her;!", 0, 3, 0, 0, "Lord Jaraxxus - incinerate flesh's emote for players"),
(34780, @id-17, "Come forth, sister! Your master calls!", 16150, 1, 0, 0, "Lord Jaraxxus - Summoning Mistress of Pain"),
(34780, @id-18, "INFERNO!", 16151, 1, 0, 0, "Lord Jaraxxus - Summoning Infernals"),
(34780, @id-19, "Insignificant gnat!", 16145, 1, 0, 0, "Lord Jaraxxus - killing a player1"),
(34780, @id-20, "Banished to the Nether!", 16146, 1, 0, 0, "Lord Jaraxxus - killing a player2"),
(34780, @id-21, "Another will take my place. Your world is doomed.", 16147, 1, 0, 0, "Lord Jaraxxus - death"),
(36095, @id-22, "The loss of Wilfred Fizzlebang, while unfortunate, should be a lesson to those that dare dabble in dark magic. Alas, you are victorious and must now face the next challenge.", 16045, 1, 0, 0, "Lord Jaraxxus - outro"),
(34995, @id-23, "Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde!? Your deaths will be swift!", 16021, 1, 0, 0, "Garrosh Hellscream - Jaraxxus outro"),
(34990, @id-24, "The Alliance doesn't need the help of a demon lord to deal with Horde filth. Come, pig!", 16064, 1, 0, 0, "Varian Wrynn - Jaraxxus outro"),
(36095, @id-25, "Everyone, calm down! Compose yourselves! There is no conspiracy at play here. The warlock acted on his own volition - outside of influences from the Alliance. The tournament must go on!", 16046, 1, 0, 0, "Lord Jaraxxus - intro"),
(36095, @id-26, "The next battle will be against the Argent Crusade's most powerful knights! Only by defeating them will you be deemed worthy...", 16047, 1, 0, 0, "Faction Champions - intro"),
(34995, @id-27, "The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!", 16023, 1, 0, 0, "Faction Champions - intro2, Ally"),
(34990, @id-28, "Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!", 16066, 1, 0, 0, "Faction Champions - intro2, Horda"),
(36095, @id-29, "Very well, I will allow it. Fight with honor!", 16048, 1, 0, 0, "Faction Champions - intro3"),
(34995, @id-30, "Show them no mercy, Horde champions! LOK'TAR OGAR!", 16022, 1, 0, 0, "Faction Champions - intro4, Ally"),
(34995, @id-31, "Fight for the glory of the Alliance, heroes! Honor your king and your people!", 16065, 1, 0, 0, "Faction Champions - intro4, Horda"),
(34995, @id-32, "Weakling!", 16017, 1, 0, 0, "Faction Champions - killing an alliance player1"),
(34995, @id-33, "Pathetic!", 16018, 1, 0, 0, "Faction Champions - killing an alliance player2"),
(34995, @id-34, "Overpowered.", 16019, 1, 0, 0, "Faction Champions - killing an alliance player3"),
(34995, @id-35, "Lok'tar!", 16020, 1, 0, 0, "Faction Champions - killing an alliance player4"),
(34990, @id-36, "HAH!", 16060, 1, 0, 0, "Faction Champions - killing an horde player1"),
(34990, @id-37, "Hardly a challenge!", 16061, 1, 0, 0, "Faction Champions - killing an horde player2"),
(34990, @id-38, "Worthless scrub.", 16062, 1, 0, 0, "Faction Champions - killing an horde player3"),
(34990, @id-39, "Is this the best the Horde has to offer?", 16063, 1, 0, 0, "Faction Champions - killing an horde player4"),
(34990, @id-40, "Glory to the Alliance!", 16067, 1, 0, 0, "Faction Champions - victory as ally"),
(34995, @id-41, "That was just a taste of what the future brings. FOR THE HORDE!", 16024, 1, 0, 0, "Faction Champions - victory as horde"),
(36095, @id-42, "A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death.", 16049, 1, 0, 0, "Faction Champions - outro"),
(36095, @id-43, "Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourge's most powerful lieutenants: fearsome val'kyr, winged harbingers of the Lich King!", 16050, 1, 0, 0, "Twin Valkyrs - intro"),
(36095, @id-44, "Let the games begin!", 16037, 1, 0, 0, "Twin Valkyrs - intro2"),
(34497, @id-45, "In the name of our dark master. For the Lich King. You. Will. Die.", 16272, 1, 0, 0, "Fjola - aggro"),
(34496, @id-46, "In the name of our dark master. For the Lich King. You. Will. Die.", 16272, 1, 0, 0, "Eydis - aggro"),
(34497, @id-47, "CHAOS!", 16274, 1, 0, 0, "Fjola - casting twins pact"),
(34496, @id-48, "CHAOS!", 16274, 1, 0, 0, "Eydis - casting twins pact"),
(34497, @id-49, "Let the dark consume you!", 16278, 1, 0, 0, "Fjola - casting dark vortex"),
(34496, @id-50, "Let the dark consume you!", 16278, 1, 0, 0, "Eydis - casting dark vortex"),
(34497, @id-51, "Let the light consume you!", 16279, 1, 0, 0, "Fjola - casting light vortex"),
(34496, @id-52, "Let the light consume you!", 16279, 1, 0, 0, "Eydis - casting light vortex"),
(34497, @id-53, "UNWORTHY!", 16277, 1, 0, 0, "Fjola - killing a player1"),
(34496, @id-54, "UNWORTHY!", 16277, 1, 0, 0, "Eydis - kiling a player1"),
(34497, @id-56, "You have been measured, and found wanting!", 16276, 1, 0, 0, "Fjola - killing a player2"),
(34496, @id-57, "You have been measured, and found wanting!", 16276, 1, 0, 0, "Eydis - kiling a player2"),
(34497, @id-58, "You are finished!", 16273, 1, 0, 0, "Fjola - berserk"),
(34496, @id-59, "You are finished!", 16273, 1, 0, 0, "Eydis - berserk"),
(34497, @id-60, "The Scourge cannot be stopped...", 16275, 1, 0, 0, "Fjola - death"),
(34496, @id-61, "The Scourge cannot be stopped...", 16275, 1, 0, 0, "Eydis - death"),
(34995, @id-62, "Do you still question the might of the Horde, paladin? We will take on all comers!", 16025, 1, 0, 0, "Twin Valkyrs - victory as horde"),
(34990, @id-63, "Not even the Lich King most powerful minions can stand against the Alliance! All hail our victors!", 16068, 1, 0, 0, "Twin Valkyrs - victory as alliance"),
(36095, @id-64, "A mighty blow has been dealt to the Lich King! You have proven yourselves as able bodied champions of the Argent Crusade. Together we will strike at Icecrown Citadel and destroy what remains of the Scourge! There is no challenge that we cannot face united!", 16051, 1, 0, 0, "Anub'arak - intro1"),
(35877, @id-65, "You will have your challenge, Fordring.", 16321, 1, 0, 0, "Anub'arak - intro2"),
(36095, @id-66, "Arthas! You are hopelessly outnumbered! Lay down Frostmourne and I will grant you a just death.", 16052, 1, 0, 0, "Anub'arak - intro3"),
(35877, @id-67, "The Nerubians built an empire beneath the frozen wastes of Northrend. An empire that you so foolishly built your structures upon. MY EMPIRE.", 16322, 1, 0, 0, "Anub'arak - intro4"),
(35877, @id-68, "The souls of your fallen champions will be mine, Fordring.", 16323, 1, 0, 0, "Anub'arak - intro5"),
(34564, @id-69, "Ahhh... Our guests arrived, just as the master promised.", 16235, 1, 0, 0, "Anub'arak - intro6"),
(34564, @id-70, "This place will serve as your tomb!", 16234, 1, 0, 0, "Anub'arak - aggro"),
(34564, @id-71, "Auum na-l ak-k-k-k, isshhh. Rise, minions. Devour...", 16240, 1, 0, 0, "Anub'arak - submerge"),
(34564, @id-72, "The swarm shall overtake you!", 16241, 1, 0, 0, "Anub'arak - leeching swarm"),
(34564, @id-73, "F-lakkh shir!", 16236, 1, 0, 0, "Anub'arak - killing a player1"),
(34564, @id-74, "Another soul to sate the host.", 16237, 1, 0, 0, "Anub'arak - killing a player2"),
(34564, @id-75, "I have failed you, master....", 16238, 1, 0, 0, "Anub'arak - death"),
(36095, @id-76, "Champions, you're alive! Not only have you defeated every challenge of the Trial of the Crusader, but thwarted Arthas directly! Your skill and cunning will prove to be a powerful weapon against the Scourge. Well done! Allow one of my mages to transport you back to the surface!", 0, 1, 0, 0, "Anub'arak - outro");
UPDATE creature_template SET ScriptName="boss_gormok_the_impaler" WHERE entry=34796;
UPDATE creature_template SET ScriptName="boss_acidmaw" WHERE entry=35144;
UPDATE creature_template SET ScriptName="boss_dreadscale" WHERE entry=34799;
UPDATE creature_template SET scriptname="mob_slime_pool" WHERE entry = 35176;
UPDATE creature_template SET ScriptName="boss_icehowl" WHERE entry=34797;
UPDATE creature_template SET ScriptName="mob_snobold" WHERE entry=34800;
UPDATE creature_template SET ScriptName="boss_lord_jaraxxus" WHERE entry=34780;
UPDATE creature_template SET scriptname="mob_misstress_of_pain" WHERE entry=34826;
UPDATE creature_template SET scriptname="mob_felflame_infernal" WHERE entry=34815;
UPDATE creature_template SET scriptname="mob_jaraxxus_vulcan" WHERE entry=34813;
UPDATE creature_template SET scriptname="mob_jaraxxus_portal" WHERE entry=34825;
UPDATE creature_template SET scriptname="mob_legion_flame" WHERE entry = 34784;
UPDATE creature_template SET scriptname="mob_toc_warrior" WHERE entry IN (34475,34453);
UPDATE creature_template SET scriptname="mob_toc_mage" WHERE entry IN (34468,34449);
UPDATE creature_template SET scriptname="mob_toc_shaman" WHERE entry IN (34470,34444);
UPDATE creature_template SET scriptname="mob_toc_enh_shaman" WHERE entry IN (34463,34455);
UPDATE creature_template SET scriptname="mob_toc_hunter" WHERE entry IN (34467,34448);
UPDATE creature_template SET scriptname="mob_toc_rogue" WHERE entry IN (34472,34454);
UPDATE creature_template SET scriptname="mob_toc_priest" WHERE entry IN (34466,34447);
UPDATE creature_template SET scriptname="mob_toc_shadow_priest" WHERE entry IN (34473,34441);
UPDATE creature_template SET scriptname="mob_toc_dk" WHERE entry IN (34461,34458);
UPDATE creature_template SET scriptname="mob_toc_paladin" WHERE entry IN (34465,34445);
UPDATE creature_template SET scriptname="mob_toc_retro_paladin" WHERE entry IN (34471,34456);
UPDATE creature_template SET scriptname="mob_toc_druid" WHERE entry IN (34469,34459);
UPDATE creature_template SET scriptname="mob_toc_boomkin" WHERE entry IN (34460,34451);
UPDATE creature_template SET scriptname="mob_toc_warlock" where entry IN (34474,34450);
UPDATE creature_template SET scriptname="mob_toc_pet_warlock" WHERE entry IN (35465);
UPDATE creature_template SET scriptname="mob_toc_pet_hunter" WHERE entry IN (35610);
UPDATE creature_template SET ScriptName="boss_light_twin" WHERE entry=34497;
UPDATE creature_template SET ScriptName="boss_dark_twin" WHERE entry=34496;
UPDATE `creature_template` SET `ScriptName` = 'npc_arcanist_hathorel' WHERE `entry` = 36670;
UPDATE `creature_template` SET `ScriptName` = 'npc_arcanist_tybalin' WHERE `entry` = 36669;
UPDATE creature_template SET ScriptName="light_essence" WHERE entry=34568;
UPDATE creature_template SET ScriptName="dark_essence" WHERE entry=34567;
UPDATE creature_template SET ScriptName="mob_concetrated_light" WHERE entry=34630;
UPDATE creature_template SET ScriptName="mob_concetrated_dark" WHERE entry=34628;
UPDATE creature_template SET ScriptName="boss_anubarak_trial" WHERE entry=34564;
UPDATE creature_template SET ScriptName="mob_swarm_scarab" WHERE entry=34605;
UPDATE creature_template SET ScriptName="mob_nerubian_burrower" WHERE entry=34607;
UPDATE creature_template SET scriptname="mob_anubarak_spike" WHERE entry=34660;
UPDATE creature_template SET ScriptName="mob_frost_sphere" WHERE entry = 34606;
UPDATE creature_template SET ScriptName="toc_tirion_fordring" WHERE entry=34996;
UPDATE creature_template SET ScriptName="toc_barrett_ramsey" WHERE entry=34816;
UPDATE instance_template SET script="instance_trial_of_the_crusader" WHERE map=649; 
UPDATE creature_template SET npcflag=1 WHERE entry IN(34816, 3481601, 3481602, 3481603, 34568, 3456801, 3456802, 3456803, 34567, 3456701, 3456702, 3456703);
UPDATE creature_template SET IconName="Interact" WHERE entry IN(34568, 3456801, 3456802, 3456803, 34567, 3456701, 3456702, 3456703);
UPDATE creature_template SET unit_flags=4 WHERE entry IN(34813, 3481301, 3481302, 3481303, 34825, 3482501, 3482502, 3482503);
UPDATE creature_template SET unit_flags=unit_flags|4 WHERE entry in (34784, 3478401, 3478402, 3478403);
UPDATE creature_template SET modelid1=30039, modelid2=30039 where entry IN (348125, 3482501, 3482502, 3482503);
UPDATE creature_template SET faction_A=189, faction_H=189 WHERE entry IN (34605, 3460501, 3460502, 3460503);
UPDATE creature_template SET flags_extra=2 WHERE entry IN (34630, 3463001, 3463002, 3463003, 34628, 3462801, 3462802, 3462803);
DELETE FROM `gameobject_loot_template` WHERE entry IN (195665,195666,195667,195668,195669,195670,195671,195672);
DELETE FROM `gameobject_template` WHERE entry IN (195665,195666,195667,195668);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
(195665, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27514, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195666, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27515, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195667, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27516, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195668, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27513, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723);
DELETE FROM `gameobject_template` WHERE entry IN (195669,195670,195671,195672);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
(195669, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27512, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195670, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27517, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195671, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27518, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723),
(195672, 3, 9069, 'Argent Crusade Tribute Chest', '', '', '', 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 1634, 27511, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 11723);
DELETE FROM `gameobject_loot_template` WHERE entry=27513;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27513,47242,100,1,0,2,2),
(27513,47556,100,1,0,1,1);
DELETE FROM `gameobject_loot_template` WHERE entry=27514;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27514,47242,100,1,0,2,2),
(27514,47556,100,1,0,1,1),
(27514,48713,0,1,1,1,1),
(27514,48711,0,1,1,1,1),
(27514,48712,0,1,1,1,1),
(27514,48714,0,1,1,1,1),
(27514,48709,0,1,1,1,1),
(27514,48710,0,1,1,1,1),
(27514,48708,0,1,1,1,1),
(27514,48695,0,1,2,1,1),
(27514,48697,0,1,2,1,1),
(27514,48703,0,1,2,1,1),
(27514,48699,0,1,2,1,1),
(27514,48693,0,1,2,1,1),
(27514,48705,0,1,2,1,1),
(27514,48701,0,1,2,1,1);
DELETE FROM `gameobject_loot_template` WHERE entry=27515;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27515,47242,100,1,0,4,4),
(27515,47556,100,1,0,1,1),
(27515,48713,0,1,1,1,1),
(27515,48711,0,1,1,1,1),
(27515,48712,0,1,1,1,1),
(27515,48714,0,1,1,1,1),
(27515,48709,0,1,1,1,1),
(27515,48710,0,1,1,1,1),
(27515,48708,0,1,1,1,1),
(27515,48695,0,1,2,1,1),
(27515,48697,0,1,2,1,1),
(27515,48703,0,1,2,1,1),
(27515,48699,0,1,2,1,1),
(27515,48693,0,1,2,1,1),
(27515,48705,0,1,2,1,1),
(27515,48701,0,1,2,1,1);
DELETE FROM `gameobject_loot_template` WHERE entry=27516;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27516,47242,100,1,0,4,4),
(27516,47556,100,1,0,1,1),
(27516,48713,0,1,1,1,1),
(27516,48711,0,1,1,1,1),
(27516,48712,0,1,1,1,1),
(27516,48714,0,1,1,1,1),
(27516,48709,0,1,1,1,1),
(27516,48710,0,1,1,1,1),
(27516,48708,0,1,1,1,1),
(27516,48695,0,1,2,1,1),
(27516,48697,0,1,2,1,1),
(27516,48703,0,1,2,1,1),
(27516,48699,0,1,2,1,1),
(27516,48693,0,1,2,1,1),
(27516,48705,0,1,2,1,1),
(27516,48701,0,1,2,1,1),
(27516,49044,100,1,0,1,1),
(27516,48673,0,1,3,1,1),
(27516,48675,0,1,3,1,1),
(27516,48674,0,1,3,1,1),
(27516,48671,0,1,3,1,1),
(27516,48672,0,1,3,1,1),
(27516,49046,100,1,0,1,1),
(27516,48668,0,1,4,1,1),
(27516,48670,0,1,4,1,1),
(27516,48669,0,1,4,1,1),
(27516,48666,0,1,4,1,1),
(27516,48667,0,1,4,1,1);
SET @RefTribute := 51000;
DELETE FROM `reference_loot_template` WHERE entry=@RefTribute;
DELETE FROM `reference_loot_template` WHERE entry=47557;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@RefTribute,47557,0,1,1,1,1),
(@RefTribute,47558,0,1,1,1,1),
(@RefTribute,47559,0,1,1,1,1);
DELETE FROM `gameobject_loot_template` WHERE entry=27511;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27511,1,100,1,0,-@RefTribute,2);
DELETE FROM `gameobject_loot_template` WHERE entry=27512;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27512,1,100,1,0,-@RefTribute,2),
(27512,47521,0,1,1,1,1),
(27512,47526,0,1,1,1,1),
(27512,47519,0,1,1,1,1),
(27512,47524,0,1,1,1,1),
(27512,47517,0,1,1,1,1),
(27512,47506,0,1,1,1,1),
(27512,47515,0,1,1,1,1),
(27512,47523,0,1,2,1,1),
(27512,47528,0,1,2,1,1),
(27512,47520,0,1,2,1,1),
(27512,47525,0,1,2,1,1),
(27512,47518,0,1,2,1,1),
(27512,47513,0,1,2,1,1),
(27512,47516,0,1,2,1,1);
DELETE FROM `gameobject_loot_template` WHERE entry=27517;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27517,1,100,1,0,-@RefTribute,2),
(27517,2,100,1,0,-@RefTribute,2),
(27517,47521,0,1,1,1,1),
(27517,47526,0,1,1,1,1),
(27517,47519,0,1,1,1,1),
(27517,47524,0,1,1,1,1),
(27517,47517,0,1,1,1,1),
(27517,47506,0,1,1,1,1),
(27517,47515,0,1,1,1,1),
(27517,47523,0,1,2,1,1),
(27517,47528,0,1,2,1,1),
(27517,47520,0,1,2,1,1),
(27517,47525,0,1,2,1,1),
(27517,47518,0,1,2,1,1),
(27517,47513,0,1,2,1,1),
(27517,47516,0,1,2,1,1);
DELETE FROM `gameobject_loot_template` WHERE entry=27518;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27518,1,100,1,0,-@RefTribute,2),
(27518,2,100,1,0,-@RefTribute,2),
(27518,47521,0,1,1,1,1),
(27518,47526,0,1,1,1,1),
(27518,47519,0,1,1,1,1),
(27518,47524,0,1,1,1,1),
(27518,47517,0,1,1,1,1),
(27518,47506,0,1,1,1,1),
(27518,47515,0,1,1,1,1),
(27518,47523,0,1,2,1,1),
(27518,47528,0,1,2,1,1),
(27518,47520,0,1,2,1,1),
(27518,47525,0,1,2,1,1),
(27518,47518,0,1,2,1,1),
(27518,47513,0,1,2,1,1),
(27518,47516,0,1,2,1,1),
(27518,49096,100,1,0,1,1),
(27518,47553,0,1,3,1,1),
(27518,47552,0,1,3,1,1),
(27518,47549,0,1,3,1,1),
(27518,47547,0,1,3,1,1),
(27518,47545,0,1,3,1,1),
(27518,49098,100,1,0,1,1),
(27518,47554,0,1,4,1,1),
(27518,47551,0,1,4,1,1),
(27518,47550,0,1,4,1,1),
(27518,47548,0,1,4,1,1),
(27518,47546,0,1,4,1,1);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (11684,11685,11686,11687,11688);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
(11684,12,0,0),
(11685,12,0,0),
(11686,12,0,0),
(11687,12,0,0),
(11688,12,0,0);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (11690,11689,11682,11693,11691);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
(11690,12,2,0),
(11689,12,2,0),
(11682,12,2,0),
(11693,12,2,0),
(11691,12,2,0);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (11679,11683,11680,11682,11681);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
(11679,12,1,0),
(11683,12,1,0),
(11680,12,1,0),
(11682,12,1,0),
(11681,12,1,0);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (11542,11546,11547,11549,11678,12350);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`) VALUES
(11542,12,3,0),
(11546,12,3,0),
(11547,12,3,0),
(11549,12,3,0),
(11678,12,3,0),
(12350,12,3,0);
UPDATE creature_template SET mechanic_immune_mask=1|2|4|8|16|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|8388608|67108864|536870912 WHERE entry IN
(34796, 3479601, 3479602, 3479603,
 35144, 3514401, 3514402, 3514403,
 34799, 3479901, 3479902, 3479903,
 34797, 3479701, 3479702, 3479703,
 34780, 3478001, 3478002, 3478003,
 34497, 3449701, 3449702, 3449703,
 34496, 3449601, 3449602, 3449603,
 34564, 3456401, 3456402, 3456403,
 34800, 3480001, 3480002, 3480003); 
UPDATE creature_template SET ScriptName="mob_cat" WHERE entry=35610;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1649999 AND -1649000;
INSERT INTO `script_texts`
(`comment`,`sound`, `entry`,`type`,`language`,`emote`,`content_default`) VALUES
('34796','0','-1649000','3','0','0','My slaves! Destroy the enemy!'),
('34564','0','-1649010','3','0','0','%s buries itself in the earth!'),
('34564','0','-1649011','3','0','0','%s getting out of the ground!'),
('34799','0','-1649012','3','0','0','At its companion perishes, %s becomes enraged!'),
('34797','0','-1649020','3','0','0','%s looks at |3-3($n) and emits a guttural howl!'),
('34797','0','-1649021','3','0','0','%s crashes into a wall of the Colosseum and lose focus!'),
('34797','0','-1649022','3','0','0','|3-3(%s) covers boiling rage, and he tramples all in its path!'),
('34780','16143','-1649030','1','0','0','Trifling gnome, your arrogance will be your undoing!'),
('34780','16144','-1649031','1','0','0','You face Jaraxxus, eredar lord of the Burning Legion!'),
('34780','16147','-1649032','1','0','0','Another will take my place. Your world is doomed.'),
('34780','0','-1649033','3','0','0','$n has |cFF00FFFFIncinerate flesh!|R Heal $ghim:her;!'),
('34780','16149','-1649034','1','0','0','FLESH FROM BONE!'),
('34780','0','-1649035','3','0','0','|cFFFF0000Legion Flame|R on $n'),
('34780','0','-1649036','3','0','0','%s creates the gates of the Void!'),
('34780','16150','-1649037','1','0','0','Come forth, sister! Your master calls!'),
('34780','0','-1649038','3','0','0','%s creates an |cFF00FF00Infernal Volcano!|R'),
('34780','16151','-1649039','1','0','0','INFERNO!'),
('34995','0','-1649115','1','0','0','Weakling!'),
('34995','0','-1649116','1','0','0','Pathetic!'),
('34995','0','-1649117','1','0','0','Overpowered.'),
('34995','0','-1649118','1','0','0','Lok\'tar!'),
('34990','0','-1649120','1','0','0','HAH!'),
('34990','0','-1649121','1','0','0','Hardly a challenge!'),
('34990','0','-1649122','1','0','0','Worthless scrub.'),
('34990','0','-1649123','1','0','0','Is this the best the Horde has to offer?'),
('34497','16272','-1649040','1','0','0','In the name of our dark master. For the Lich King. You. Will. Die.'),
('34496','16275','-1649041','1','0','0','The Scourge cannot be stopped...'),
('34497','16273','-1649042','1','0','0','YOU ARE FINISHED!'),
('34497','0','-1649043','3','0','0','%s begins to read the spell Treaty twins!'),
('34497','16274','-1649044','3','0','0','CHAOS!'),
('34496','16277','-1649045','1','0','0','UNWORTHY!'),
('34497','16276','-1649046','1','0','0','You appreciated and acknowledged nothing.'),
('34497','0','-1649047','3','0','0','%s begins to read a spell |cFFFFFFFFLight Vortex!|R switch to |cFFFFFFFFLight|r essence!'),
('34496','16279','-1649048','1','0','0','Let the light consume you!'),
('34496','0','-1649049','3','0','0','%s begins to read a spell |cFF9932CDBlack Vortex!|R switch to |cFF9932CDBlack|r essence!'),
('34496','16278','-1649050','1','0','0','Let the dark consume you!'),
('34564','16235','-1649055','1','0','0','Ahhh... Our guests arrived, just as the master promised.'),
('34564','16234','-1649056','1','0','0','This place will serve as your tomb!'),
('34564','16236','-1649057','1','0','0','F-lakkh shir!'),
('34564','16237','-1649058','1','0','0','Another soul to sate the host.'),
('34564','16238','-1649059','1','0','0','I have failed you, master...'),
('34564','0','-1649060','3','0','0','%s spikes  pursuing $n!'),
('34564','16240','-1649061','1','0','0','Auum na-l ak-k-k-k, isshhh. Rise, minions. Devour...'),
('34564','0','-1649062','3','0','0','%s produces a swarm of beetles Peon to restore your health!'),
('34564','16241','-1649063','1','0','0','The swarm shall overtake you!'),
('34996','16036','-1649070','1','0','0','Welcome champions, you have heard the call of the Argent Crusade and you have boldly answered. It is here in the crusaders coliseum that you will face your greatest challenges. Those of you who survive the rigors of the coliseum will join the Argent Crusade on its marsh to ice crown citadel.'),
('34996','16038','-1649071','1','0','0','Hailing from the deepest, darkest carverns of the storm peaks, Gormok the Impaler! Battle on, heroes!'),
('34990','16069','-1649072','1','0','0','Your beast will be no match for my champions Tirion!'),
('34995','16026','-1649073','1','0','0','I have seen  more  worthy  challenges in the ring of blood, you waste our time paladin.'),
('34996','16039','-1649074','1','0','0','Steel yourselves, heroes, for the twin terrors Acidmaw and Dreadscale. Enter the arena!'),
('34996','16040','-1649075','1','0','0','The air freezes with the introduction of our next combatant, Icehowl! Kill or be killed, champions!'),
('34996','16041','-1649076','1','0','0','The monstrous menagerie has been vanquished!'),
('34996','16042','-1649077','1','0','0','Tragic... They fought valiantly, but the beasts of Northrend triumphed. Let us observe a moment of silence for our fallen heroes.'),
('34996','16043','-1649080','1','0','0','Grand Warlock Wilfred Fizzlebang will summon forth your next challenge. Stand by for his entry!'),
('35458','16268','-1649081','1','0','0','Thank you, Highlord! Now challengers, I will begin the ritual of summoning! When I am done, a fearsome Doomguard will appear!'),
('35458','16269','-1649082','1','0','0','Prepare for oblivion!'),
('35458','16270','-1649083','1','0','0','Ah ha! Behold the absolute power of Wilfred Fizzlebang, master summoner! You are bound to ME, demon!'),
('35458','16271','-1649084','1','0','0','But I am in charge here-'),
('35458','0','-1649085','1','0','0','...'),
('34996','16044','-1649086','1','0','0','Quickly, heroes! Destroy the demon lord before it can open a portal to its twisted demonic realm!'),
('34996','16045','-1649087','1','0','0','The loss of Wilfred Fizzlebang, while unfortunate, should be a lesson to those that dare dabble in dark magic. Alas, you are victorious and must now face the next challenge.'),
('34995','16021','-1649088','1','0','0','Treacherous Alliance dogs! You summon a demon lord against warriors of the Horde!? Your deaths will be swift!'),
('34990','16064','-1649089','1','0','0','The Alliance doesnt need the help of a demon lord to deal with Horde filth. Come, pig!'),
('34996','16046','-1649090','1','0','0','Everyone, calm down! Compose yourselves! There is no conspiracy at play here. The warlock acted on his own volition - outside of influences from the Alliance. The tournament must go on!'),
('34996','16047','-1649091','1','0','0','The next battle will be against the Argent Crusades most powerful knights! Only by defeating them will you be deemed worthy...'),
('34990','16066','-1649092','1','0','0','Our honor has been besmirched! They make wild claims and false accusations against us. I demand justice! Allow my champions to fight in place of your knights, Tirion. We challenge the Horde!'),
('34995','16023','-1649093','1','0','0','The Horde demands justice! We challenge the Alliance. Allow us to battle in place of your knights, paladin. We will show these dogs what it means to insult the Horde!'),
('34996','16048','-1649094','1','0','0','Very well, I will allow it. Fight with honor!'),
('34990','16065','-1649095','1','0','0','Fight for the glory of the Alliance, heroes! Honor your king and your people!'),
('34995','16022','-1649096','1','0','0','Show them no mercy, Horde champions! LOK-TAR OGAR!'),
('34990','16067','-1649097','1','0','0','GLORY OF THE ALLIANCE!'),
('34995','16024','-1649098','1','0','0','LOK-TAR OGAR!'),
('34996','16049','-1649099','1','0','0','A shallow and tragic victory. We are weaker as a whole from the losses suffered today. Who but the Lich King could benefit from such foolishness? Great warriors have lost their lives. And for what? The true threat looms ahead - the Lich King awaits us all in death.'),
('34996','16050','-1649100','1','0','0','Only by working together will you overcome the final challenge. From the depths of Icecrown come two of the Scourges most powerful lieutenants: fearsome valkyr, winged harbingers of the Lich King!'),
('34996','16037','-1649101','1','0','0','Let the games begin!'),
('34990','16068','-1649102','1','0','0','Not even the Lich King most powerful minions can stand against the Alliance! All hail our victors!'),
('34995','16025','-1649103','1','0','0','Do you still question the might of the horde paladin? We will take on all comers.'),
('34996','16051','-1649104','1','0','0','A mighty blow has been dealt to the Lich King! You have proven yourselves able bodied champions of the Argent Crusade. Together we will strike at Icecrown Citadel and destroy what remains of the Scourge! There is no challenge that we cannot face united!'),
('35877','16321','-1649105','1','0','0','You will have your challenge, Fordring.'),
('34996','16052','-1649106','1','0','0','Arthas! You are hopelessly outnumbered! Lay down Frostmourne and I will grant you a just death.'),
('35877','16322','-1649107','1','0','0','The Nerubians built an empire beneath the frozen wastes of Northrend. An empire that you so foolishly built your structures upon. MY EMPIRE.'),
('35877','16323','-1649108','1','0','0','The souls of your fallen champions will be mine, Fordring.'),
('36095','0','-1649109','1','0','0','Champions, you are alive! Not only have you defeated every challenge of the Trial of the Crusader, but thwarted Arthas directly! Your skill and cunning will prove to be a powerful weapon against the Scourge. Well done! Allow one of my mages to transport you back to the surface!'),
('36095','0','-1649110','1','0','0','Let me hand you the chests as a reward, and let its contents will serve you faithfully in the campaign against Arthas in the heart of the Icecrown Citadel!');
UPDATE `creature_template` SET `scriptname`='mob_toc_warrior', `AIName` ='' WHERE `entry` IN (34475,34453);
UPDATE `creature_template` SET `scriptname`='mob_toc_mage', `AIName` ='' WHERE `entry` IN (34468,34449);
UPDATE `creature_template` SET `scriptname`='mob_toc_shaman', `AIName` ='' WHERE `entry` IN (34470,34444);
UPDATE `creature_template` SET `scriptname`='mob_toc_enh_shaman', `AIName` ='' WHERE `entry` IN (34463,34455);
UPDATE `creature_template` SET `scriptname`='mob_toc_hunter', `AIName` ='' WHERE `entry` IN (34467,34448);
UPDATE `creature_template` SET `scriptname`='mob_toc_rogue', `AIName` ='' WHERE `entry` IN (34472,34454);
UPDATE `creature_template` SET `scriptname`='mob_toc_priest', `AIName` ='' WHERE `entry` IN (34466,34447);
UPDATE `creature_template` SET `scriptname`='mob_toc_shadow_priest', `AIName` ='' WHERE `entry` IN (34473,34441);
UPDATE `creature_template` SET `scriptname`='mob_toc_dk', `AIName` ='' WHERE `entry` IN (34461,34458);
UPDATE `creature_template` SET `scriptname`='mob_toc_paladin', `AIName` ='' WHERE `entry` IN (34465,34445);
UPDATE `creature_template` SET `scriptname`='mob_toc_retro_paladin', `AIName` ='' WHERE `entry` IN (34471,34456);
UPDATE `creature_template` SET `scriptname`='mob_toc_druid', `AIName` ='' WHERE `entry` IN (34469,34459);
UPDATE `creature_template` SET `scriptname`='mob_toc_boomkin', `AIName` ='' WHERE `entry` IN (34460,34451);
UPDATE `creature_template` SET `scriptname`='mob_toc_warlock' WHERE `entry` IN (34474,34450);
UPDATE `creature_template` SET `scriptname`='mob_toc_pet_warlock', `AIName` ='' WHERE `entry` IN (35465);
UPDATE `creature_template` SET `scriptname`='mob_toc_pet_hunter', `AIName` ='' WHERE `entry` IN (35610);
DELETE FROM `gameobject` WHERE `guid` in (150077,150080);
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES 
(195649, 0, 411, 'South Portcullis', '', '', '', 0, 37, 3.26663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(195648, 0, 411, 'East Portcullis', '', '', '', 0, 37, 3.26663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(195650, 0, 411, 'North Portcullis', '', '', '', 0, 37, 3.26663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(150076, 195650, 650, 3, 65535, 807.66, 618.091, 412.394, 3.12015, 0, 0, 0.999943, 0.0107224, 25, 0, 0),
(150073, 195648, 650, 3, 65535, 746.561, 557.002, 412.393, 1.57292, 0, 0, 0.707856, 0.706357, 25, 0, 1),
(150074, 195649, 650, 3, 65535, 685.625, 617.977, 412.285, 6.28137, 0, 0, 0.000909718, -1, 25, 0, 1),
(150081, 195647, 650, 3, 1, 746.698, 677.469, 412.339, 1.5708, 0, 0, 1, 0, 0, 0, 1);
DELETE FROM `vehicle_accessory` WHERE `guid` in (35491,33299,33418,33409,33300,33408,33301,33414,33297,33416,33298);
INSERT INTO `vehicle_accessory` (`guid`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(35491,35451,0,0, 'Black Knight'),
(33299,35323,0,1, 'Darkspear Raptor'),
(33418,35326,0,1, 'Silvermoon Hawkstrider'),
(33409,35314,0,1, 'Orgrimmar Wolf'),
(33300,35325,0,1, 'Thunder Bluff Kodo'),
(33408,35329,0,1, 'Ironforge Ram'),
(33301,35331,0,1, 'Gnomeregan Mechanostrider'),
(33414,35327,0,1, 'Forsaken Warhorse'),
(33297,35328,0,1, 'Stormwind Steed'),
(33416,35330,0,1, 'Exodar Elekk'),
(33298,35332,0,1, 'Darnassian Nightsaber');
UPDATE `creature_template` SET `minlevel` = 80,`maxlevel` = 80 WHERE `entry` in (33298,33416,33297,33301,33408,35640,33299,33300,35634,33418,35638,33409,33414,33299,35635,35641);
UPDATE `creature_template` SET `faction_A` = 14,`faction_H` = 14 WHERE `entry` in (33298,33416,33297,33301,33408,35545,33299,35564,35590,35119,34928,35309,35305,33414,35307,35325,33300,35327,35326,33418,35638,35314,33409,33299,35635,35640,35641,35634,35633,35636,35768,35637,34658);
UPDATE `creature_template` SET `Health_mod` = 10,`mindmg` = 20000,`maxdmg` = 30000 WHERE `entry` in (33298,33416,33297,33301,33408,33409,33418,33300,33414,33299,33298,33416,33297,33301,33408,35640,35638,35634,35635,35641,35633,35636,35768,35637,34658);
UPDATE `creature_template` SET `speed_run` = 2,`Health_mod` = 40,`mindmg` = 10000,`maxdmg` = 20000,`spell1` =62544,`spell2` =63010,`spell3` =0,`spell4` =0 WHERE `entry` in (35644,36558);
UPDATE `creature` SET `spawntimesecs` = 86400 WHERE `id` in (35644,36558);
UPDATE `creature_template` SET `ScriptName`='generic_vehicleAI_toc5' WHERE `entry`=33299;
UPDATE `creature_template` SET `VehicleId`=486 WHERE `entry` in (33299,35491);
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`unit_flags`=33554432  WHERE `entry` in (35314,35326,35327,35325,35323,35331,35330,35329,35328,35332,35491);
DELETE FROM `script_texts` WHERE `entry` <= -1999926 and `entry` >= -1999956;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1999926, 'Coming out of the gate Grand Champions other faction.  ' ,0,0,0,1, '' ),
(0,-1999927, 'Good work! You can get your award from Crusader\'s Coliseum chest!.  ' ,0,1,0,1, '' ),
(0,-1999928, 'You spoiled my grand entrance. Rat.' ,16256,1,0,5, '' ),
(0,-1999929, 'Did you honestly think an agent if the Lich King would be bested on the field of your pathetic little tournament?' ,16257,1,0,5, '' ),
(0,-1999930, 'I have come to finish my task ' ,16258,1,0,5, '' ),
(0,-1999931, 'This farce ends here!' ,16259,1,0,5, '' ),
(0,-1999932, '[Zombie]Brains.... .... ....' ,0,1,0,5, '' ),
(0,-1999933, 'My roting flash was just getting in the way!' ,16262,1,0,5, '' ),
(0,-1999934, 'I have no need for bones to best you!' ,16263,1,0,5, '' ),
(0,-1999935, 'No! I must not fail...again...' ,16264,1,0,5, '' ),
(0,-1999936, 'What\'s that. up near the rafters ?' ,0,1,0,5, '' ),
(0,-1999937, 'Please change your weapon! Next battle will be start now!' ,0,3,0,5, '' ),
(0,-1999939, 'Excellent work!' ,0,1,0,1, '' ),
(0,-1999940, 'Coming out of the gate Crusader\'s Coliseum Champion.' ,0,0,0,1, '' ),
(0,-1999941, 'Excellent work! You are win Argent champion!' ,0,3,0,0, '' ),
(0,-1999942, 'The Sunreavers are proud to present their representatives in this trial by combat.' ,0,0,0,1, '' ),
(0,-1999943, 'Welcome, champions. Today, before the eyes of your leeders and peers, you will prove youselves worthy combatants.' ,0,0,0,1, '' ),
(0,-1999944, 'Fight well, Horde! Lok\'tar Ogar!' ,0,1,0,5, '' ),
(0,-1999945, 'Finally, a fight worth watching.' ,0,1,0,5, '' ),
(0,-1999946, 'I did not come here to watch animals tear at each other senselessly, Tirion' ,0,1,0,5, '' ),
(0,-1999947, 'You will first be facing three of the Grand Champions of the Tournament! These fierce contenders have beaten out all others to reach the pinnacle of skill in the joust.' ,0,1,0,5, '' ),
(0,-1999948, 'Will tought! You next challenge comes from the Crusade\'s own ranks. You will be tested against their consederable prowess.' ,0,1,0,5, '' ),
(0,-1999949, 'You may begin!' ,0,0,0,5, '' ),
(0,-1999950, 'Well, then. Let us begin.' ,0,1,0,5, '' ),
(0,-1999951, 'Take this time to consider your past deeds.' ,16248,1,0,5, '' ),
(0,-1999952, 'What is the meaning of this?' ,0,1,0,5, '' ),
(0,-1999953, 'No...I\'m still too young' ,0,1,0,5, '' ),
(0,-1999954, 'Excellent work! You are win Argent champion!' ,0,3,0,0, '' );
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(35571, 12006, 0, 0, 0, 0, 28597, 0, 28597, 0, 'Runok Wildmane', 'Grand Champion of the Thunder Bluff', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67529, 67530, 67528, 67534, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_shaman_toc5'),
(12006, 0, 0, 0, 0, 0, 28597, 0, 28597, 0, 'Runok Wildmane', 'Grand Champion of the Thunder Bluff', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68319, 67530, 67528, 67534, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(35569, 12005, 0, 0, 0, 0, 28637, 0, 28637, 0, 'Eressea Dawnsinger', 'Grand Champion of Silvermoon', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66044, 66042, 66045, 66043, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_mage_toc5'),
(12005, 0, 0, 0, 0, 0, 28637, 0, 28637, 0, 'Eressea Dawnsinger', 'Grand Champion of Silvermoon', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68312, 68310, 66045, 68311, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(35572, 12009, 0, 0, 0, 0, 28587, 0, 28587, 0, 'Mokra the Skullcrusher', 'Grand Champion of Orgrimmar', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 617297499, 0, 'boss_warrior_toc5'),
(12009, 0, 0, 0, 0, 0, 28587, 0, 28587, 0, 'Mokra the Skullcrusher', 'Grand Champion of Orgrimmar', '', 0, 80, 80, 0, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 35.38, 20, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 617297499, 1, ''),
(35617, 12008, 0, 0, 0, 0, 28589, 0, 28589, 0, 'Deathstalker Visceri', 'Grand Champion of Undercity', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67709, 67706, 67701, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_rouge_toc5'),
(12008, 0, 0, 0, 0, 0, 28589, 0, 28589, 0, 'Deathstalker Visceri', 'Grand Champion of Undercity', '', 0, 80, 80, 0, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67709, 67706, 67701, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 35.38, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(35570, 12007, 0, 0, 0, 0, 28588, 0, 28588, 0, 'Zul\'tore', 'Grand Champion of Sen\'jin', '', 0, 80, 80, 2, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68340, 66083, 66081, 66079, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_hunter_toc5'),
(12007, 0, 0, 0, 0, 0, 28588, 0, 28588, 0, 'Zul\'tore', 'Grand Champion of Sen\'jin', '', 0, 80, 80, 0, 1801, 1801, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68340, 66083, 66081, 66079, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 35.38, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(34701, 12001, 0, 0, 0, 0, 28736, 0, 28736, 0, 'Colosos', 'Grand Champion of the Exodar', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67529, 67530, 67528, 67534, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_shaman_toc5'),
(12001, 0, 0, 0, 0, 0, 28736, 0, 28736, 0, 'Colosos', 'Grand Champion of the Exodar', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 17, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68319, 67530, 68318, 67534, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(34703, 12003, 0, 0, 0, 0, 28564, 0, 28564, 0, 'Lana Stouthammer', 'Grand Champion of Ironforge', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67709, 67706, 67701, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 617297499, 0, 'boss_rouge_toc5'),
(12003, 0, 0, 0, 0, 0, 28564, 0, 28564, 0, 'Lana Stouthammer', 'Grand Champion of Ironforge', '', 0, 80, 80, 0, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 35.38, 20, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 617297499, 1, ''),
(34702, 12000, 0, 0, 0, 0, 28586, 0, 28586, 0, 'Ambrose Boltspark', 'Grand Champion of Gnomeregan', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66044, 66042, 66045, 66043, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_mage_toc5'),
(12000, 0, 0, 0, 0, 0, 28586, 0, 28586, 0, 'Ambrose Boltspark', 'Grand Champion of Gnomeregan', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68312, 68310, 66045, 68311, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(34657, 12002, 0, 0, 0, 0, 28735, 0, 28735, 0, 'Jaelyne Evensong', 'Grand Champion of Darnassus', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68340, 66083, 66081, 66079, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_hunter_toc5'),
(12002, 0, 0, 0, 0, 0, 28735, 0, 28735, 0, 'Jaelyne Evensong', 'Grand Champion of Darnassus', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68340, 66083, 66081, 66079, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(34705, 12004, 0, 0, 0, 0, 28560, 0, 28560, 0, 'Marshal Jacob Alerius', 'Grand Champion of Stormwind', '', 0, 80, 80, 2, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 10.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 0, 'boss_warrior_toc5'),
(12004, 0, 0, 0, 0, 0, 28560, 0, 28560, 0, 'Marshal Jacob Alerius', 'Grand Champion of Stormwind', '', 0, 80, 80, 0, 1802, 1802, 0, 1, 1, 1, 420, 630, 0, 158, 15.2, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 35.38, 20, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617297499, 1, ''),
(35590, 12444, 0, 0, 0, 0, 24996, 24999, 24997, 0, 'Risen Champion', 'Black Knight\'s Minion', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 0, 420, 630, 0, 158, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67774, 67879, 67729, 67886, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(12444, 0, 0, 0, 0, 0, 24996, 24999, 24997, 0, 'Risen Champion', 'Black Knight\'s Minion', '', 0, 80, 80, 0, 14, 14, 0, 1, 1, 0, 420, 630, 0, 158, 1.4, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67774, 67879, 67729, 67886, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 7.076, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(35564, 12436, 0, 0, 0, 0, 25528, 0, 25528, 0, 'Risen Arelas Brightstar', 'Black Knight\'s Minion', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 0, 420, 630, 0, 158, 1.4, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67774, 67879, 67729, 67886, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_risen_ghoul'),
(12436, 0, 0, 0, 0, 0, 25528, 0, 25528, 0, 'Risen Arelas Brightstar', 'Black Knight\'s Minion', '', 0, 80, 80, 0, 14, 14, 0, 1, 1, 0, 420, 630, 0, 158, 1.4, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67879, 67886, 67880, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 9.43467, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(35545, 0, 0, 0, 0, 0, 25528, 0, 25528, 0, 'Risen Jaeren Sunsworn', 'Black Knight\'s Minion', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 0, 420, 630, 0, 158, 1.4, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67774, 67879, 67729, 67886, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_risen_ghoul'),
(35451, 35490, 0, 0, 0, 0, 29837, 0, 29837, 0, 'The Black Knight', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 11.8, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 35451, 0, 0, 0, 0, 0, 0, 0, 0, 67724, 67745, 67718, 67725, 0, 0, 0, 0, 0, 0, 9530, 9530, '', 0, 3, 5.95238, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 805257215, 0, 'boss_black_knight'),
(35490, 0, 0, 0, 0, 0, 29837, 0, 29837, 0, 'The Black Knight', '', '', 0, 80, 80, 0, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 17.6, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 6, 72, 35490, 0, 0, 0, 0, 0, 0, 0, 0, 67884, 68306, 67881, 67883, 0, 0, 0, 0, 0, 0, 10700, 10700, '', 0, 3, 37.7387, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 805257215, 1, ''),
(35119, 12011, 0, 0, 0, 0, 29616, 0, 29616, 0, 'Eadric the Pure', 'Grand Champion of the Argent Crusade', '', 0, 82, 82, 2, 14, 14, 0, 1, 1, 1, 452, 678, 0, 170, 14.5, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66865, 66863, 66867, 66935, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 42.5, 20, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 805257215, 0, 'boss_eadric'),
(12011, 0, 0, 0, 0, 0, 29616, 0, 29616, 0, 'Eadric the Pure', 'Grand Champion of the Argent Crusade', '', 0, 82, 82, 2, 14, 14, 0, 1, 1, 1, 452, 678, 0, 170, 22.4, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66865, 66863, 66867, 66935, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 42.5, 20, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 805257215, 1, ''),
(34928, 12010, 0, 0, 0, 0, 29490, 0, 29490, 0, 'Argent Confessor Paletress', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 1, 1, 452, 678, 0, 170, 14.5, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66546, 66536, 66515, 66537, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 8, 20, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 805257215, 0, 'boss_paletress'),
(12010, 0, 0, 0, 0, 0, 29490, 0, 29490, 0, 'Argent Confessor Paletress', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 1, 1, 452, 678, 0, 170, 22.4, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66546, 67674, 66515, 67675, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 8, 20, 0, 0, 0, 0, 0, 0, 0, 151, 1, 0, 805257215, 1, ''),
(35309, 12439, 0, 0, 0, 0, 29762, 29763, 29762, 0, 'Argent Lightwielder', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 8.4, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67247, 67290, 15284, 67237, 0, 0, 0, 0, 0, 0, 7651, 7651, '', 0, 3, 8, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_argent_soldier'),
(12439, 0, 0, 0, 0, 0, 29762, 29763, 29762, 0, 'Argent Lightwielder', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 12.6, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67247, 67290, 15284, 67237, 0, 0, 0, 0, 0, 0, 7651, 7651, '', 0, 3, 8, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(35305, 12488, 0, 0, 0, 0, 29758, 29759, 29758, 0, 'Argent Monk', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 8, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67251, 67255, 67233, 67235, 0, 0, 0, 0, 0, 0, 7661, 7661, '', 0, 3, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_argent_soldier'),
(12488, 0, 0, 0, 0, 0, 29758, 29759, 29758, 0, 'Argent Monk', '', '', 0, 80, 80, 0, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 12, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67251, 67255, 67233, 67235, 0, 0, 0, 0, 0, 0, 7661, 7661, '', 0, 3, 23.5867, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, ''),
(35307, 12448, 0, 0, 0, 0, 29760, 29761, 29760, 0, 'Argent Priestess', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 5.5, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67194, 36176, 67289, 67229, 0, 0, 0, 0, 0, 0, 7653, 7653, '', 0, 3, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_argent_soldier'),
(12448, 0, 0, 0, 0, 0, 29760, 29761, 29760, 0, 'Argent Priestess', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1, 1, 420, 630, 0, 158, 8.5, 2000, 2000, 2, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67194, 36176, 67289, 67229, 0, 0, 0, 0, 0, 0, 7653, 7653, '', 0, 3, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(35052, 12446, 0, 0, 0, 0, 29553, 0, 29553, 0, 'Memory of Algalon', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67679, 67678, 67677, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12446, 0, 0, 0, 0, 0, 29553, 0, 29553, 0, 'Memory of Algalon', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67679, 67678, 67677, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35041, 12486, 0, 0, 0, 0, 29546, 0, 29546, 0, 'Memory of Archimonde', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12486, 0, 0, 0, 0, 0, 29546, 0, 29546, 0, 'Memory of Archimonde', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35033, 12438, 0, 0, 0, 0, 14367, 0, 14367, 0, 'Memory of Chromaggus', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12438, 0, 0, 0, 0, 0, 14367, 0, 14367, 0, 'Memory of Chromaggus', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35046, 12451, 0, 0, 0, 0, 29549, 0, 29549, 0, 'Memory of Cyanigosa', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12451, 0, 0, 0, 0, 0, 29549, 0, 29549, 0, 'Memory of Cyanigosa', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35043, 12482, 0, 0, 0, 0, 18699, 0, 18699, 0, 'Memory of Delrissa', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12482, 0, 0, 0, 0, 0, 18699, 0, 18699, 0, 'Memory of Delrissa', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35047, 12456, 0, 0, 0, 0, 26644, 0, 26644, 0, 'Memory of Eck', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12456, 0, 0, 0, 0, 0, 26644, 0, 26644, 0, 'Memory of Eck', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35044, 12440, 0, 0, 0, 0, 23428, 0, 23428, 0, 'Memory of Entropius', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12440, 0, 0, 0, 0, 0, 23428, 0, 23428, 0, 'Memory of Entropius', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35039, 12725, 0, 0, 0, 0, 18698, 0, 18698, 0, 'Memory of Gruul', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12725, 0, 0, 0, 0, 0, 18698, 0, 18698, 0, 'Memory of Gruul', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35034, 12453, 0, 0, 0, 0, 29540, 0, 29540, 0, 'Memory of Hakkar', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12453, 0, 0, 0, 0, 0, 29540, 0, 29540, 0, 'Memory of Hakkar', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35049, 12455, 0, 0, 0, 0, 29557, 0, 29557, 0, 'Memory of Heigan', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12455, 0, 0, 0, 0, 0, 29557, 0, 29557, 0, 'Memory of Heigan', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35030, 12454, 0, 0, 0, 0, 29537, 0, 29537, 0, 'Memory of Herod', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12454, 0, 0, 0, 0, 0, 29537, 0, 29537, 0, 'Memory of Herod', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(34942, 12484, 0, 0, 0, 0, 29525, 0, 29525, 0, 'Memory of Hogger', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12484, 0, 0, 0, 0, 0, 29525, 0, 29525, 0, 'Memory of Hogger', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35050, 12450, 0, 0, 0, 0, 29185, 0, 29185, 0, 'Memory of Ignis', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 5, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12450, 0, 0, 0, 0, 0, 29185, 0, 29185, 0, 'Memory of Ignis', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 5, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35042, 12442, 0, 0, 0, 0, 29547, 0, 29547, 0, 'Memory of Illidan', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12442, 0, 0, 0, 0, 0, 29547, 0, 29547, 0, 'Memory of Illidan', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35045, 12483, 0, 0, 0, 0, 29558, 0, 29558, 0, 'Memory of Ingvar', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12483, 0, 0, 0, 0, 0, 29558, 0, 29558, 0, 'Memory of Ingvar', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35037, 12437, 0, 0, 0, 0, 29542, 0, 29542, 0, 'Memory of Kalithresh', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66552, 66620, 66619, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29.2313, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12437, 0, 0, 0, 0, 0, 29542, 0, 29542, 0, 'Memory of Kalithresh', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66552, 66620, 66619, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35031, 12441, 0, 0, 0, 0, 29562, 0, 29562, 0, 'Memory of Lucifron', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 66619, 66552, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12441, 0, 0, 0, 0, 0, 29562, 0, 29562, 0, 'Memory of Lucifron', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 66619, 66552, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35038, 12445, 0, 0, 0, 0, 29543, 0, 29543, 0, 'Memory of Malchezaar', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12445, 0, 0, 0, 0, 0, 29543, 0, 29543, 0, 'Memory of Malchezaar', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35029, 12447, 0, 0, 0, 0, 29556, 0, 29556, 0, 'Memory of Mutanus', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12447, 0, 0, 0, 0, 0, 29556, 0, 29556, 0, 'Memory of Mutanus', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35048, 12449, 0, 0, 0, 0, 21401, 0, 21401, 0, 'Memory of Onyxia', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12449, 0, 0, 0, 0, 0, 21401, 0, 21401, 0, 'Memory of Onyxia', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35028, 12485, 0, 0, 0, 0, 29536, 0, 29536, 0, 'Memory of VanCleef', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12485, 0, 0, 0, 0, 0, 29536, 0, 29536, 0, 'Memory of VanCleef', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35040, 12452, 0, 0, 0, 0, 29545, 0, 0, 0, 'Memory of Vashj', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12452, 0, 0, 0, 0, 0, 29545, 0, 29545, 0, 'Memory of Vashj', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 452, 678, 0, 170, 15, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 362, 542, 136, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35036, 12443, 0, 0, 0, 0, 29541, 0, 29541, 0, 'Memory of Vek\'nilash', '', '', 0, 82, 82, 2, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12443, 0, 0, 0, 0, 0, 29541, 0, 29541, 0, 'Memory of Vek\'nilash', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35051, 12487, 0, 0, 0, 0, 28548, 0, 28548, 0, 'Memory of Vezax', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory'),
(12487, 0, 0, 0, 0, 0, 28548, 0, 28548, 0, 'Memory of Vezax', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 122.031, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, ''),
(35032, 0, 0, 0, 0, 0, 14992, 0, 14992, 0, 'Memory of Thunderaan', '', '', 0, 82, 82, 0, 14, 14, 0, 1, 0.5, 1, 330, 495, 0, 124, 20.5, 2000, 2000, 8, 0, 0, 0, 0, 0, 0, 0, 264, 396, 99, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66620, 67679, 66619, 67678, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 617297499, 0, 'npc_memory');
UPDATE `creature_template` SET `equipment_id`=2049 WHERE `entry` in (35314,35326,35327,35325,35323,35331,35330,35329,35328,35332);
UPDATE `creature_template` SET `equipment_id`=2025 WHERE `entry` in (35571,12006);
UPDATE `creature_template` SET `equipment_id`=2021 WHERE `entry` in (35569,12005);
UPDATE `creature_template` SET `equipment_id`=2018 WHERE `entry` in (35572,12009);
UPDATE `creature_template` SET `equipment_id`=2020 WHERE `entry` in (35617,12008);
UPDATE `creature_template` SET `equipment_id`=2019 WHERE `entry` in (35570,12007);
UPDATE `creature_template` SET `equipment_id`=2096 WHERE `entry` in (34701,12001);
UPDATE `creature_template` SET `equipment_id`=2093 WHERE `entry` in (34703,12003);
UPDATE `creature_template` SET `equipment_id`=2095 WHERE `entry` in (34657,12002);
UPDATE `creature_template` SET `equipment_id`=2092 WHERE `entry` in (34705,12004);
UPDATE `creature_template` SET `equipment_id`=834 WHERE `entry` in (35119,12011);
UPDATE `creature_template` SET `equipment_id`=235 WHERE `entry` in (34928,12010);
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry` in (35451,12012);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35491, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight\'s Skeletal Gryphon', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 4, 15, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, 'npc_black_knight_skeletal_gryphon');
DELETE FROM `script_waypoint` WHERE `entry`=35491;
INSERT INTO `script_waypoint` VALUES
(35491,1,781.513062, 657.989624, 466.821472,0,''),
(35491,2,759.004639, 665.142029, 462.540771,0,''),
(35491,3,732.936646, 657.163879, 452.678284,0,''),
(35491,4,717.490967, 646.008545, 440.136902,0,''),
(35491,5,707.570129, 628.978455, 431.128632,0,''),
(35491,6,705.164063, 603.628418, 422.956635,0,''),
(35491,7,716.350891, 588.489746, 420.801666,0,''),
(35491,8,741.702881, 580.167725, 420.523010,0,''),
(35491,9,761.634033, 586.382690, 422.206207,0,''),
(35491,10,775.982666, 601.991943, 423.606079,0,''),
(35491,11,769.051025, 624.686157, 420.035126,0,''),
(35491,12,756.582214, 631.692322, 412.529785,0,''),
(35491,13,744.841,634.505,411.575,0,'');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35492, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight\'s Skeletal Gryphon', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 15, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, 'npc_gr');
DELETE FROM `script_waypoint` WHERE `entry`=35492;
INSERT INTO `script_waypoint` VALUES
(35492,1,741.067078, 634.471558, 411.569366,0,''),
(35492,2,735.726196, 639.247498, 414.725555,0,''),
(35492,3,730.187256, 653.250977, 418.913269,0,''),
(35492,4,734.517700, 666.071350, 426.259247,0,''),
(35492,5,739.638489, 675.339417, 438.226776,0,''),
(35492,6,741.833740, 698.797302, 456.986328,0,''),
(35492,7,734.647339, 711.084778, 467.165314,0,''),
(35492,8,715.388489, 723.820862, 470.333588,0,''),
(35492,9,687.178711, 730.140503, 470.569336,0,'');
DELETE FROM `creature_template` WHERE `entry` in (35591,35592);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35591, 0, 0, 0, 0, 0, 29894, 0, 0, 0, 'Jaeren Sunsworn', '', '', 0, 75, 75, 2, 14, 14, 0, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_anstart'),
(35592, 0, 0, 0, 0, 0, 29893, 0, 0, 0, 'Arelas Brightstar', '', '', 0, 75, 75, 2, 14, 14, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_anstart');
DELETE FROM `creature` WHERE `id`=35004;
DELETE FROM `creature` WHERE `guid` in (180100);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(180100, 35591, 650, 3, 1, 0, 0, 746.626, 618.54, 411.09, 4.63158, 86400, 0, 0, 10635, 0, 0, 0);
REPLACE INTO `creature_template_addon` VALUES
(35309, 0, 0, 0, 1, 0, '63501 0'),
(12439, 0, 0, 0, 1, 0, '63501 0'),
(35305, 0, 0, 0, 1, 0, '63501 0'),
(12488, 0, 0, 0, 1, 0, '63501 0'),
(35307, 0, 0, 0, 1, 0, '63501 0'),
(12448, 0, 0, 0, 1, 0, '63501 0'),
(35119, 0, 0, 0, 1, 0, '63501 0'),
(12011, 0, 0, 0, 1, 0, '63501 0'),
(34928, 0, 0, 0, 1, 0, '63501 0'),
(12010, 0, 0, 0, 1, 0, '63501 0'),
(35323, 0, 0, 0, 1, 0, '63399 0 62852 0 64723 0'),
(35570, 0, 0, 0, 1, 0, '63399 0 62852 0 64723 0'),
(12007, 0, 0, 0, 1, 0, '63399 0 62852 0 64723 0'),
(35326, 0, 0, 0, 1, 0, '63403 0 62852 0 64723 0'),
(35569, 0, 0, 0, 1, 0, '63403 0 62852 0 64723 0'),
(12005, 0, 0, 0, 1, 0, '63403 0 62852 0 64723 0'),
(35314, 0, 0, 0, 1, 0, '63433 0 62852 0 64723 0'),
(35572, 0, 0, 0, 1, 0, '63433 0 62852 0 64723 0'),
(12009, 0, 0, 0, 1, 0, '63433 0 62852 0 64723 0'),
(35325, 0, 0, 0, 1, 0, '63436 0 62852 0 64723 0'),
(35571, 0, 0, 0, 1, 0, '63436 0 62852 0 64723 0'),
(12006, 0, 0, 0, 1, 0, '63436 0 62852 0 64723 0'),
(35329, 0, 0, 0, 1, 0, '63427 0 62852 0 64723 0'),
(34703, 0, 0, 0, 1, 0, '63427 0 62852 0 64723 0'),
(12003, 0, 0, 0, 1, 0, '63427 0 62852 0 64723 0'),
(35331, 0, 0, 0, 1, 0, '63396 0 62852 0 64723 0'),
(34702, 0, 0, 0, 1, 0, '63396 0 62852 0 64723 0'),
(12000, 0, 0, 0, 1, 0, '63396 0 62852 0 64723 0'),
(35327, 0, 0, 0, 1, 0, '63430 0 62852 0 64723 0'),
(35617, 0, 0, 0, 1, 0, '63430 0 62852 0 64723 0'),
(12008, 0, 0, 0, 1, 0, '63430 0 62852 0 64723 0'),
(35328, 0, 0, 0, 1, 0, '62594 0 62852 0 64723 0'),
(34705, 0, 0, 0, 1, 0, '62594 0 62852 0 64723 0'),
(12004, 0, 0, 0, 1, 0, '62594 0 62852 0 64723 0'),
(35330, 0, 0, 0, 1, 0, '63423 0 62852 0 64723 0'),
(34701, 0, 0, 0, 1, 0, '63423 0 62852 0 64723 0'),
(12001, 0, 0, 0, 1, 0, '63423 0 62852 0 64723 0'),
(35332, 0, 0, 0, 1, 0, '63406 0 62852 0 64723 0'),
(12002, 0, 0, 0, 1, 0, '63406 0 62852 0 64723 0'),
(34657, 0, 0, 0, 1, 0, '63406 0 62852 0 64723 0');
UPDATE `creature_template` SET `VehicleId` =486 WHERE `entry` =35644;
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|1073741823 WHERE `entry` IN
(35309,12439,
35305,12488,
35307,12448);

-- Culling of Stratholme
DELETE FROM `creature` WHERE `id` IN (27737,27729,27734,27736,28199,28200,28201,28249,28409,32273) AND `map`=595;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
('28409','595','2','1','0','0','2338.47','1280.28','133.323','3.58524','30','0','0','8982','0','0','0','0','0','0'),
('32273','595','2','1','0','1839','2335.1','1278.2','132.885','3.43131','86400','0','0','417911','0','0','0','0','0','0'),
('27737','595','3','1','25543','0','2319.89','1285.78','131.407','1.72169','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','10979','0','2308.12','1304.21','127.601','4.39662','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','25542','0','2335.47','1262.04','132.921','1.42079','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','25543','0','2297.73','1338.75','124.622','2.5574','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','10979','0','2322.65','1265.39','133.033','5.6524','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','10973','0','2277.83','1331.92','124.19','3.48045','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','25543','0','2294.18','1316.93','125.672','6.05649','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','10973','0','2310.56','1369','128.372','5.03364','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','10979','0','2306.15','1322.85','125.708','4.99133','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','10973','0','2320.14','1297.48','129.694','1.35248','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','25542','0','2291.57','1327.27','124.545','5.32358','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','25542','0','2308.04','1352.65','126.907','5.83741','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','10979','0','2329.44','1281.11','132.636','2.25207','60','10','0','630','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2407.32','1423.8','131.522','6.24743','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2417.26','1428.41','131.652','6.20423','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2420.48','1419.99','130.716','0.0977616','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2426.63','1413.41','130.464','0.404064','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2430.46','1417.6','130.557','0.125247','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2433.94','1427.03','131.18','0.0584885','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2446.5','1428.37','131.013','6.10606','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2449.49','1423.35','130.588','5.77619','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2441.92','1424.41','130.606','6.07857','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2450.6','1438.61','132.213','4.74889','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2460.17','1436.46','131.501','4.73711','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2444.68','1421.68','130.324','6.01338','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2456.87','1419.07','130.488','5.39763','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2464.27','1422.15','130.976','5.22092','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2468.21','1403.06','130.39','5.6364','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2460.88','1406.8','130.508','5.96234','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2485.77','1398.35','130.795','4.71591','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2485.79','1380.46','130.15','5.02928','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2475.77','1396.31','130.124','4.84079','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2476.92','1387.21','129.401','5.05128','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2483.24','1389.37','130.123','4.74104','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2480.2','1370.15','129.533','5.79583','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2481.54','1375.11','129.642','5.4644','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2489.44','1359.42','131.233','5.378','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2486.59','1356.19','131.876','5.7275','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2495.53','1348.61','133.072','5.52722','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2504.48','1349.65','132.856','5.11881','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2493.11','1380.29','130.24','4.93189','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2487.18','1392.64','130.512','4.93818','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2506.49','1336.89','132.794','5.19343','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2518.2','1306.39','130.623','4.81723','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2513.4','1299.67','130.868','4.4206','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2511.45','1291.47','130.808','5.00729','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2518.56','1292.32','130.528','5.16438','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2515.49','1279.85','129.214','5.28847','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2514.37','1285.92','129.934','5.70473','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2522.65','1274.29','128.576','5.44634','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2535.38','1275.77','127.42','5.49817','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2537.59','1273.1','127.05','5.02693','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2547.49','1261.7','126.44','4.78425','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2534.36','1261.06','127.125','4.3994','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2532.69','1251.44','127.452','5.4479','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2551.84','1252.35','125.455','5.04342','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2536.1','1244','126.928','5.16515','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2543.63','1247.23','126.131','5.19735','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2554.21','1238.95','125.475','4.64836','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2548.89','1227.37','126.375','5.31517','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2560.46','1225.4','125.496','4.85335','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2555.11','1218.55','125.944','5.11646','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2561.91','1211.56','125.38','5.5877','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2568.67','1202.96','125.509','4.96095','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2571.93','1193.48','125.619','5.07641','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2577.77','1180.88','125.562','4.64522','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2574.2','1166.63','126.089','4.44966','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2564.78','1166.82','127.092','4.2266','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2577.56','1158.41','126.385','4.07738','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2567.93','1176.56','126.2','4.7489','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2559.28','1189.46','126.642','4.73319','60','10','0','756','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2554.14','1213.37','126.599','5.13845','60','10','0','706','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2560.58','1218.48','125.281','4.97351','60','10','0','730','0','0','1','0','0','0'),
('27737','595','3','1','0','0','2570.2','1170.58','126.311','4.64365','60','10','0','756','0','0','1','0','0','0'),
('27729','595','3','1','0','0','2496.57','1354.66','132.217','5.13691','120','5','0','63000','0','0','1','0','0','0'),
('27729','595','3','1','0','0','2494.22','1365.17','130.812','5.15654','120','5','0','63000','0','0','1','0','0','0'),
('27729','595','3','1','0','0','2440.41','1434.46','131.456','5.69372','120','5','0','63000','0','0','1','0','0','0'),
('27729','595','3','1','0','0','2433.18','1421.13','130.644','0.046706','120','5','0','63000','0','0','1','0','0','0'),
('27734','595','3','1','0','0','2546.07','1239.17','125.945','5.07801','120','5','0','63000','0','0','1','0','0','0'),
('27734','595','3','1','0','0','2458.58','1426.22','131.056','5.42984','120','5','0','63000','0','0','1','0','0','0'),
('27736','595','3','1','0','0','2488.11','1364.91','130.402','5.35524','120','5','0','130330','0','0','1','0','0','0'),
('28199','595','3','1','0','0','2527.63','1267.59','128.168','5.12906','120','5','0','63000','0','0','1','0','0','0'),
('28199','595','3','1','0','0','2528.06','1284.34','128.877','5.14869','120','5','0','63000','0','0','1','0','0','0'),
('28199','595','3','1','0','0','2466.27','1414.57','130.977','5.18637','120','5','0','63000','0','0','1','0','0','0'),
('28200','595','3','1','0','0','2570.51','1181.4','125.809','4.61855','120','5','0','50400','44070','0','1','0','0','0'),
('28200','595','3','1','0','0','2560.45','1202.05','126.031','4.85417','120','5','0','50400','44070','0','1','0','0','0'),
('28200','595','3','1','0','0','2487.85','1373.29','130.236','5.078','120','5','0','50400','44070','0','1','0','0','0'),
('28200','595','3','1','0','0','2416.7','1416.52','130.379','0.191224','120','5','0','50400','44070','0','1','0','0','0'),
('28200','595','3','1','0','0','2424.42','1422.68','130.868','0.25327','120','5','0','50400','44070','0','1','0','0','0'),
('28201','595','3','1','0','0','2540.67','1254.82','126.274','4.97198','120','5','0','130330','0','0','1','0','0','0'),
('28201','595','3','1','0','0','2410.03','1417.19','130.577','0.191229','120','5','0','130330','0','0','1','0','0','0'),
('28249','595','3','1','0','0','2562.66','1177.9','126.716','4.77171','120','5','0','63000','0','0','1','0','0','0'),
('28249','595','3','1','0','0','2566.72','1190.41','125.837','4.7992','120','5','0','63000','0','0','1','0','0','0'),
('28249','595','3','1','0','0','2472.34','1404.76','130.752','5.20601','120','5','0','63000','0','0','1','0','0','0'),
('28249','595','3','1','0','0','2460.59','1413.26','130.46','5.4377','120','5','0','63000','0','0','1','0','0','0'),
('28249','595','3','1','0','0','2415.04','1423.52','131.111','0.214785','120','5','0','63000','0','0','1','0','0','0');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` IN (52480, 58825);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) 
VALUES
(13, 52480, 18, 1, 27733),
(13, 58825, 18, 1, 27733);
UPDATE `gameobject` SET `spawntimesecs` = 86400 WHERE `id` IN (190663,193597);
UPDATE `creature_ai_scripts` SET `event_param3` = 10, `event_param4` = 10 WHERE `id` IN (2774302,2774303);
UPDATE `creature_template` SET `flags_extra` = `flags_extra`|128 WHERE `entry` = 20562;
UPDATE `creature` SET `spawnMask` = 3 WHERE `id` IN (27915,30997);
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|8|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|67108864|536870912 WHERE `entry` IN (26529,26530,26532,26533,31211,31212,31215,31217,32313);
UPDATE `creature_template` SET `dmg_multiplier` = 20 WHERE `entry` IN (31211,31212,31215,31217,32313);
UPDATE `item_template` SET `ScriptName`='' WHERE `entry`=37888;
UPDATE `creature_template` SET `ScriptName`= 'npc_cos_chromie' WHERE `entry` IN (27915,26527);
UPDATE `creature_template` SET `ScriptName` = 'npc_cos_arcane_disruptor_target' WHERE `entry` = 30996;
DELETE FROM `creature` WHERE `id` IN (27915,32273) AND `map` =595;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('27915','595','3','1','0','235','1813.56','1285.23','142.31','3.71074','300','0','0','17010','0','0','0','0','0','0'),
('32273','595','2','1','0','1839','2323.24','1294.86','130.681','4.74126','300','0','0','417911','0','0','0','0','0','0');

-- Drak'Tharon
DELETE FROM creature_loot_template WHERE entry IN (
31339,
31347,
31337,
31357,
31363,
31336,
31359,
31343,
31355,
31354,
31342,
31351,
31345,
31340,
31352,
31338,
31346)
 AND item IN (
 37799,
 37800,
 37801);
INSERT INTO creature_loot_template VALUES
(31346, 37799, 1.2, 1, 0, 1, 1),
(31340, 37799, 1.1, 1, 0, 1, 1),
(31347, 37799, 1.1, 1, 0, 1, 1),
(31352, 37799, 1.1, 1, 0, 1, 1),
(31354, 37799, 1.1, 1, 0, 1, 1),
(31357, 37799, 1.1, 1, 0, 1, 1),
(31359, 37799, 1.1, 1, 0, 1, 1),
(31342, 37799, 1  , 1, 0, 1, 1),
(31355, 37799, 1  , 1, 0, 1, 1),
(31363, 37799, 1  , 1, 0, 1, 1),
(31351, 37799, 0.9, 1, 0, 1, 1),
(31338, 37799, 0.7, 1, 0, 1, 1),
(31336, 37799, 0.6, 1, 0, 1, 1),
(31339, 37799, 0.5, 1, 0, 1, 1),
(31343, 37799, 0.5, 1, 0, 1, 1),
(31345, 37799, 0.5, 1, 0, 1, 1),
(31337, 37799, 0.1, 1, 0, 1, 1),
(31351, 37800, 1.5, 1, 0, 1, 1),
(31346, 37800, 1.2, 1, 0, 1, 1),
(31342, 37800, 1.2, 1, 0, 1, 1),
(31340, 37800, 1.1, 1, 0, 1, 1),
(31352, 37800, 1.1, 1, 0, 1, 1),
(31355, 37800, 1.1, 1, 0, 1, 1),
(31347, 37800, 1  , 1, 0, 1, 1),
(31354, 37800, 1  , 1, 0, 1, 1),
(31359, 37800, 1  , 1, 0, 1, 1),
(31363, 37800, 1  , 1, 0, 1, 1),
(31357, 37800, 0.9, 1, 0, 1, 1),
(31338, 37800, 0.7, 1, 0, 1, 1),
(31336, 37800, 0.6, 1, 0, 1, 1),
(31339, 37800, 0.5, 1, 0, 1, 1),
(31345, 37800, 0.5, 1, 0, 1, 1),
(31343, 37800, 0.4, 1, 0, 1, 1),
(31337, 37800, 0.1, 1, 0, 1, 1),
(31346, 37801, 1.2, 1, 0, 1, 1),
(31340, 37801, 1.1, 1, 0, 1, 1),
(31352, 37801, 1.1, 1, 0, 1, 1),
(31342, 37801, 1.1, 1, 0, 1, 1),
(31354, 37801, 1.1, 1, 0, 1, 1),
(31355, 37801, 1.1, 1, 0, 1, 1),
(31357, 37801, 1.1, 1, 0, 1, 1),
(31359, 37801, 1.1, 1, 0, 1, 1),
(31347, 37801, 1  , 1, 0, 1, 1),
(31351, 37801, 1  , 1, 0, 1, 1),
(31363, 37801, 0.9, 1, 0, 1, 1),
(31338, 37801, 0.7, 1, 0, 1, 1),
(31343, 37801, 0.7, 1, 0, 1, 1),
(31336, 37801, 0.6, 1, 0, 1, 1),
(31339, 37801, 0.5, 1, 0, 1, 1),
(31345, 37801, 0.5, 1, 0, 1, 1),
(31337, 37801, 0.1, 1, 0, 1, 1);
UPDATE creature_template SET unit_flags = unit_flags | 2 WHERE entry IN (26620,31339);

-- Eye of Eternity
UPDATE `instance_template` SET `script` = 'instance_eye_of_eternity' WHERE map = 616;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 30334;
UPDATE `creature_template` SET `flags_extra` = flags_extra | 2 WHERE `entry`= 30090;
UPDATE `creature_template` SET `flags_extra` = flags_extra | 2, `faction_A` = 35, `faction_H` = 35, `VehicleId` = 264 WHERE `entry` IN (30234, 30248);
UPDATE `creature_template` SET `flags_extra` = flags_extra | 2, `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 30118;
UPDATE `creature_template` SET `flags_extra` = flags_extra | 2 WHERE `entry` = 30282;
UPDATE `creature_template` SET `mindmg` = 1, `maxdmg` = 1, `dmg_multiplier` = 1 WHERE `entry` = 30592;
UPDATE `creature_template` SET `modelid1` = 11686, `modelid2` = 11686 WHERE `entry` = 22517;
UPDATE `gameobject_template` SET `flags` = 0, `data0` = 43 WHERE `entry` IN (193967, 193905);
UPDATE `creature_template` SET `ScriptName` = 'boss_malygos', unit_flags = unit_flags & ~256 WHERE `entry` = 28859;
UPDATE `creature` SET `MovementType` = 0, `spawndist` = 0 WHERE `id` = 28859;
UPDATE `creature_template` SET `ScriptName` = 'mob_nexus_lord' WHERE `entry` = 30245;
UPDATE `creature_template` SET `ScriptName` = 'mob_scion_of_eternity' WHERE `entry` = 30249;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `ScriptName` = 'mob_power_spark' WHERE `entry` = 30084;
UPDATE `creature_template` SET `ScriptName` = 'npc_arcane_overload' WHERE `entry` = 30282;
UPDATE `gameobject_template` SET `ScriptName` = 'go_malygos_iris' WHERE `entry` IN (193960,193958); 
UPDATE `creature_template` SET `spell1` = 56091, `spell2` = 56092, `spell3` = 57090, `spell4` = 57143, `spell5` = 57108, `spell6` = 57403, `VehicleId` = 165 WHERE entry IN (30161, 31752);
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 13 AND `SourceEntry` = 56505;
INSERT INTO `conditions` (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, COMMENT) VALUES
(13, 0, 56505, 0, 18, 1, 22517, 0, 0, "Surge of Power - cast only on World Trigger (Large AOI)");
UPDATE `creature_template` SET flags_extra = flags_extra | 1, mechanic_immune_mask = 1072902595 WHERE `entry` IN (30245, 31750);
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1616034 AND -1616000;
INSERT INTO `script_texts` (npc_entry, entry, content_default, sound, type, language, emote, comment) VALUES
(28859, -1616000, 'Lesser beings, intruding here! A shame that your excess courage does not compensate for your stupidity!', 14512, 1, 0, 0, 'Malygos INTRO 1'),
(28859, -1616001, 'None but the blue dragonflight are welcome here! Perhaps this is the work of Alexstrasza? Well then, she has sent you to your deaths.', 14513, 1, 0, 0, 'Malygos INTRO 2'),
(28859, -1616002, 'What could you hope to accomplish, to storm brazenly into my domain? To employ MAGIC? Against ME?', 14514, 1, 0, 0, 'Malygos INTRO 3'),
(28859, -1616003, 'I am without limits here... the rules of your cherished reality do not apply... In this realm, I am in control...', 14515, 1, 0, 0, 'Malygos INTRO 4'),
(28859, -1616004, 'I give you one chance. Pledge fealty to me, and perhaps I won\'t slaughter you for your insolence!', 14516, 1, 0, 0, 'Malygos INTRO 5'),
(28859, -1616005, 'My patience has reached its limit, I WILL BE RID OF YOU!', 14517, 1, 0, 0, 'Malygos AGGRO 1'),
(28859, -1616006, 'Watch helplessly as your hopes are swept away...', 14525, 1, 0, 0, 'Malygos VORTEX'),
(28859, -1616007, 'I AM UNSTOPPABLE!', 14533, 1, 0, 0, 'Malygos SPARK BUFF'),
(28859, -1616008, 'Your stupidity has finally caught up to you!', 14519, 1, 0, 0, 'Malygos SLAY 1-1'),
(28859, -1616009, 'More artifacts to confiscate...', 14520, 1, 0, 0, 'Malygos SLAY 1-2'),
(28859, -1616010, 'How very... naive...', 14521, 1, 0, 0, 'Malygos SLAY 1-3'),
(28859, -1616012, 'I had hoped to end your lives quickly, but you have proven more...resilient then I had anticipated. Nonetheless, your efforts are in vain, it is you reckless, careless mortals who are to blame for this war! I do what I must...And if it means your...extinction...THEN SO BE IT!', 14522, 1, 0, 0, 'Malygos PHASEEND 1'),
(28859, -1616013, 'Few have experienced the pain I will now inflict upon you!', 14523, 1, 0, 0, 'Malygos AGGRO 2'),
(28859, -1616014, 'YOU WILL NOT SUCCEED WHILE I DRAW BREATH!', 14518, 1, 0, 0, 'Malygos DEEP BREATH'),
(28859, -1616016, 'I will teach you IGNORANT children just how little you know of magic...', 14524, 1, 0, 0, 'Malygos ARCANE OVERLOAD'),
(28859, -1616020, 'Your energy will be put to good use!', 14526, 1, 0, 0, 'Malygos SLAY 2-1'),
(28859, -1616021, 'I AM THE SPELL-WEAVER! My power is INFINITE!', 14527, 1, 0, 0, 'Malygos SLAY 2-2'),
(28859, -1616022, 'Your spirit will linger here forever!', 14528, 1, 0, 0, 'Malygos SLAY 2-3'),
(28859, -1616017, 'ENOUGH! If you intend to reclaim Azeroth\'s magic, then you shall have it...', 14529, 1, 0, 0, 'Malygos PHASEEND 2'),
(28859, -1616018, 'Now your benefactors make their appearance...But they are too late. The powers contained here are sufficient to destroy the world ten times over! What do you think they will do to you?', 14530, 1, 0, 0, 'Malygos PHASE 3 INTRO'),
(28859, -1616019, 'SUBMIT!', 14531, 1, 0, 0, 'Malygos AGGRO 3'),
(28859, -1616026, 'The powers at work here exceed anything you could possibly imagine!', 14532, 1, 0, 0, 'Malygos STATIC FIELD'),
(28859, -1616023, 'Alexstrasza! Another of your brood falls!', 14534, 1, 0, 0, 'Malygos SLAY 3-1'),
(28859, -1616024, 'Little more then gnats!', 14535, 1, 0, 0, 'Malygos SLAY 3-2'),
(28859, -1616025, 'Your red allies will share your fate...', 14536, 1, 0, 0, 'Malygos SLAY 3-3'),
(28859, -1616027, 'Still standing? Not for long...', 14537, 1, 0, 0, 'Malygos SPELL 1'),
(28859, -1616028, 'Your cause is lost!', 14538, 1, 0, 0, 'Malygos SPELL 1'),
(28859, -1616029, 'Your fragile mind will be shattered!', 14539, 1, 0, 0, 'Malygos SPELL 1'),
(28859, -1616030, 'UNTHINKABLE! The mortals will destroy... e-everything... my sister... what have you-', 14540, 1, 0, 0, 'Malygos DEATH'),
(32295, -1616031, 'I did what I had to, brother. You gave me no alternative.', 14406, 1, 0, 0, 'Alexstrasza OUTRO 1'),
(32295, -1616032, 'And so ends the Nexus War.', 14407, 1, 0, 0, 'Alexstrasza OUTRO 2'),
(32295, -1616033, 'This resolution pains me deeply, but the destruction, the monumental loss of life had to end. Regardless of Malygos\' recent transgressions, I will mourn his loss. He was once a guardian, a protector. This day, one of the world\'s mightiest has fallen.', 14408, 1, 0, 0, 'Alexstrasza OUTRO 3'),
(32295, -1616034, 'The red dragonflight will take on the burden of mending the devastation wrought on Azeroth. Return home to your people and rest. Tomorrow will bring you new challenges, and you must be ready to face them. Life...goes on.', 14409, 1, 0, 0, 'Alexstrasza OUTRO 4');

-- Halls of Lightning
SET @lootid_bjarngrim = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28586));
SET @lootid_volkhan   = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28587));
SET @lootid_ionar     = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28546));
SET @lootid_loken     = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28923));
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES 
(2858501, 28585, 1, 0, 100, 1|2, 
0, 0, 5000, 5000, 
11, 61509, 0, 0, 
0, 0, 0, 0, 
0, 0, 0, 0,
'Halls of Lightning - Slag - Melt Armor OOC');
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES 
(2858502, 28585, 0, 0, 100, 1|2, 
0, 0, 5000, 5000, 
11, 61509, 0, 0, 
0, 0, 0, 0, 
0, 0, 0, 0,
'Halls of Lightning - Slag - Melt Armor');
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment) VALUES 
(2858599, 28585, 6, 0, 100, 2, 
0, 0, 0, 0, 
11, 23113, 0, 1, 
0, 0, 0, 0, 
0, 0, 0, 0,
'Halls of Lightning - Slag - Blast Wave on Death');
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment)
VALUES 
(2858503, 28585, 1, 0, 100, 1|4, 
0, 0, 5000, 5000, 
11, 61510, 0, 0, 
0, 0, 0, 0, 
0, 0, 0, 0,
'Halls of Lightning Heroic - Slag - Melt Armor OOC');
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment)
VALUES 
(2858504, 28585, 0, 0, 100, 1|4, 
0, 0, 5000, 5000, 
11, 61510, 0, 0, 
0, 0, 0, 0, 
0, 0, 0, 0,
'Halls of Lightning Heroic - Slag - Melt Armor');
REPLACE INTO creature_ai_scripts (id, creature_id, event_type, event_inverse_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action1_type, action1_param1, action1_param2, action1_param3, action2_type, action2_param1, action2_param2, action2_param3, action3_type, action3_param1, action3_param2, action3_param3, comment)
VALUES 
(2858598, 28585, 6, 0, 100, 4, 
0, 0, 0, 0, 
11, 22424, 0, 1, 
0, 0, 0, 0, 
0, 0, 0, 0,
'Halls of Lightning Heroic - Slag - Blast Wave on Death');
SET @boss_bjarngrim = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28586);
SET @boss_volkhan   = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28587);
SET @boss_ionar     = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28546);
SET @boss_loken     = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 28923);
UPDATE creature_template SET dmg_multiplier = 20 WHERE entry IN (@boss_bjarngrim, @boss_volkhan, @boss_ionar, @boss_loken);
UPDATE creature_template SET dmg_multiplier = dmg_multiplier + 2 WHERE entry IN (31537, 30979, 30967, 30966, 30968, 30977, 30974, 30964, 30983, 30970, 31533, 31536, 30969, 30965, 30978, 30971, 30975, 30976, 30981, 30972, 31538, 31867, 30980, 30982, 30973);
UPDATE creature_template SET faction_A = 14 WHERE entry = 28695;
UPDATE creature_template SET faction_H = 14 WHERE entry = 28695;
UPDATE creature_template SET faction_H = 14 WHERE entry = 28926;
UPDATE creature_template SET faction_H = 14 WHERE entry = 28926;
INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) 
VALUES
('-52658','53337','0','Static Overload'),
('-59795','59798','0','Static Overload');
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (28923,28926,28961,28965,29240,28920,28838,28837,28836,28835,28826,28695,28587,28586,28585,28584,28583,28582,28581,28580,28579,28547,28578,28546);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2858300', '28583', '0', '0', '100', '3', '6000', '8000', '10000', '15000', '11', '52531', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blistering Steamrager - Steam Blast'),
('2858301', '28583', '0', '0', '100', '5', '6000', '8000', '10000', '15000', '11', '59141', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Blistering Steamrager - Steam Blast'),
('2857901', '28579', '9', '0', '100', '3', '5', '20', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Stop Moving when in Throw Range'),
('2857910', '28579', '9', '0', '100', '3', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Start Moving when not in Throw Range I'),
('2857909', '28579', '9', '0', '100', '3', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Start Moving when not in Throw Range II'),
('2857908', '28579', '9', '0', '100', '3', '5', '20', '3500', '4100', '11', '52740', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Cast Throw'),
('2857907', '28579', '2', '0', '100', '2', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '21', '1', '0', '0', 'Hardened Steel Berserker - Flee at 15% HP'),
('2857906', '28579', '9', '0', '100', '5', '5', '20', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Stop Moving when in Throw Range'),
('2857900', '28579', '9', '0', '100', '5', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Start Moving when not in Throw Range I'),
('2857905', '28579', '9', '0', '100', '5', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Start Moving when not in Throw Range II'),
('2857904', '28579', '9', '0', '100', '5', '5', '20', '3500', '4100', '11', '59259', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Cast Throw'),
('2857903', '28579', '2', '0', '100', '4', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '21', '1', '0', '0', 'Hardened Steel Berserker - Flee at 15% HP'),
('2857902', '28579', '2', '0', '100', '6', '30', '0', '0', '0', '11', '61369', '0', '0', '1', '-106', '0', '0', '0', '0', '0', '0', 'Hardened Steel Berserker - Casts Enrage at 30% HP'),
('2857800', '28578', '0', '0', '100', '3', '6000', '8000', '10000', '12000', '11', '15655', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Reaver - Shield Slam'),
('2857802', '28578', '0', '0', '100', '5', '6000', '8000', '10000', '12000', '11', '59142', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Reaver - Shield Slam'),
('2857801', '28578', '0', '0', '100', '7', '8000', '10000', '14000', '16000', '11', '42724', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Reaver - Cleave'),
('2858003', '28580', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Stop Movement on Aggro'),
('2858002', '28580', '4', '0', '100', '2', '0', '0', '0', '0', '11', '16100', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Cast Shoot and Set Phase 1 on Aggro'),
('2858001', '28580', '0', '6', '100', '3', '2200', '4700', '2200', '4700', '11', '16100', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Cast Shoot (Phase 1)'),
('2858005', '28580', '9', '6', '100', '3', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Start Movement at 20 Yards (Phase 1)'),
('2858006', '28580', '9', '6', '100', '3', '6', '10', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Stop Movement at 10 Yards (Phase 1)'),
('2858007', '28580', '9', '6', '100', '3', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Start Movement at 5 Yards (Phase 1)'),
('2858004', '28580', '2', '0', '100', '2', '15', '0', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Set Phase 2 at 15% HP'),
('2858016', '28580', '2', '5', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', 'Hardened Steel Skycaller - Start Movement and Flee at 15% HP (Phase 2)'),
('2858017', '28580', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - On Evade set Phase to 0'),
('2858018', '28580', '0', '0', '100', '3', '6000', '8000', '11000', '11000', '11', '52754', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Impact Shot'),
('2858020', '28580', '0', '0', '100', '3', '4000', '4000', '9000', '14000', '11', '52755', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Impact Multi-Shot'),
('2858019', '28580', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Stop Movement on Aggro'),
('2858021', '28580', '4', '0', '100', '4', '0', '0', '0', '0', '11', '61515', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Cast Shoot and Set Phase 1 on Aggro'),
('2858015', '28580', '0', '6', '100', '5', '2200', '4700', '2200', '4700', '11', '61515', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Cast Shoot (Phase 1)'),
('2858014', '28580', '9', '6', '100', '5', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Start Movement at 20 Yards (Phase 1)'),
('2858009', '28580', '9', '6', '100', '5', '6', '10', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Stop Movement at 10 Yards (Phase 1)'),
('2858022', '28580', '9', '6', '100', '5', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'RHardened Steel Skycaller - Start Movement at 5 Yards (Phase 1)'),
('2858008', '28580', '2', '0', '100', '4', '15', '0', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Set Phase 2 at 15% HP'),
('2858000', '28580', '2', '5', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', 'Hardened Steel Skycaller - Start Movement and Flee at 15% HP (Phase 2)'),
('2858010', '28580', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - On Evade set Phase to 0'),
('2858011', '28580', '0', '0', '100', '5', '6000', '8000', '11000', '11000', '11', '59148', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Impact Shot'),
('2858012', '28580', '0', '0', '100', '5', '4000', '4000', '9000', '14000', '11', '59147', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Impact Multi-Shot'),
('2858013', '28580', '0', '0', '100', '7', '6000', '8000', '25000', '35000', '11', '61507', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Hardened Steel Skycaller - Disengage'),
('2869503', '28695', '0', '0', '100', '7', '6000', '8000', '15000', '15000', '11', '23113', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Golem - Blast Wave'),
('2869504', '28695', '0', '0', '100', '3', '4000', '4000', '20000', '24000', '11', '52433', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Golem - Immolation Strike'),
('2869500', '28695', '0', '0', '100', '3', '10000', '10000', '12000', '18000', '11', '52429', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Golem - Shatter'),
('2869501', '28695', '0', '0', '100', '5', '4000', '4000', '20000', '24000', '11', '59530', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Golem - Immolation Strike'),
('2869502', '28695', '0', '0', '100', '5', '10000', '10000', '12000', '18000', '11', '59527', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Molten Golem - Shatter'),
('2858502', '28585', '0', '0', '100', '3', '6000', '8000', '10000', '14000', '11', '22424', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Slag - Blast Wave'),
('2858503', '28585', '0', '0', '100', '3', '4000', '6000', '5000', '7000', '11', '61509', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Slag - Melt Armor'),
('2858501', '28585', '0', '0', '100', '5', '6000', '8000', '10000', '14000', '11', '23113', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Slag- Blast Wave'),
('2858500', '28585', '0', '0', '100', '5', '3000', '6000', '5000', '7000', '11', '61510', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Slag - Melt Armor'),
('2892600', '28926', '0', '0', '100', '3', '6000', '8000', '10000', '12000', '11', '52671', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Spark of Ionar - Arcing Burn'),
('2892601', '28926', '0', '0', '100', '5', '6000', '8000', '10000', '12000', '11', '59834', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Spark of Ionar - Arcing Burn'),
('2883505', '28835', '4', '0', '100', '2', '0', '0', '0', '0', '11', '61579', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Runic Focus'),
('2883502', '28835', '0', '0', '100', '3', '6000', '8000', '18000', '18000', '11', '53167', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Forked Lightning'),
('2883503', '28835', '0', '0', '100', '3', '4000', '4000', '14000', '15000', '11', '53068', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Rune Punch'),
('2883504', '28835', '4', '0', '100', '4', '0', '0', '0', '0', '11', '61596', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Runic Focus'),
('2883501', '28835', '0', '0', '100', '3', '6000', '8000', '18000', '18000', '11', '59152', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Forked Lightning'),
('2883500', '28835', '0', '0', '100', '3', '4000', '4000', '14000', '15000', '11', '59151', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Construct - Rune Punch'),
('2892000', '28920', '0', '0', '100', '7', '5000', '5000', '14000', '15000', '11', '32315', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Giant - Soul Strike'),
('2892004', '28920', '0', '0', '100', '3', '3000', '3000', '12000', '12000', '11', '53072', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Giant - Stormbolt'),
('2892001', '28920', '0', '0', '100', '3', '10000', '10000', '18000', '18000', '11', '53071', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Giant - Thunderstorm'),
('2892002', '28920', '0', '0', '100', '5', '3000', '3000', '12000', '12000', '11', '59155', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Giant - Stormbolt'),
('2892003', '28920', '0', '0', '100', '5', '10000', '10000', '18000', '18000', '11', '59154', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Giant - Thunderstorm'),
('2924003', '29240', '4', '0', '100', '6', '0', '0', '0', '0', '11', '59085', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Lieutenant - Renew Steel'),
('2924002', '29240', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Lieutenant - Arc Weld'),
('2924004', '29240', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59160', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Lieutenant - Arc Weld'),
('2924001', '29240', '0', '0', '100', '7', '5000', '5000', '15000', '15000', '11', '52773', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Hammer Blow'),
('2924000', '29240', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Renew Steel'),
('2924005', '29240', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59160', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Renew Steel'),
('2883600', '28836', '0', '0', '100', '7', '6000', '8000', '20000', '24000', '11', '53048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Runeshaper - Startling Roar'),
('2883601', '28836', '0', '0', '100', '3', '5000', '5000', '15000', '15000', '11', '53049', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Runeshaper - ChargedFlurry'),
('2883602', '28836', '0', '0', '100', '5', '5000', '5000', '15000', '15000', '11', '61581', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Runeshaper - Charged Flurry'),
('2883700', '28837', '0', '0', '100', '7', '6000', '8000', '20000', '24000', '11', '53047', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Sentinel - Soul Strike'),
('2883701', '28837', '2', '0', '100', '3', '50', '0', '12300', '14900', '11', '34423', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Sentinel - Casts Renew at 50% HP'),
('2883704', '28837', '2', '0', '100', '5', '50', '0', '12300', '14900', '11', '37978', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Sentinel - Casts Renew at 50% HP'),
('2883703', '28837', '0', '0', '100', '3', '5000', '5000', '15000', '15000', '11', '53045', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Sentinel - Sleep'),
('2883702', '28837', '0', '0', '100', '5', '5000', '5000', '15000', '15000', '11', '59165', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Sentinel - Sleep'),
('2858102', '28581', '4', '0', '100', '6', '0', '0', '0', '0', '11', '59085', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Tactician - Arc Weld'),
('2858101', '28581', '0', '0', '100', '3', '5000', '5000', '15000', '15000', '11', '52778', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Tactician - Welding Beam'),
('2858100', '28581', '0', '0', '100', '5', '5000', '5000', '15000', '15000', '11', '59166', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Tactician - Welding Beam'),
('2882603', '28826', '0', '0', '100', '3', '3000', '3000', '11000', '12000', '11', '53043', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormfury Revenant - Electro Shock'),
('2882602', '28826', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52905', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormfury Revenant - Thunderbolt'),
('2882601', '28826', '0', '0', '100', '5', '3000', '3000', '11000', '12000', '11', '59168', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormfury Revenant - Electro Shock'),
('2882600', '28826', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59167', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormfury Revenant - Thunderbolt'),
('2854708', '28547', '0', '0', '100', '7', '6000', '8000', '14000', '15000', '11', '60236', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Cyclone'),
('2854709', '28547', '0', '0', '100', '2', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Stop Movement on Aggro'),
('2854710', '28547', '4', '0', '100', '2', '0', '0', '0', '0', '11', '53044', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Cast Fireball and Set Phase 1 on Aggro'),
('2854711', '28547', '0', '6', '100', '3', '3400', '4700', '3400', '4700', '0', '0', '0', '0', '11', '53044', '1', '0', '0', '0', '0', '0', 'Storming Vortex - Cast Fireball (Phase 1)'),
('2854714', '28547', '3', '6', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Start Movement and Set Phase 2 when Mana is at 15%'),
('2854713', '28547', '9', '6', '100', '3', '25', '80', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Start Movement Beyond 25 Yards'),
('2854700', '28547', '3', '5', '100', '3', '100', '30', '100', '100', '22', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Set Phase 1 when Mana is above 30% (Phase 2)'),
('2854717', '28547', '2', '0', '100', '2', '15', '0', '0', '0', '22', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Set Phase 3 at 15% HP'),
('2854716', '28547', '2', '3', '100', '2', '15', '0', '0', '0', '21', '1', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', 'Storming Vortex - Start Movement and Flee at 15% HP (Phase 3)'),
('2854707', '28547', '7', '0', '100', '2', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - On Evade set Phase to 0'),
('2854715', '28547', '0', '0', '100', '4', '0', '0', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Stop Movement on Aggro'),
('2854718', '28547', '4', '0', '100', '4', '0', '0', '0', '0', '11', '59169', '1', '0', '22', '6', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Cast Fireball and Set Phase 1 on Aggro'),
('2854706', '28547', '0', '6', '100', '5', '3400', '4700', '3400', '4700', '0', '0', '0', '0', '11', '59169', '1', '0', '0', '0', '0', '0', 'Storming Vortex - Cast Fireball (Phase 1)'),
('2854704', '28547', '3', '6', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '22', '5', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Start Movement and Set Phase 2 when Mana is at 15%'),
('2854703', '28547', '9', '6', '100', '5', '25', '80', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Start Movement Beyond 25 Yards'),
('2854702', '28547', '3', '5', '100', '5', '100', '30', '100', '100', '22', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Set Phase 1 when Mana is above 30% (Phase 2)'),
('2854712', '28547', '2', '0', '100', '4', '15', '0', '0', '0', '22', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - Set Phase 3 at 15% HP'),
('2854705', '28547', '2', '3', '100', '4', '15', '0', '0', '0', '21', '1', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', 'Storming Vortex - Start Movement and Flee at 15% HP (Phase 3)'),
('2854701', '28547', '7', '0', '100', '4', '0', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Storming Vortex - On Evade set Phase to 0'),
('2896103', '28961', '0', '0', '100', '3', '3000', '3000', '14000', '14000', '11', '52891', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Siegebreaker - Blade Turning'),
('2896101', '28961', '0', '0', '100', '5', '3000', '3000', '14000', '14000', '11', '59173', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Siegebreaker - Blade Turning'),
('2896102', '28961', '0', '0', '100', '7', '6000', '8000', '20000', '24000', '11', '19134', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Siegebreaker - Frightening Shout'),
('2896100', '28961', '0', '0', '100', '7', '9000', '9000', '16000', '18000', '11', '52890', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Siegebreaker - Penetrating Strike'),
('2896104', '28961', '0', '0', '100', '7', '10000', '10000', '20000', '20000', '11', '23600', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Siegebreaker - Piercing Howl'),
('2883801', '28838', '4', '0', '100', '6', '0', '0', '0', '0', '11', '58619', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Vanguard - Charge'),
('2883800', '28838', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52890', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Vanguard - Poison Tipped Spear'),
('2896502', '28965', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52885', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Deadly Throw'),
('2896504', '28965', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52879', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Deflection'),
('2896513', '28965', '9', '0', '100', '3', '5', '20', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Stop Moving when in Throw Range'),
('2896512', '28965', '9', '0', '100', '3', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Start Moving when not in Throw Range I'),
('2896511', '28965', '9', '0', '100', '3', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Start Moving when not in Throw Range II'),
('2896510', '28965', '9', '0', '100', '3', '5', '20', '3500', '4100', '11', '52904', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Cast Throw'),
('2896500', '28965', '2', '0', '100', '2', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '21', '1', '0', '0', 'Titanium Thunderer - Flee at 15% HP'),
('2896509', '28965', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59180', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Deadly Throw'),
('2896505', '28965', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59181', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Deflection'),
('2896506', '28965', '9', '0', '100', '5', '5', '20', '0', '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Stop Moving when in Throw Range'),
('2896507', '28965', '9', '0', '100', '5', '0', '5', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Start Moving when not in Throw Range I'),
('2896503', '28965', '9', '0', '100', '5', '20', '100', '0', '0', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Start Moving when not in Throw Range II'),
('2896508', '28965', '9', '0', '100', '5', '5', '20', '3500', '4100', '11', '59179', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Titanium Thunderer - Cast Throw'),
('2896501', '28965', '2', '0', '100', '4', '15', '0', '0', '0', '25', '0', '0', '0', '1', '-47', '0', '0', '21', '1', '0', '0', 'Titanium Thunderer - Flee at 15% HP'),
('2858403', '28584', '0', '0', '100', '3', '6000', '8000', '20000', '24000', '11', '52624', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Unbound Firestorm - Afterburn'),
('2858402', '28584', '0', '0', '100', '3', '3000', '3000', '12000', '12000', '11', '53788', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Unbound Firestorm - Lava Burst'),
('2858401', '28584', '0', '0', '100', '5', '6000', '8000', '20000', '24000', '11', '59183', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'Unbound Firestorm - Afterburn'),
('2858400', '28584', '0', '0', '100', '5', '3000', '3000', '12000', '12000', '11', '59182', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Unbound Firestorm - Lava Burst'),
('2858602', '28586', '2', '0', '100', '6', '90', '85', '0', '0', '11', '53790', '0', '0', '22', '6', '0', '0', '11', '41105', '0', '0', 'General Bjarngrim - Cast Defensive Stance and Set Phase 1'),
('2858618', '28586', '0', '6', '100', '7', '3000', '6000', '8000', '12000', '11', '36096', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Spell Reflection (Phase 1)'),
('2858617', '28586', '0', '6', '100', '7', '5000', '9000', '10000', '10000', '11', '12555', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Pummel (Phase 1)'),
('2858616', '28586', '2', '6', '100', '6', '60', '55', '0', '0', '11', '53791', '0', '0', '11', '41107', '0', '0', '22', '5', '0', '0', 'General Bjarngrim - Cast Berserker Stance and Set Phase 2 at 60% (Phase 1)'),
('2858623', '28586', '0', '5', '100', '7', '1000', '5000', '3000', '5000', '11', '15284', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Cleave (Phase 2)'),
('2858613', '28586', '0', '5', '100', '7', '3000', '8000', '5000', '9000', '11', '52029', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Knock Away (Phase 2)'),
('2858612', '28586', '0', '5', '100', '7', '7000', '12000', '12000', '17000', '11', '52026', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Slam (Phase 2)'),
('2858611', '28586', '0', '5', '100', '3', '7000', '12000', '10000', '18000', '11', '52027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Whirlwind (Phase 2)'),
('2858610', '28586', '0', '5', '100', '5', '7000', '12000', '10000', '18000', '11', '52028', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Whirlwind (Phase 2)'),
('2858609', '28586', '2', '5', '100', '6', '30', '25', '0', '0', '11', '53792', '0', '0', '11', '41106', '0', '0', '22', '4', '0', '0', 'General Bjarngrim - Cast Battle Stance and Set Phase 3 at 30% (Phase 2)'),
('2858604', '28586', '0', '4', '100', '7', '3000', '8000', '10000', '15000', '11', '52098', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Charge Up (Phase 3)'),
('2858608', '28586', '0', '4', '100', '7', '4000', '7000', '10000', '20000', '11', '52022', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Ironform (Phase 3)'),
('2858624', '28586', '0', '4', '100', '7', '1000', '3000', '3000', '6000', '11', '16856', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Mortal Strike (Phase 3)'),
('2858614', '28586', '0', '4', '100', '3', '7000', '12000', '10000', '18000', '11', '52027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Whirlwind (Phase 3)'),
('2858615', '28586', '0', '4', '100', '5', '7000', '12000', '10000', '18000', '11', '52028', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Whirlwind (Phase 3)'),
('2858619', '28586', '4', '0', '100', '6', '0', '0', '0', '0', '11', '58769', '1', '0', '1', '-1424', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Intercept and Say on Aggro'),
('2858620', '28586', '2', '4', '100', '6', '10', '0', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Set Phase 0 at 10% (Phase 3)'),
('2858621', '28586', '0', '0', '100', '7', '3000', '8000', '10000', '15000', '11', '52098', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Charge Up'),
('2858622', '28586', '0', '0', '100', '7', '4000', '7000', '10000', '20000', '11', '52022', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Ironform'),
('2858607', '28586', '0', '0', '100', '7', '1000', '3000', '3000', '6000', '11', '16856', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Cast Mortal Strike'),
('2858606', '28586', '2', '0', '100', '6', '90', '85', '0', '0', '1', '-1426', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Yell on Defensive Stance'),
('2858605', '28586', '2', '5', '100', '6', '30', '25', '0', '0', '1', '-1425', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Yell on Battle Stance'),
('2858600', '28586', '2', '6', '100', '6', '60', '55', '0', '0', '1', '-1427', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Yell on Berserker Stance'),
('2858601', '28586', '5', '1', '100', '7', '3000', '5000', '0', '0', '1', '-1428', '-1429', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Yell on Kill'),
('2858603', '28586', '6', '0', '100', '6', '0', '0', '0', '0', '1', '-1430', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'General Bjarngrim - Yell on Death'),
('2858707', '28587', '0', '0', '100', '7', '10000', '10000', '50000', '50000', '11', '52238', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Cast Temper'),
('2858706', '28587', '0', '0', '100', '3', '7000', '10000', '15000', '20000', '11', '52237', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Cast Shattering Stomp'),
('2858700', '28587', '0', '0', '100', '5', '7000', '10000', '15000', '20000', '11', '59529', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Cast Shattering Stomp'),
('2858705', '28587', '0', '0', '100', '5', '15000', '15000', '30000', '30000', '11', '59528', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Cast Heat'),
('2858704', '28587', '0', '0', '100', '3', '15000', '15000', '30000', '30000', '11', '52387', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Cast Heat'),
('2858703', '28587', '0', '0', '100', '7', '15000', '15000', '30000', '30000', '1', '-1434', '-1435', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Say on Heat'),
('2858702', '28587', '0', '0', '100', '7', '7000', '10000', '15000', '20000', '1', '-1436', '-1437', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Say on Stomp'),
('2858701', '28587', '4', '0', '100', '6', '0', '0', '0', '0', '1', '-1392', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Say on Aggro'),
('2858708', '28587', '5', '0', '100', '7', '3000', '5000', '0', '0', '1', '-1438', '-1439', '-1440', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Say on Kill'),
('2858709', '28587', '6', '0', '100', '6', '0', '0', '0', '0', '1', '-1441', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Volkhan - Say on Death'),
('2854608', '28546', '0', '0', '100', '3', '2000', '6000', '5000', '9000', '11', '52780', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Cast Ball Lightning'),
('2854607', '28546', '0', '0', '100', '5', '2000', '6000', '5000', '9000', '11', '59800', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Cast Ball Lightning'),
('2854605', '28546', '0', '0', '100', '3', '6000', '10000', '8000', '12000', '11', '52658', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Cast Static Overload'),
('2854604', '28546', '0', '0', '100', '5', '6000', '10000', '8000', '12000', '11', '59795', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Cast Static Overload'),
('2854603', '28546', '0', '0', '100', '7', '10000', '15000', '10000', '20000', '11', '52770', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Cast Disperse'),
('2854602', '28546', '0', '0', '100', '7', '10000', '15000', '10000', '20000', '1', '-1446', '-1447', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Say on Disperse'),
('2854600', '28546', '4', '0', '100', '6', '0', '0', '0', '0', '1', '-1445', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Say on Aggro'),
('2854601', '28546', '5', '0', '100', '7', '3000', '5000', '0', '0', '1', '-1448', '-1450', '-1451', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Say on Kill'),
('2854606', '28546', '6', '0', '100', '6', '3000', '5000', '0', '0', '1', '-1449', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ionar - Say on Death'),
('2892303', '28923', '0', '0', '100', '7', '2000', '5000', '3000', '8000', '11', '52921', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Arc Lightning'),
('2892304', '28923', '0', '0', '100', '3', '10000', '10000', '20000', '20000', '11', '52960', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Lightning Nova'),
('2892305', '28923', '0', '0', '100', '5', '10000', '10000', '20000', '20000', '11', '59835', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Lightning Nova'),
('2892301', '28923', '4', '0', '100', '6', '0', '0', '0', '0', '1', '-1457', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say on Aggro'),
('2892306', '28923', '6', '0', '100', '6', '0', '0', '0', '0', '1', '-1467', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say on Death'),
('2892307', '28923', '0', '0', '100', '7', '10000', '10000', '20000', '20000', '1', '-1458', '-1459', '-1460', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say on Lightning Nova'),
('2892309', '28923', '5', '0', '100', '7', '3000', '5000', '0', '0', '1', '-1461', '-1462', '-1463', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say on Kill'),
('2892300', '28923', '2', '0', '100', '6', '75', '70', '0', '0', '1', '-1464', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say at 75%'),
('2892308', '28923', '2', '0', '100', '6', '50', '45', '0', '0', '1', '-1465', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say at 50%'),
('2892302', '28923', '2', '0', '100', '6', '25', '20', '0', '0', '1', '-1466', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Loken - Say at 25%'),
('2858202', '28582', '0', '0', '100', '7', '3000', '6000', '6000', '8000', '11', '52773', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Cast Hammer Blow'),
('2858201', '28582', '2', '0', '100', '3', '30', '0', '30000', '40000', '11', '52774', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Cast Renew Steel at 30%'),
('2858200', '28582', '2', '0', '100', '5', '30', '0', '30000', '40000', '11', '59160', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Stormforged Mender - Cast Renew Steel at 30%');
DELETE FROM `creature_ai_texts` WHERE `entry` IN(-1392,-1424,-1425,-1426,-1427,-1428,-1429,-1430,-1382,-1434,-1435,-1436,-1437,-1438,-1439,-1440,-1441,-1445,-1446,-1447,-1448,-1449,-1450,-1451,-1457,-1458,-1459,-1460,-1461,-1462,-1463,-1464,-1465,-1466,-1467);
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `comment`) values
('-1392','Corpse go boom!','13184','1','0','Trollgore'),
('-1424','I\'m the greatest of my father\'s sons! Your end has come!','14149','1','0','General Bjarngrim'),
('-1425','Defend yourself, for all the good it will do!','14151','1','0','General Bjarngrim'),
('-1426','Give me your worst!','14150','1','0','General Bjarngrim'),
('-1427','GRAAAAAH! Behold the fury of iron and steel!','14152','1','0','General Bjarngrim'),
('-1428','So ends your curse!','14153','1','0','General Bjarngrim'),
('-1429','Flesh... is... weak!','14154','1','0','General Bjarngrim'),
('-1430','How can it be...? Flesh is not... stronger!','14156','1','0','General Bjarngrim'),
('-1382','It is you who have destroyed my children? You... shall... pay!','13960','1','0','Volkhan'),
('-1434','Life from the lifelessness... death for you.','13961','1','0','Volkhan'),
('-1435','Nothing is wasted in the process. You will see....','13962','1','0','Volkhan'),
('-1436','I will crush you beneath my boots!','13963','1','0','Volkhan'),
('-1437','All my work... undone!','13964','1','0','Volkhan'),
('-1438','The armies of iron will conquer all!','13965','1','0','Volkhan'),
('-1439','Ha, pathetic!','13966','1','0','Volkhan'),
('-1440','You have cost me too much work!','13967','1','0','Volkhan'),
('-1441','The master was right... to be concerned.','13968','1','0','Volkhan'),
('-1445','You wish to confront the master? You must weather the storm!','14453','1','0','Ionar'),
('-1446','The slightest spark shall be your undoing.','14453','1','0','Ionar'),
('-1447','No one is safe!','14453','1','0','Ionar'),
('-1448','Shocking, isn\'t it?','14453','1','0','Ionar'),
('-1449','Master... you have guests.','14453','1','0','Ionar'),
('-1450','You don\'t have a chance!','14453','1','0','Ionar'),
('-1451','Fire in you life is disappeared!','14453','1','0','Ionar'),
('-1457','What hope is there for you? None!','14162','1','0','Loken'),
('-1458','You cannot hide from fate!','14163','1','0','Loken'),
('-1459','Come closer. I will make it quick.','14164','1','0','Loken'),
('-1460','Your flesh cannot hold out for long.','14165','1','0','Loken'),
('-1461','Only mortal...','14166','1','0','Loken'),
('-1462','I... am... FOREVER!','14167','1','0','Loken'),
('-1463','What little time you had, you wasted!','14168','1','0','Loken'),
('-1464','You stare blindly into the abyss!','14169','1','0','Loken'),
('-1465','Your ignorance is profound. Can you not see where this path leads?','14170','1','0','Loken'),
('-1466','You cross the precipice of oblivion!','14171','1','0','Loken'),
('-1467','My death... heralds the end of this world.','14172','1','0','Loken');
UPDATE creature_template SET  AIName='EventAI' WHERE entry IN (28923,28926,28961,28965,29240,28920,28838,28837,28836,28835,28826,28695,28587,28586,28585,28584,28583,28582,28581,28580,28579,28547,28578,28546);

-- Halls of Reflection
UPDATE `creature_template` SET `speed_walk`='1.5', `speed_run`='2.0' WHERE `entry` in (36954, 37226);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_HRintro' WHERE `entry` in (37221, 37223);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_falric' WHERE `entry`=38112;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_marwyn' WHERE `entry`=38113;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_lich_king_hr' WHERE `entry`=36954;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_lich_king_hor' WHERE `entry`=37226;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_HRextro' WHERE `entry` in (36955, 37554);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_raging_gnoul' WHERE `entry`=36940;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_risen_witch_doctor' WHERE `entry`=36941;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_abon' WHERE `entry`=37069;
UPDATE `creature_template` SET `scale`='0.8', `equipment_id`='1221' WHERE `entry` in (37221, 36955);
UPDATE `creature_template` SET `equipment_id`='1290' WHERE `entry` in (37223, 37554);
UPDATE `creature_template` SET `equipment_id`='0' WHERE `entry`=36954;
UPDATE `creature_template` SET `scale`='1' WHERE `entry`=37223;
UPDATE `creature_template` SET `scale`='0.8' WHERE `entry` in (36658, 37225, 37223, 37226, 37554);
UPDATE `creature_template` SET `unit_flags`='768', `type_flags`='268435564' WHERE `entry` in (38177, 38176, 38173, 38172, 38567, 38175);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_frostworn_general' WHERE `entry`=36723;
UPDATE `creature_template` set `scale`='1' where `entry` in (37223);
UPDATE `instance_template` SET `script` = 'instance_hall_of_reflection' WHERE map=668;
UPDATE `gameobject_template` SET `faction`='1375' WHERE `entry` in (197341, 202302, 201385, 201596);
UPDATE `creature` SET `phaseMask` = 128 WHERE `id` = 36993; 
UPDATE `creature` SET `phaseMask` = 64 WHERE `id` = 36990; 
UPDATE `instance_template` SET `script` = 'instance_halls_of_reflection' WHERE map=668;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1594540 AND -1594430;
INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(-1594473, 'Silly girl! Those whom You are looking for a long time dead! Now he\'s just a ghost, a faint echo in my mind!', 'Глупая девчонка! Тот кого ты ищещь давно убит! Теперь он лишь призрак, слабый отзвук в моем сознании!', 17229,1,0,0, '67234'),
(-1594474, 'I do not repeat previous mistakes, Silvana. At this time you will not be saved. You do not live up my confidence and now waiting for you only oblivion!', 'Я не повторю прежней ошибки, Сильвана. На этот раз тебе не спастись. Ты не оправдала моего доверия и теперь тебя ждет только забвение!', 17228,1,0,0, '67234'),
(-1594477, 'Your allies have arrived, Jaina, just as you promised. You will all become powerful agents of the Scourge.', 'Твои союзники прибыли, Джайна! Как ты и обещала... Ха-ха-ха-ха... Все вы станете могучими солдатами Плети...', 17212,1,0,0, '67234'),
(-1594478, 'I will not make the same mistake again, Sylvanas. This time there will be no escape. You will all serve me in death!', 'Я не повторю прежней ошибки, Сильвана! На этот раз тебе не спастись. Вы все будите служить мне после смерти...', 17213,1,0,0, '67234'),
(-1594479, 'He is too powerful, we must leave this place at once! My magic will hold him in place for only a short time! Come quickly, heroes!', 'Он слишком силен. Мы должны выбраться от сюда как можно скорее. Моя магия задержит его ненадолго, быстрее герои...', 16644,0,0,1, '67234'),
(-1594480, 'He\'s too powerful! Heroes, quickly, come to me! We must leave this place immediately! I will do what I can do hold him in place while we flee.', 'Он слишком силен. Герои скорее, за мной. Мы должны выбраться отсюда немедленно. Я постараюсь его задержать, пока мы будем убегать.', 17058,0,0,1, '67234'),
(-1594481, 'Death\'s cold embrace awaits.', 'Смерть распростерла ледяные обьятия!', 17221,1,0,0, '67234'),
(-1594482, 'Rise minions, do not left them us!', 'Восстаньте прислужники, не дайте им сбежать!', 17216,1,0,0, '67234'),
(-1594483, 'Minions sees them. Bring their corpses back to me!', 'Схватите их! Принесите мне их тела!', 17222,1,0,0, '67234'),
(-1594484, 'No...', 'Надежды нет!', 17214,1,0,0, '67234'),
(-1594485, 'All is lost!', 'Смирись с судьбой.', 17215,1,0,0, '67234'),
(-1594486, 'There is no escape!', 'Бежать некуда!', 17217,1,0,0, '67234'),
(-1594487, 'I will destroy this barrier. You must hold the undead back!', 'Я разрушу эту преграду, а вы удерживайте нежить на расстоянии!', 16607,1,0,0, '67234'),
(-1594488, 'No wall can hold the Banshee Queen! Keep the undead at bay, heroes! I will tear this barrier down!', 'Никакие стены не удержат Королеву Баньши. Держите нежить на расстоянии, я сокрушу эту преграду.', 17029,1,0,0, '67234'),
(-1594489, 'Another ice wall! Keep the undead from interrupting my incantation so that I may bring this wall down!', 'Опять ледяная стена... Я разобью ее, только не дайте нежити прервать мои заклинания...', 16608,1,0,0, '67234'),
(-1594490, 'Another barrier? Stand strong, champions! I will bring the wall down!', 'Еще одна преграда. Держитесь герои! Я разрушу эту стену!', 17030,1,0,0, '67234'),
(-1594491, 'Succumb to the chill of the grave.', 'Покоритесь Леденящей смерти!', 17218,1,0,0, '67234'),
(-1594492, 'Another dead end.', 'Вы в ловушке!', 17219,1,0,0, '67234'),
(-1594493, 'How long can you fight it?', 'Как долго вы сможете сопротивляться?', 17220,1,0,0, '67234'),
(-1594494, 'He plays with us. I will show him what happens when the ice meets fire!', 'Он с нами играет. Я  покажу ему что бывает когда лед встречается со огнем!', 16609,0,0,0, '67234'),
(-1594495, 'Your barriers can\'t hold us back much longer, monster. I will shatter them all!', 'Твои преграды больше не задержат нас, чудовище. Я смету их с пути!', 16610,1,0,0, '67234'),
(-1594496, 'I grow tired of these games, Arthas! Your walls can\'t stop me!', 'Я устала от этих игр Артас. Твои стены не остановят меня!', 17031,1,0,0, '67234'),
(-1594497, 'You won\'t impede our escape, fiend. Keep the undead off me while I bring this barrier down!', 'Ты не помешаешь нам уйти, монстр. Сдерживайте нежить, а я уничтожу эту преграду.', 17032,1,0,0, '67234'),
(-1594498, 'There\'s an opening up ahead. GO NOW!', 'Я вижу выход, скорее!', 16645,1,0,0, '67234'),
(-1594499, 'We\'re almost there... Don\'t give up!', 'Мы почти выбрались, не сдавайтесь!', 16646,1,0,0, '67234'),
(-1594500, 'There\'s an opening up ahead. GO NOW!', 'Я вижу выход, скорее!', 17059,1,0,0, '67234'),
(-1594501, 'We\'re almost there! Don\'t give up!', 'Мы почти выбрались, не сдавайтесь!', 17060,1,0,0, '67234'),
(-1594502, 'It... It\'s a dead end. We have no choice but to fight. Steel yourself heroes, for this is our last stand!', 'Больше некуда бежать. Теперь нам придется сражаться. Это наша последняя битва!', 16647,1,0,0, '67234'),
(-1594503, 'BLASTED DEAD END! So this is how it ends. Prepare yourselves, heroes, for today we make our final stand!', 'Проклятый тупик, значит все закончится здесь. Готовьтесь герои, это наша последняя битва.', 17061,1,0,0, '67234'),
(-1594504, 'Nowhere to run! You\'re mine now...', 'Ха-ха-ха... Бежать некуда. Теперь вы мои!', 17223,1,0,0, '67234'),
(-1594505, 'Soldiers of Lordaeron, rise to meet your master\'s call!', 'Солдаты Лордерона, восстаньте по зову Господина!', 16714,1,0,0, '67234'),
(-1594506, 'The master surveyed his kingdom and found it... lacking. His judgement was swift and without mercy. Death to all!', 'Господин осмотрел свое королевство и признал его негодным! Его суд был быстрым и суровым - предать всех смерти!', 16738,1,0,0, '67234'),
(-1594519, 'You are not worthy to face the Lich King!', 'Вы недостойны предстать перед Королем - Личом!', 16921,1,0,0, '67234'),
(-1594520, 'Master, I have failed...', 'Господин... Я подвел вас...', 16922,1,0,0, '67234');
DELETE FROM script_waypoint WHERE entry IN (36955,37226,37554);
INSERT INTO script_waypoint VALUES
   (36955, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (36955, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (36955, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (36955, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'), 
   (36955, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (36955, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (36955, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (36955, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (36955, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (36955, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (36955, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (36955, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (36955, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (36955, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (36955, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (36955, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (36955, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (36955, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (36955, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (36955, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (36955, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (36955, 21, 5260.400,1677.775,784.301, 0, 'WP22'),
   (37554, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (37554, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (37554, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (37554, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'), 
   (37554, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (37554, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (37554, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (37554, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (37554, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (37554, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (37554, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (37554, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (37554, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (37554, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (37554, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (37554, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (37554, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (37554, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (37554, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (37554, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (37554, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (37554, 21, 5260.400,1677.775,784.301, 0, 'WP22'),
   (37226, 0, 5577.187,2236.003,733.012, 0, 'WP1'),
   (37226, 1, 5587.682,2228.586,733.011, 0, 'WP2'),
   (37226, 2, 5600.715,2209.058,731.618, 0, 'WP3'),
   (37226, 3, 5606.417,2193.029,731.129, 0, 'WP4'),
   (37226, 4, 5598.562,2167.806,730.918, 0, 'WP5'), 
   (37226, 5, 5559.218,2106.802,731.229, 0, 'WP6'),
   (37226, 6, 5543.498,2071.234,731.702, 0, 'WP7'),
   (37226, 7, 5528.969,2036.121,731.407, 0, 'WP8'),
   (37226, 8, 5512.045,1996.702,735.122, 0, 'WP9'),
   (37226, 9, 5504.490,1988.789,735.886, 0, 'WP10'),
   (37226, 10, 5489.645,1966.389,737.653, 0, 'WP10'),
   (37226, 11, 5475.517,1943.176,741.146, 0, 'WP11'),
   (37226, 12, 5466.930,1926.049,743.536, 0, 'WP12'),
   (37226, 13, 5445.157,1894.955,748.757, 0, 'WP13'),
   (37226, 14, 5425.907,1869.708,753.237, 0, 'WP14'),
   (37226, 15, 5405.118,1833.937,757.486, 0, 'WP15'),
   (37226, 16, 5370.324,1799.375,761.007, 0, 'WP16'),
   (37226, 17, 5335.422,1766.951,767.635, 0, 'WP17'),
   (37226, 18, 5311.438,1739.390,774.165, 0, 'WP18'),
   (37226, 19, 5283.589,1703.755,784.176, 0, 'WP19'),
   (37226, 20, 5278.694,1697.912,785.692, 0, 'WP20'),
   (37226, 21, 5283.589,1703.755,784.176, 0, 'WP19');
DELETE FROM `gameobject_template` WHERE `entry` = 500001;
INSERT INTO `gameobject_template` VALUES ('500001', '0', '9214', 'Ice Wall', '', '', '', '1375', '0', '2.5', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '1'); 
DELETE FROM `creature` WHERE `id` IN (38112,37223,37221,36723,36955,37158,38113,37554,37226) AND `map` = 668;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES 
('38112', '668', '3', '1', '0', '0', '5276.81', '2037.45', '709.32', '5.58779', '604800', '0', '0', '377468', '0', '0', '0', '0', '0', '0'),
('37223', '668', '3', '64', '0', '0', '5266.78', '1953.42', '707.697', '0.740877', '7200', '0', '0', '6972500', '85160', '0', '0', '0', '0', '0'),
('37221', '668', '3', '128', '0', '0', '5266.78', '1953.42', '707.697', '0.740877', '7200', '0', '0', '5040000', '881400', '0', '0', '0', '0', '0'),
('36723', '668', '3', '1', '0', '0', '5413.84', '2116.44', '707.695', '3.88117', '7200', '0', '0', '315000', '0', '0', '0', '0', '0', '0'),
('36955', '668', '3', '128', '0', '0', '5547.27', '2256.95', '733.011', '0.835987', '7200', '0', '0', '252000', '881400', '0', '0', '0', '0', '0'),
('37158', '668', '3', '2', '0', '0', '5304.5', '2001.35', '709.341', '4.15073', '7200', '0', '0', '214200', '0', '0', '0', '0', '0', '0'),
('38113', '668', '3', '1', '0', '0', '5341.72', '1975.74', '709.32', '2.40694', '604800', '0', '0', '539240', '0', '0', '0', '0', '0', '0'),
('37554', '668', '3', '64', '0', '0', '5547.27', '2256.95', '733.011', '0.835987', '7200', '0', '0', '252000', '881400', '0', '0', '0', '0', '0'),
('37226', '668', '3', '1', '0', '0', '5551.29', '2261.33', '733.012', '4.0452', '604800', '0', '0', '27890000', '0', '0', '0', '0', '0', '0');
DELETE FROM `gameobject` WHERE `id` IN (202302,202236,201596,500001,196391,196392,202396,201885,197341,201976,197342,197343,201385,202212,201710,202337,202336,202079) AND `map`=668;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES 
('202302', '668', '3', '1', '5309.51', '2006.64', '709.341', '5.50041', '0', '0', '0.381473', '-0.92438', '604800', '100', '1'),
('202236', '668', '3', '1', '5309.51', '2006.64', '709.341', '5.53575', '0', '0', '0.365077', '-0.930977', '604800', '100', '1'),
('201596', '668', '3', '1', '5275.28', '1694.23', '786.147', '0.981225', '0', '0', '0.471166', '0.882044', '25', '0', '1'),
('500001', '668', '3', '1', '5323.61', '1755.85', '770.305', '0.784186', '0', '0', '0.382124', '0.924111', '604800', '100', '1'),
('196391', '668', '3', '1', '5232.31', '1925.57', '707.695', '0.815481', '0', '0', '0.396536', '0.918019', '300', '0', '1'),
('196392', '668', '3', '1', '5232.31', '1925.57', '707.695', '0.815481', '0', '0', '0.396536', '0.918019', '300', '0', '1'),
('202396', '668', '3', '1', '5434.27', '1881.12', '751.303', '0.923328', '0', '0', '0.445439', '0.895312', '604800', '100', '1'),
('201885', '668', '3', '1', '5494.3', '1978.27', '736.689', '1.0885', '0', '0', '0.517777', '0.855516', '604800', '100', '1'),
('197341', '668', '3', '1', '5359.24', '2058.35', '707.695', '3.96022', '0', '0', '0.917394', '-0.397981', '300', '100', '1'),
('201976', '668', '3', '1', '5264.6', '1959.55', '707.695', '0.736951', '0', '0', '0.360194', '0.932877', '300', '100', '0'),
('197342', '668', '3', '1', '5520.72', '2228.89', '733.011', '0.778581', '0', '0', '0.379532', '0.925179', '300', '100', '1'),
('197343', '668', '3', '1', '5582.96', '2230.59', '733.011', '5.49098', '0', '0', '0.385827', '-0.922571', '300', '100', '1'),
('201385', '668', '3', '1', '5540.39', '2086.48', '731.066', '1.00057', '0', '0', '0.479677', '0.877445', '604800', '100', '1'),
('202212', '668', '1', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('201710', '668', '1', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('202337', '668', '2', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('202336', '668', '2', '65535', '5241.05', '1663.44', '784.295', '0.54', '0', '0', '0', '0', '-604800', '100', '1'),
('202079', '668', '3', '1', '5250.96', '1639.36', '784.302', '0', '0', '0', '0', '0', '-604800', '100', '1');
UPDATE `creature_template` SET `gossip_menu_id` = 11031 WHERE `entry` = 37223;

-- Halls of Stone
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` IN (190586,193996);
UPDATE `gameobject` SET `spawnMask` = 1 WHERE `id` = 190586;
DELETE FROM `gameobject` WHERE `id` = '193996';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) 
VALUES ('193996','599','2','1','880.406','345.164','203.706','0','0','0','0','1','86400','0','1');
UPDATE `gameobject` SET `spawntimesecs` = 86400 WHERE `id` IN (190586,193996);
UPDATE `creature_template` SET `flags_extra` = `flags_extra`|2 , `unit_flags` = `unit_flags`|2 WHERE `entry` = 28055;
UPDATE `creature_template` SET `flags_extra`= `flags_extra`|2|128 , `InhabitType`= 4 WHERE `entry` IN (28234,28235,28237,28265,30897,30898,30899,31874,31875,31878);
UPDATE `creature_template` SET `modelid1` = 17200, `modelid2` = 17200 WHERE `entry` IN (28235,31874);
UPDATE `creature` SET `spawnMask` = 0 WHERE `guid` = 126794;
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|8|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|67108864|536870912 WHERE `entry` IN (27975,27977,27978,31384,31381,31386);
UPDATE `creature_template` SET `dmg_multiplier` = 16 WHERE `entry` = 31384;
UPDATE `creature_template` SET `dmg_multiplier` = 22 WHERE `entry` = 31381;
UPDATE `creature_template` SET `ScriptName` = 'mob_dark_matter' WHERE `entry` = 28235;
UPDATE `creature_template` SET `ScriptName` = 'mob_searing_gaze' WHERE `entry` = 28265;
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (27979,27982,27983,27984,27985);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (27979,27982,27983,27984,27985);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) 
VALUES
('2798401','27984','0','0','100','3','7000','10000','7000','10000','11','12167','4','1','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Normal) - Cast Lightning Bolt'),
('2798402','27984','0','0','100','5','7000','10000','7000','10000','11','59863','4','1','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Heroic) - Cast Lightning Bolt'),
('2798403','27984','0','0','100','3','4000','7000','12000','15000','11','15654','4','0','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Normal) - Cast Shadow Word: Pain'),
('2798404','27984','0','0','100','5','4000','7000','12000','15000','11','59864','4','0','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Heroic) - Cast Shadow Word: Pain'),
('2798301','27983','0','0','100','7','7000','10000','10000','15000','11','42724','1','0','0','0','0','0','0','0','0','0','Dark Rune Protector - Cast Cleave'),
('2798302','27983','0','0','100','7','7000','10000','15000','20000','11','22120','4','2','0','0','0','0','0','0','0','0','Dark Rune Protector - Cast Charge'),
('2798501','27985','0','0','100','7','4000','7000','10000','15000','11','33661','1','0','0','0','0','0','0','0','0','0','Iron Golem Custodian - Cast Crush Armor'),
('2798502','27985','0','0','100','3','7000','10000','15000','20000','11','12734','0','0','0','0','0','0','0','0','0','0','Iron Golem Custodian (Normal) - Cast Ground Smash'),
('2798503','27985','0','0','100','5','7000','10000','15000','20000','11','59865','0','0','0','0','0','0','0','0','0','0','Iron Golem Custodian (Heroic) - Cast Ground Smash'),
('2798201','27982','0','0','100','3','4000','7000','10000','15000','11','50895','4','0','0','0','0','0','0','0','0','0','Forged Iron Dwarf (Normal) - Cast Lightning Tether'),
('2798202','27982','0','0','100','5','4000','7000','10000','15000','11','59851','4','0','0','0','0','0','0','0','0','0','Forged Iron Dwarf (Heroic) - Cast Lightning Tether'),
('2797901','27979','0','0','100','3','4000','7000','7000','12000','11','50900','4','0','0','0','0','0','0','0','0','0','Forged Iron Trogg (Normal) - Cast Lightning Shock'),
('2797902','27979','0','0','100','5','4000','7000','7000','12000','11','59852','4','0','0','0','0','0','0','0','0','0','Forged Iron Trogg (Heroic) - Cast Lightning Shock');

-- Icecrown Citadel
UPDATE `gameobject_template` SET `ScriptName` = 'go_icecrown_teleporter' WHERE `entry` IN (202223,202235,202242,202243,202244,202245,202246);
UPDATE `gameobject_template` SET `flags` = 32 WHERE `entry` IN (202235,202242,202243,202244,202245,202246);
UPDATE `gameobject_template` SET `flags` = 32 WHERE `entry` = 202223;
UPDATE `gameobject_template` SET `ScriptName` = '', `data10` = 70308 WHERE `entry` = 201584;
UPDATE `gameobject` SET `phaseMask` = '1' WHERE `id` IN (202242,202243,202244,202245,202235,202223,202246);
UPDATE `gameobject` SET `state` = '1' WHERE `id` IN (201614,201613);
UPDATE `gameobject` SET `state` = '0' WHERE `id` IN (201375);
UPDATE gameobject SET phaseMask = 17 WHERE id IN (201375,201374);
UPDATE `gameobject_template` SET `flags` = 32 WHERE `entry` = 202161;
UPDATE `gameobject` SET `state` = '1' WHERE `id` IN (202161);
UPDATE `creature_template` SET `ScriptName`='boss_lord_marrowgar' WHERE `entry` = 36612;
UPDATE `creature_template` SET `ScriptName`='boss_lady_deathwhisper' WHERE `entry` = 36855;
UPDATE `creature_template` SET `ScriptName`='boss_saurfang' WHERE `entry` = 37813;
UPDATE `creature_template` SET `ScriptName`='boss_festergut' WHERE `entry` = 36626;
UPDATE `creature_template` SET `ScriptName`='boss_rotface' WHERE `entry`= 36627;
UPDATE `creature_template` SET `ScriptName`='boss_professor_putricide' WHERE `entry` = 36678;
UPDATE `creature_template` SET `ScriptName`='boss_blood_elf_valanar_icc' WHERE `entry` = 37970;
UPDATE `creature_template` SET `ScriptName`='boss_blood_elf_keleset_icc' WHERE `entry` = 37972;
UPDATE `creature_template` SET `ScriptName`='boss_blood_elf_taldaram_icc' WHERE `entry` = 37973;
UPDATE `creature_template` SET `ScriptName`='boss_blood_queen_lanathel' WHERE `entry` = 37955;
UPDATE `creature_template` SET `ScriptName`='boss_valithria' WHERE `entry` = 36789;
UPDATE `creature_template` SET `ScriptName`='boss_sindragosa' WHERE `entry` = 36853;
UPDATE `creature_template` SET `ScriptName`='boss_the_lich_king' WHERE `entry` = 36597;
UPDATE `creature_template` SET `ScriptName`='npc_tirion_icc' WHERE `entry`= 38995;
UPDATE `creature_template` SET `ScriptName`='npc_swarming_shadows' WHERE `entry` = 38163;
UPDATE `creature_template` SET `ScriptName`='npc_cold_flame' WHERE `entry` = 36672;
UPDATE `creature_template` SET `ScriptName`='npc_bone_spike' WHERE `entry` = 36619;
UPDATE `creature_template` SET `ScriptName`='npc_volatile_ooze' WHERE `entry` = 37697;
UPDATE `creature_template` SET `ScriptName`='npc_valkyr_icc' WHERE `entry` = 36609;
UPDATE `creature_template` SET `ScriptName`='npc_vile_spirit_icc' WHERE `entry`= 37799;
UPDATE `creature_template` SET `ScriptName`='npc_ooze_little' WHERE `entry`= 36897;
UPDATE `creature_template` SET `ScriptName`='npc_ooze_big' WHERE `entry`= 36899;
UPDATE `creature_template` SET `ScriptName`='npc_shade' WHERE `entry` = 38222;
UPDATE `creature_template` SET `ScriptName`='npc_dreamcloud_icc' WHERE `entry` = 37985;
UPDATE `creature_template` SET `ScriptName`='npc_dreamportal_icc' WHERE `entry` IN (38186,37945,38429,38430);
UPDATE `creature_template` SET `ScriptName`='npc_cult_fanatic_and_adherent' WHERE `entry` IN (37949,38010,38136,37890,38009,38135);
UPDATE `creature_template` SET `ScriptName`='npc_rimefang' WHERE `entry`= 37533;
UPDATE `creature_template` SET `ScriptName`='npc_spinestalker' WHERE `entry`= 37534;
UPDATE `creature_template` SET `ScriptName`='npc_ice_tomb' WHERE `entry`= 36980;
UPDATE `creature_template` SET `ScriptName`='npc_icc_puddle_stalker' WHERE `entry`= 37824;
UPDATE `creature_template` SET `ScriptName`='npc_ooze_explode_stalker' WHERE `entry` = 38107;
UPDATE `creature_template` SET `ScriptName`='npc_gas_cloud_icc' WHERE `entry` = 37562;
UPDATE `creature_template` SET `ScriptName`='npc_bomb_icc' WHERE `entry` = 38159;
UPDATE `creature_template` SET `ScriptName`='npc_stinky_icc' WHERE `entry` = 37025;
UPDATE `creature_template` SET `ScriptName`='npc_precious_icc' WHERE `entry` = 37217;
UPDATE `creature_template` SET `ScriptName`='npc_icc_combat_stalker' WHERE `entry` = 38752;
UPDATE `creature_template` SET `ScriptName`='npc_valithria_alternative' WHERE `entry` = 37950;
UPDATE `creature_template` SET `ScriptName`='boss_blood_council_controller' WHERE `entry`=38008;
UPDATE `creature_template` SET `ScriptName`='npc_blood_queen_lana_thel' WHERE `entry`=38004;
UPDATE `creature_template` SET `ScriptName`='npc_kinetic_bomb' WHERE `entry`=38454;
UPDATE `creature_template` SET `ScriptName`='npc_dark_nucleus' WHERE `entry`=38369;
UPDATE `creature_template` SET `ScriptName`='npc_ball_of_flame' WHERE `entry` IN (38332,38451);
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 33554434, `type_flags` = 1024 WHERE `entry` = 36672;
UPDATE `creature_template` SET `minlevel` = 82, `maxlevel` = 82, `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 37950;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `faction_A` = 14, `faction_H` = 14, `unit_flags` = 0, type_flags = 0, `VehicleId` = 533 WHERE `entry` IN (36619,38233,38459,38460);
UPDATE `creature_template` SET `faction_A`=2068, `faction_H`=2068 WHERE `entry` IN (36899,38123,3689902,3689903);
UPDATE `creature_template` SET `faction_A` = 21, `faction_H` = 21, `unit_flags` = 33600, `vehicleId` = 639 WHERE `entry` IN (37813,38402,38582,38583);
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `type_flags` = 67113036 WHERE `entry` IN (36789,38174);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `minlevel` = 80, `maxlevel` = 80 WHERE `entry` IN (37006,37013,37986,38107,38548,36659,37690,37562,38159);
UPDATE `creature_template` SET `vehicleId` = 532 WHERE `entry` IN (36609,39120,39121,39122);
UPDATE `creature_model_info` SET `bounding_radius` = 5,`combat_reach` = 5 WHERE `modelid` = 31119;
UPDATE `creature_template` SET `mechanic_immune_mask` = 634339327 WHERE `entry` IN (36855,38106,38296,38297);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` IN (37007,38301);
UPDATE `creature_template` SET `spell1` = 70360, `spell2`= 70539, `spell3`= 70542, `VehicleId` = 591 WHERE `entry`= 37672;
UPDATE `creature_template` SET `spell1` = 72527, `spell2`= 72457, `spell3`= 70542, `VehicleId` = 591 WHERE `entry`= 38285;
-- Putricide Mutated Abomination spell fix for 10h, 25n and 25h modes
UPDATE `creature_template` SET `spell1` = 70360, `spell2`= 72457, `spell3`= 70542, `VehicleId` = 591 WHERE `entry` = 38788;
UPDATE `creature_template` SET `spell1` = 70360, `spell2`= 72875, `spell3`= 70542, `VehicleId` = 591 WHERE `entry` = 38789;
UPDATE `creature_template` SET `spell1` = 70360, `spell2`= 72876, `spell3`= 70542, `VehicleId` = 591 WHERE `entry` = 38790;
UPDATE `creature_template` SET `dynamicflags` = 8, `npcflag` = 0, `unit_flags` = 32832 WHERE `entry` = 38995;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` IN (36899,38123);
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` IN(37985,37799,39284,39285,39286);
UPDATE `creature_template` SET `InhabitType`=5,`flags_extra`=`flags_extra`|0x80 WHERE `entry`=30298;
UPDATE `creature_template` SET `InhabitType`=5,`minlevel`=82,`maxlevel`=82,`faction_A`=14,`faction_H`=14,`speed_walk`=0.142857 WHERE `entry` IN (38454,38775,38776,38777);
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`flags_extra`=`flags_extra`|0x80 WHERE `entry`=38458;
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`exp`=2,`flags_extra`=`flags_extra`|0x80 WHERE `entry`=38422;
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`exp`=2,`speed_walk`=1.57143,`unit_flags`=33554432,`flags_extra`=`flags_extra`|0x80 WHERE `entry`=38332;
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`exp`=2,`speed_walk`=1.57143,`unit_flags`=33554432,`flags_extra`=`flags_extra`|0x80 WHERE `entry`=38451;
-- UPDATE `creature_template` SET `unit_flags`=536904000,`RegenHealth`=0,`equipment_id`=10092,`speed_run`=1.428571,`speed_walk`=1.6 WHERE `entry` IN (37970,38401,38784,38785);
-- UPDATE `creature_template` SET `unit_flags`=536904000,`RegenHealth`=0,`equipment_id`=10077,`speed_run`=1.428571,`speed_walk`=1.6 WHERE `entry` IN (37972,38399,38769,38770);
-- UPDATE `creature_template` SET `unit_flags`=536904000,`RegenHealth`=0,`equipment_id`=10091,`speed_run`=1.428571,`speed_walk`=1.6 WHERE `entry` IN (37973,38400,38771,38772);
UPDATE `creature_model_info` SET `bounding_radius`=0.5425,`combat_reach`=1.75 WHERE `modelid` IN (30856,30857,30858);
UPDATE `creature_template` SET `RegenHealth`=0 WHERE `entry`=38369;
UPDATE `creature_template` SET  `dynamicflags` = 8 WHERE entry IN (37970, 38401, 38784, 38785);
UPDATE `creature_template` SET `RegenHealth` = '0' WHERE `entry` =38174;
UPDATE `creature_template` SET `vehicleId` = 531 WHERE `entry` IN (36609,39120,39121,39122);
DELETE FROM `spell_script_names` WHERE `spell_id` IN(69783,69057,69140,72705,69147,69075,70834,70835,70836,70903,71236);
UPDATE `creature_template` SET `unit_flags` = 33555204 WHERE `entry` IN (37986,37824,38234,38317,36659,38548,37186,37006,37918,37690,38068,38163,38584,38752);
UPDATE `creature_template` SET `unit_flags` = 33587972 WHERE `entry` = 37013;
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` IN (37986,38234,38317,36659,38548,37186,37013);
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 38234;
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 38569;
UPDATE `instance_template` SET `script`='instance_icecrown_citadel' WHERE `map` = 631;
DELETE FROM `creature_addon` WHERE `guid` IN (136107,104365);
DELETE FROM `creature_template_addon` WHERE `entry` IN (37690,37672,36659,38186,37945,38429,38430,37918,37006,37186);
INSERT INTO creature_addon (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(136107, 0, 0, 0, 1, 0, '18950 0 18950 1 72242 0');
INSERT INTO `creature_addon` (`guid`, `bytes1`) VALUES
(104365,0x03000000);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(37690, 0, 0, 0, 0, 0, '70345 0  70343 0'),
(37672, 0, 0, 0, 0, 0, '70385 0 70405 0'),
(38186, 0, 0, 0, 0, 0, '71304 0'),
(37945, 0, 0, 0, 0, 0, '70763 0'),
(38429, 0, 0, 0, 0, 0, '71986 0'),
(38430, 0, 0, 0, 0, 0, '71994 0'),
(37918, 0, 0, 0, 0, 0, '70715 0'),
(37186, 0, 0, 0, 0, 0, '70022 0'),
(37006, 0, 0, 0, 0, 0, '69776 0');
DELETE FROM `conditions` WHERE `SourceEntry` IN (69508,70881,70360,36659,70781,70856,70857,70858,70859,70860,70861,69157,71614,70588,74074);
DELETE FROM `conditions` WHERE `ConditionValue2` IN (SELECT `id` FROM `creature` WHERE `map` = 631);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (70952,70982,70981,70983,71070,71081,71080);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=21 AND `SourceGroup` IN (37672,38285);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,70360,0,18,1,37690,0,0, '', ''),
(13,0,69157,0,18,1,36659,0,0, '', 'Festergut - Gaseous Blight'),
(13,0,69162,0,18,1,36659,0,0, '', 'Festergut - Gaseous Blight'),
(13,0,69164,0,18,1,36659,0,0, '', 'Festergut - Gaseous Blight'),
(13,0,71614,0,18,1,38995,0,0, '', 'LichKing - Ice Lock'),
(13,0,70588,0,18,1,36789,0,0, '', 'Valithria - Suppression'),
(13,0,70588,0,18,1,38174,0,0, '', 'Valithria - Suppression'),
(13,0,71617,0,18,1,38317,0,0, '', 'Putricide - Tear Gas'),
(13,0,69125,0,18,1,37013,0,0, '', ''),
(21,37672,71516,0,3,49888,0,0,0, '', 'Mutated Abomination - Unholy Infusion'),
(21,38285,71516,0,3,49888,0,0,0, '', 'Mutated Abomination - Unholy Infusion'),
(13,0,70952,0,18,1,37970,0,0, '', 'Valanar - Invocation of Blood'),
(13,0,70982,0,18,1,37973,0,0, '', 'Taldaram - Invocation of Blood'),
(13,0,70981,0,18,1,37972,0,0, '', 'Keleseth - Invocation of Blood'),
(13,0,70983,0,18,1,37970,0,0, '', 'Valanar - Invocation of Blood beam'),
(13,0,70983,0,18,1,37973,0,0, '', 'Taldaram - Invocation of Blood beam'),
(13,0,70983,0,18,1,37972,0,0, '', 'Keleseth - Invocation of Blood beam'),
(13,0,71070,0,18,1,37970,0,0, '', 'Valanar - Invocation of Blood visual'),
(13,0,71081,0,18,1,37973,0,0, '', 'Taldaram - Invocation of Blood visual'),
(13,0,71080,0,18,1,37972,0,0, '', 'Keleseth - Invocation of Blood visual'),
(13,0,74074,0,18,1,36597,0,0, '', 'The Lich King - Plague Siphon');
-- DELETE FROM `creature` WHERE `id` IN(37813, 37013, 36659, 37950);
DELETE FROM `creature` WHERE `id` IN(37013, 36659, 37950);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(48969,37013,631,1,1,11686,0,4291.18,3092.92,372.97,2.33874,300,0,0,25200,0,0,0,0,0,0),
(48971,37013,631,1,1,11686,0,4312.14,3112.98,372.97,2.51327,300,0,0,25200,0,0,0,0,0,0),
(48973,37013,631,1,1,11686,0,4244.04,3092.66,372.97,0.97738,300,0,0,25200,0,0,0,0,0,0),
(48976,37013,631,1,1,11686,0,4223.47,3113.58,372.97,0.76794,300,0,0,25200,0,0,0,0,0,0),
(48981,37013,631,1,1,11686,0,4222.44,3161.69,372.97,5.53269,300,0,0,25200,0,0,0,0,0,0),
(48983,37013,631,1,1,11686,0,4243.89,3181.74,372.97,5.44543,300,0,0,25200,0,0,0,0,0,0),
(48989,37013,631,1,1,11686,0,4312.36,3160.84,372.97,3.80482,300,0,0,25200,0,0,0,0,0,0),
(48990,37013,631,1,1,11686,0,4291.45,3181.25,372.97,4.10152,300,0,0,25200,0,0,0,0,0,0),
(93955,36659,631,15,1,11686,0,4267.87,3137.33,360.469,0,300,0,0,25200,0,0,0,0,0,0),
-- (136107,37813,631,15,1,30790,0,-493.905,2211.35,541.114,3.18037,300,0,0,12299490,0,0,0,0,0,0),
(1000000,37950,631,15,16,0,0,4203.65,2483.89,390.961,5.51524,604800,0,0,6000003,0,0,0,0,33540,8);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (72202,70117);
DELETE FROM `spell_linked_spell` WHERE `spell_effect` IN(72202,69166,70347,72380,69706,70702,70311, 69291, 70338,72846,69201,74074);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(70360,70347,0,'Eat Ooze'),
(72379,72380,0,'Blood Nova'),
(72380,72202,0,'Blood Nova 10N'),
(72438,72202,0,'Blood Nova 25N'),
(72439,72202,0,'Blood Nova 10H'),
(72440,72202,0,'Blood Nova 25H'),
(72409,72202,0,'Rune of Blood 25N'),
(72447,72202,0,'Rune of Blood 10H'),
(72448,72202,0,'Rune of Blood 25H'),
(72449,72202,0,'Rune of Blood 25H'),
(69195,69166,0,'Pungent Blight 10N'),
(71279,69166,0,'Pungent Blight 25N'),
(73031,69166,0,'Pungent Blight 10H'),
(73032,69166,0,'Pungent Blight 25H'),
(70715,70702,0,'?'),
(-69674,69706,0, 'Rotface: Mutated Infection Summon'),
(-71224,69706,0, 'Rotface: Mutated Infection Summon'),
(-73022,69706,0, 'Rotface: Mutated Infection Summon'),
(-73023,69706,0, 'Rotface: Mutated Infection Summon'),
(-70337,70338,0, 'The Lich King: Necrotic plague initial cast'),
(-70337,72846,0, 'The Lich King: Necrotic plague immun'),
(-70338,70338,0, 'The Lich King: Necrotic jump'),
(-69200,69201,0, 'The Lich King: Raging Spirit'),
(-70338,74074,0, 'The Licg King: Plague Siphon');
DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (37945,38430);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(37945,70766,0,0,0,3,0,0,0),
(38430,70766,0,0,0,3,0,0,0);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70405,72508,72509,72510) AND `ScriptName`='spell_putricide_mutated_transformation_dismiss';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70311,71503) AND `ScriptName`='spell_putricide_mutated_transformation';
DELETE FROM `spell_script_names` WHERE `spell_id`=70308 AND `ScriptName`='spell_putricide_mutation_init';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71412,71415) AND `ScriptName`='spell_putricide_ooze_summon';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72262) AND `ScriptName`='spell_lich_king_quake';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (74361) AND `ScriptName`='spell_lich_king_valkyr_summon';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70541,73779,73780,73781) AND `ScriptName`='spell_lich_king_infection';
-- DELETE FROM `spell_script_names` WHERE `spell_id` IN (70338,73785,73786,73787) AND `ScriptName`='spell_lich_king_necrotic_plague';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70337,73912,73913,73914) AND `ScriptName`='spell_lich_king_necrotic_plague';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69075,70834,70835,70836) AND `ScriptName`='spell_lord_marrowgar_bone_storm';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70126) AND `ScriptName`='spell_sindragosa_ice_tomb';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70127,72528,72529,72530) AND `ScriptName`='spell_sindragosa_mystic_buffet';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69766) AND `ScriptName`='spell_sindragosa_unchained_magic';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72219,72551,72552,72553) AND `ScriptName`='spell_festergut_gastric_bloat';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69558) AND `ScriptName`='spell_rotface_unstable_explosion';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (68981,74270,74271,74272) AND `ScriptName`='spell_lich_king_winter';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70534) AND `ScriptName`='spell_vile_spirit_distance_check';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69110) AND `ScriptName`='spell_ice_burst_distance_check';
DELETE FROM `spell_script_names` WHERE `spell_id`=71598 AND `ScriptName`='spell_creature_permanent_feign_death';
DELETE FROM `spell_script_names` WHERE `spell_id`=71806 AND `ScriptName`='spell_taldaram_glittering_sparks';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71718,72040) AND `ScriptName`='spell_taldaram_summon_flame_ball';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (55891,55947) AND `ScriptName`='spell_taldaram_flame_ball_visual';
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71756,72782,72783,72784) AND `ScriptName`='spell_taldaram_ball_of_inferno_flame';
DELETE FROM `spell_script_names` WHERE `spell_id`=72080 AND `ScriptName`='spell_valanar_kinetic_bomb';
DELETE FROM `spell_script_names` WHERE `spell_id`=72087 AND `ScriptName`='spell_valanar_kinetic_bomb_knockback';
DELETE FROM `spell_script_names` WHERE `spell_id`=73001 AND `ScriptName`='spell_blood_council_shadow_prison';
DELETE FROM `spell_script_names` WHERE `spell_id`=72999 AND `ScriptName`='spell_blood_council_shadow_prison_damage';
DELETE FROM `spell_script_names` WHERE `spell_id`=69538 AND `ScriptName`='spell_rotface_little_ooze_combine';
DELETE FROM `spell_script_names` WHERE `spell_id`=69553 AND `ScriptName`='spell_rotface_large_ooze_combine';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_festergut_blighted_spores';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_lich_king_play_movie';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_valkyr_carry_can_cast';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_ice_tomb_effect';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_marrowgar_bone_spike_graveyard';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_blistering_cold';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(71412,'spell_putricide_ooze_summon'),
(71415,'spell_putricide_ooze_summon'),
(72510,'spell_putricide_mutated_transformation_dismiss'),
(72509,'spell_putricide_mutated_transformation_dismiss'),
(72508,'spell_putricide_mutated_transformation_dismiss'),
(70405,'spell_putricide_mutated_transformation_dismiss'),
(70308,'spell_putricide_mutation_init'),
(70311,'spell_putricide_mutated_transformation'),
(71503,'spell_putricide_mutated_transformation'),
(74361,'spell_lich_king_valkyr_summon'),
(70541,'spell_lich_king_infection'),
(73779,'spell_lich_king_infection'),
(73780,'spell_lich_king_infection'),
(73781,'spell_lich_king_infection'),
-- (70338,'spell_lich_king_necrotic_plague'),
-- (73785,'spell_lich_king_necrotic_plague'),
-- (73786,'spell_lich_king_necrotic_plague'),
-- (73787,'spell_lich_king_necrotic_plague'),
(70337,'spell_lich_king_necrotic_plague'),
(73912,'spell_lich_king_necrotic_plague'),
(73913,'spell_lich_king_necrotic_plague'),
(73914,'spell_lich_king_necrotic_plague'),
(69075,'spell_lord_marrowgar_bone_storm'),
(70834,'spell_lord_marrowgar_bone_storm'),
(70835,'spell_lord_marrowgar_bone_storm'),
(70836,'spell_lord_marrowgar_bone_storm'),
-- (70126,'spell_sindragosa_ice_tomb'),
-- (70127,'spell_sindragosa_mystic_buffet'),
-- (72528,'spell_sindragosa_mystic_buffet'),
-- (72529,'spell_sindragosa_mystic_buffet'),
-- (72530,'spell_sindragosa_mystic_buffet'),
-- (69766,'spell_sindragosa_unchained_magic'),
(72219,'spell_festergut_gastric_bloat'),
(72551,'spell_festergut_gastric_bloat'),
(72552,'spell_festergut_gastric_bloat'),
(72553,'spell_festergut_gastric_bloat'),
(69558,'spell_rotface_unstable_explosion'),
(68981,'spell_lich_king_winter'),
(74270,'spell_lich_king_winter'),
(74271,'spell_lich_king_winter'),
(74272,'spell_lich_king_winter'),
(70534,'spell_vile_spirit_distance_check'),
(69110,'spell_ice_burst_distance_check'),
(72262,'spell_lich_king_quake'),
(73159,'spell_lich_king_play_movie'),
(74506,'spell_valkyr_carry_can_cast'),
(71598,'spell_creature_permanent_feign_death'),
(71806,'spell_taldaram_glittering_sparks'),
(71718,'spell_taldaram_summon_flame_ball'),
(72040,'spell_taldaram_summon_flame_ball'),
(55891,'spell_taldaram_flame_ball_visual'),
(55947,'spell_taldaram_flame_ball_visual'),
(71756,'spell_taldaram_ball_of_inferno_flame'),
(72782,'spell_taldaram_ball_of_inferno_flame'),
(72783,'spell_taldaram_ball_of_inferno_flame'),
(72784,'spell_taldaram_ball_of_inferno_flame'),
(72080,'spell_valanar_kinetic_bomb'),
(72087,'spell_valanar_kinetic_bomb_knockback'),
(73001,'spell_blood_council_shadow_prison'),
(72999,'spell_blood_council_shadow_prison_damage'),
(69538,'spell_rotface_little_ooze_combine'),
(69553,'spell_rotface_large_ooze_combine'),
(69290,'spell_festergut_blighted_spores'),
(71222,'spell_festergut_blighted_spores'),
(73033,'spell_festergut_blighted_spores'),
(73034,'spell_festergut_blighted_spores'),
-- (69675,'spell_sindragosa_ice_tomb_effect'),
-- (70117,'spell_sindragosa_blistering_cold'),
(69057,'spell_marrowgar_bone_spike_graveyard'),
(70826,'spell_marrowgar_bone_spike_graveyard'),
(72088,'spell_marrowgar_bone_spike_graveyard'),
(72089,'spell_marrowgar_bone_spike_graveyard');
UPDATE waypoint_scripts SET delay = 3 WHERE dataint = 38879 AND command = 15;
DELETE FROM `spell_scripts` WHERE id = 72429 AND command = 15;
INSERT INTO `spell_scripts` VALUE
('72429','0','3','15','72423','0','0','0','0','0','0');
SET @LIGHT_S_HAMMER := 70781;
SET @ORATORY_OF_THE_DAMNED := 70856;
SET @RAMPART_OF_SKULLS := 70857;
SET @DEATHBRINGER_S_RISE := 70858;
SET @UPPER_SPIRE := 70859;
SET @SINDRAGOSA_S_LAIR := 70861;
SET @FROZEN_THRONE := 70860;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@LIGHT_S_HAMMER,@ORATORY_OF_THE_DAMNED,@RAMPART_OF_SKULLS,@DEATHBRINGER_S_RISE,@UPPER_SPIRE,@SINDRAGOSA_S_LAIR,@FROZEN_THRONE);
DELETE FROM `spell_target_position` WHERE `id` IN (@LIGHT_S_HAMMER,@ORATORY_OF_THE_DAMNED,@RAMPART_OF_SKULLS,@DEATHBRINGER_S_RISE,@UPPER_SPIRE,@SINDRAGOSA_S_LAIR,@FROZEN_THRONE);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(@LIGHT_S_HAMMER,631,-17.0711,2211.47,30.0546,3.14159),
(@ORATORY_OF_THE_DAMNED,631,-503.593,2211.47,62.7621,3.14159),
(@RAMPART_OF_SKULLS,631,-615.146,2211.47,199.909,0.0),
(@DEATHBRINGER_S_RISE,631,-549.073,2211.29,539.223,0.0),
(@UPPER_SPIRE,631,4199.484,2769.323,351.3722,3.124139),
(@SINDRAGOSA_S_LAIR,631,4356.580,2565.75,220.402,4.71238),
(@FROZEN_THRONE,631,529.3969,-2124.66,1046.37,3.14159);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (37868,36791,37863,37886,37934,38068,37698,36701);
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (37868,36791,37863,37886,37934,38068,37698,36701);
INSERT INTO `creature_ai_scripts` VALUES
('85021059','37868','0','0','100','7','15000','15000','27000','27000','11','71179','4','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Mana Void'),
('85021060','37868','0','0','100','25','15000','15000','27000','27000','11','71741','4','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Mana Void'),
('85021061','37868','0','0','100','3','10000','10000','18000','22000','11','70759','0','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Frostbolt Volley'),
('85021062','37868','0','0','100','9','10000','10000','18000','22000','11','71889','0','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Frostbolt Volley'),
('85021063','37868','0','0','100','5','10000','10000','18000','22000','11','72015','0','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Frostbolt Volley'),
('85021064','37868','0','0','100','17','10000','10000','18000','22000','11','72016','0','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Frostbolt Volley'),
('85021065','37868','0','0','100','31','18000','18000','28000','28000','11','70602','4','0','0','0','0','0','0','0','0','0','Risen Archmage - Cast Corruption'),
('85021066','38068','0','0','100','30','30000','30000','0','0','37','0','0','1','0','0','0','0','0','0','0','0', 'Mana Void - Self Destruct'),
('80021007','36791','0','0','100','7','8000','8000','22000','25000','11','69325','0','1','0','0','0','0','0','0','0','0','Blazing Skeleton - Casts Lay Waste'),
('80021008','36791','0','0','100','25','8000','8000','22000','25000','11','71730','0','1','0','0','0','0','0','0','0','0','Blazing Skeleton - Casts Lay Waste'),
('80021009','36791','0','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Stop Movement on Aggro'),
('80021010','36791','4','0','100','6','0','0','0','0','11','70754','1','0','22','6','0','0','0','0','0','0','Blazing Skeleton - Cast Fireball and Set Phase 1 on Aggro'),
('80021011','36791','3','0','100','6','15','0','0','0','21','1','0','0','22','5','0','0','0','0','0','0','Blazing Skeleton - Start Movement and Set Phase 2 when Mana is at 15%'),
('80021012','36791','0','6','100','7','0','0','1500','3000','11','70754','1','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Cast Fireball above 15% Mana (Phase 1)'),
('80021013','36791','3','5','100','6','100','28','0','0','21','0','0','0','22','6','0','0','0','0','0','0','Blazing Skeleton - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
('80021014','36791','9','0','100','7','30','50','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Start Movement Beyond 30 Yards'),
('80021015','36791','7','0','100','6','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - On Evade set Phase to 0'),
('80021016','36791','0','0','100','24','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Stop Movement on Aggro'),
('80021017','36791','4','0','100','24','0','0','0','0','11','71748','1','0','22','6','0','0','0','0','0','0','Blazing Skeleton - Cast Fireball and Set Phase 1 on Aggro'),
('80021018','36791','3','0','100','24','15','0','0','0','21','1','0','0','22','5','0','0','0','0','0','0','Blazing Skeleton - Start Movement and Set Phase 2 when Mana is at 15%'),
('80021019','36791','0','6','100','25','0','0','1500','3000','11','71748','1','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Cast Fireball above 15% Mana (Phase 1)'),
('80021020','36791','3','5','100','24','100','28','0','0','21','0','0','0','22','6','0','0','0','0','0','0','Blazing Skeleton - Set Ranged Movement and Set Phase 1 when Mana is above 28% (Phase 2)'),
('80021021','36791','9','0','100','25','30','50','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - Start Movement Beyond 30 Yards'),
('80021022','36791','7','0','100','24','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Blazing Skeleton - On Evade set Phase to 0'),
('86021086','37863','4','0','100','30','0','0','0','0','11','70588','1','0','0','0','0','0','0','0','0','0','Suppresser - Cast Suppression'),
('82021033','37886','0','0','100','7','10000','11000','22000','28000','11','70633','4','0','0','0','0','0','0','0','0','0','Gluttonous Abomination - Casts Gut Spray'),
('82021034','37886','0','0','100','25','10000','11000','22000','28000','11','71283','4','0','0','0','0','0','0','0','0','0','Gluttonous Abomination - Casts Gut Spray'),
('82021035','37886','6','0','100','30','0','0','0','0','11','70675','0','2','0','0','0','0','0','0','0','0', 'Gluttonous Abomination - Casts on death Summon Rot Worm'),
('80021026','37934','2','0','100','7','10','0','12300','14900','11','70744','0','0','0','0','0','0','0','0','0','0','Blistering Zombie - Casts Acid Burst at 10% HP'),
('80021027','37934','2','0','100','25','10','0','12300','14900','11','71733','0','0','0','0','0','0','0','0','0','0','Blistering Zombie - Casts Acid Burst at 10% HP'),
('85021075','37698','2','0','100','6','25','0','0','0','11','72143','0','0','1','-106','0','0','0','0','0','0','Shambling Horror - Casts Enrage at 25% HP'),
('85021076','37698','2','0','100','24','25','0','0','0','11','72146','0','0','1','-106','0','0','0','0','0','0','Shambling Horror - Casts Enrage at 25% HP'),
('85021077','37698','0','0','100','7','7000','9000','15000','17000','11','72149','0','0','0','0','0','0','0','0','0','0','Shambling Horror - Casts Shockwave'),
('85021078','37698','0','0','100','25','7000','9000','15000','17000','11','73794','0','0','0','0','0','0','0','0','0','0','Shambling Horror - Casts Shockwave'),
('85021054','36701','0','0','100','7','10000','10000','25000','35000','11','69242','0','0','0','0','0','0','0','0','0','0','Raging Spirit - Cast Soul Shriek'),
('85021055','36701','0','0','100','25','10000','10000','25000','35000','11','73800','0','0','0','0','0','0','0','0','0','0','Raging Spirit - Cast Soul Shriek');
DELETE FROM script_texts WHERE entry <= -1665902 AND entry >= -1666080;
DELETE FROM script_texts WHERE entry <= -1810001 AND entry >= -1810032;
DELETE FROM script_texts WHERE `npc_entry` = 36612;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36612,-1631000,'This is the beginning AND the end, mortals. None may enter the master''s sanctum!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Смертные, ваш путь закончится так и не начавшись! Никто не смеет входить  в Обитель Господина!',16950,1,0,0,'SAY_ENTER_ZONE'),
(36612,-1631001,'The Scourge will wash over this world as a swarm of death and destruction!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Плеть накроет этот мир волной смерти и разрушения!',16941,1,0,0,'SAY_AGGRO'),
(36612,-1631002,'BONE STORM!',NULL,NULL, NULL,NULL,NULL,NULL,NULL,'ВИХРЬ КОСТЕЙ!',16946,1,0,0,'SAY_BONE_STORM'),
(36612,-1631003,'Bound by bone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Костяная хватка!',16947,1,0,0, 'SAY_BONESPIKE_1'),
(36612,-1631004,'Stick Around!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Постой-ка тут!',16948,1,0,0,'SAY_BONESPIKE_2'),
(36612,-1631005,'The only escape is death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Единственный выход - это СМЕРТЬ!',16949,1,0,0,'SAY_BONESPIKE_3'),
(36612,-1631006,'More bones for the offering!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Кости, для жертвоприношений!',16942,1,0,0,'SAY_KILL_1'),
(36612,-1631007,'Languish in damnation!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Сгинь в вечных муках!',16943,1,0,0,'SAY_KILL_2'),
(36612,-1631008,'I see... only darkness...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Я вижу... лишь тьму',16944,1,0,0,'SAY_DEATH'),
(36612,-1631009,'THE MASTER''S RAGE COURSES THROUGH ME!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Во мне бушует ярость господина!',16945,1,0,0,'SAY_BERSERK'),
(36612,-1631010,'Lord Marrowgar creates a whirling storm of bone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Лорд Ребрад распадается, и его кости начинают вращаться',0,3,0,0,'SAY_BONE_STORM_EMOTE');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631028 AND -1631011;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36855,-1631011, 'You have found your way here, because you are among the few gifted with true vision in a world cursed with blindness.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17272,1,0,0, 'SAY_INTRO_1'),
(36855,-1631012, 'You can see through the fog that hangs over this world like a shroud, and grasp where true power lies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17273,1,0,0, 'SAY_INTRO_2'),
(36855,-1631013, 'Fix your eyes upon your crude hands: the sinew, the soft meat, the dark blood coursing within.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16878,1,0,0, 'SAY_INTRO_3'),
(36855,-1631014, 'It is a weakness; a crippling flaw.... A joke played by the Creators upon their own creations.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17268,1,0,0, 'SAY_INTRO_4'),
(36855,-1631015, 'The sooner you come to accept your condition as a defect, the sooner you will find yourselves in a position to transcend it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17269,1,0,0, 'SAY_INTRO_5'),
(36855,-1631016, 'Through our Master, all things are possible. His power is without limit, and his will unbending.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17270,1,0,0, 'SAY_INTRO_6'),
(36855,-1631017, 'Those who oppose him will be destroyed utterly, and those who serve -- who serve wholly, unquestioningly, with utter devotion of mind and soul -- elevated to heights beyond your ken.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17271,1,0,0, 'SAY_INTRO_7'),
(36855,-1631018, 'What is this disturbance?! You dare trespass upon this hallowed ground? This shall be your final resting place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16868,1,0,0, 'SAY_AGGRO'),
(36855,-1631019, 'Enough! I see I must take matters into my own hands!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16877,1,0,0, 'SAY_PHASE_2'),
(36855,-1631020, 'Lady Deathwhisper''s Mana Barrier shimmers and fades away!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'SAY_PHASE_2_EMOTE'),
(36855,-1631021, 'You are weak, powerless to resist my will!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16876,1,0,0, 'SAY_DOMINATE_MIND'),
(36855,-1631022, 'Take this blessing and show these intruders a taste of our master''s power.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16873,1,0,0, 'SAY_DARK_EMPOWERMENT'),
(36855,-1631023, 'I release you from the curse of flesh!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16874,1,0,0, 'SAY_DARK_TRANSFORMATION'),
(36855,-1631024, 'Arise and exult in your pure form!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16875,1,0,0, 'SAY_ANIMATE_DEAD'),
(36855,-1631025, 'Do you yet grasp of the futility of your actions?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16869,1,0,0, 'SAY_KILL_1'),
(36855,-1631026, 'Embrace the darkness... Darkness eternal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16870,1,0,0, 'SAY_KILL_2'),
(36855,-1631027, 'This charade has gone on long enough.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16872,1,0,0, 'SAY_BERSERK'),
(36855,-1631028, 'All part of the masters plan! Your end is... inevitable!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16871,1,0,0, 'SAY_DEATH');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1665919,'Thank the spirits for you, brothers and sisters. The Skybreaker has already left. Quickly now, to Orgrim''s Hammer! If you leave soon, you may be able to catch them.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,''),
(0,-1665920,'This should be helpin''ya!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,''),
(0,-1665921,'Aka''Magosh, brave warriors. The alliance is in great number here.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665922,'Captain Saurfang will be pleased to see you aboard Orgrim''s Hammer. Make haste, we will secure the area until you are ready for take-off.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665923,'A screeching cry pierces the air above!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665924,'A Spire Frostwyrm lands just before Orgrim''s Hammer.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665925,'Rise up, sons and daughters of the Horde! Today we battle a hated enemy of the Horde! LOK''TAR OGAR! Kor''kron, take us out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665926,'What is that?! Something approaching in the distance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665927,'ALLIANCE GUNSHIP! ALL HANDS ON DECK!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665928,'Move yer jalopy or we''ll blow it out of the sky, orc! The Horde''s got no business here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665929,'You will know our business soon! KOR''KRON, ANNIHILATE THEM!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665930,'Marines, Sergeants, attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665931,'You DARE board my ship? Your death will come swiftly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665932,'Riflemen, shoot faster!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665933,'Mortar team, reload!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665934,'We''re taking hull damage, get a sorcerer out here to shut down those cannons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665935,'The Alliance falter. Onward to the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665936,'Damage control! Put those fires out! You haven''t seen the last of the Horde!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665937,'Thank goodness you arrived when you did, heroes. Orgrim''s Hammer has already left. Quickly now, to The Skybreaker! If you leave soon, you may be able to catch them.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665938,'This ought to help!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665939,'Skybreaker Sorcerer summons a Skybreaker Battle Standard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665940,'You have my thanks. We were outnumbered until you arrived.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665941,'Captain Muradin is waiting aboard The Skybreaker. We''ll secure the area until you are ready for take off.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665942,'Skybreaker infantry, hold position!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665943,'A screeching cry pierces the air above!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665944,'A Spire Frostwyrm lands just before The Skybreaker. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665945,'Fire up the engines! We got a meetin with destiny, lads!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665946,'Hold on to yer hats!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665947,'What in the world is that? Grab me spyglass, crewman!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665948,'By me own beard! HORDE SAILIN IN FAST N HOT!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665949,'EVASIVE ACTION! MAN THE GUNS!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665950,'Cowardly dogs! Ye blindsighted us!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665951,'This is not your battle, dwarf. Back down or we will be forced to destroy your ship.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665952,'Not me battle? I dunnae who ye? think ye are, mister, but I got a score to settle with Arthas and yer not gettin in me way! FIRE ALL GUNS! FIRE! FIRE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665953,'Reavers, Sergeants, attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665954,'What''s this then?! Ye won''t be takin this son o Ironforge''s vessel without a fight!.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665955,'Axethrowers, hurl faster!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665956,'Rocketeers, reload!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665957,'We''re taking hull damage, get a battle-mage out here to shut down those cannons!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665958,'Don''t say I didn''t warn ya, scoundrels! Onward, brothers and sisters!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
(0,-1665959,'Captain Bartlett, get us out of here! We''re taken too much damage to stay afloat!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631077 AND -1631029;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(37200,-1631029, 'Let''s get a move on then! Move ou...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16974,1,0,0, 'SAY_INTRO_ALLIANCE_1'),
(37813,-1631030, 'For every Horde soldier that you killed -- for every Alliance dog that fell, the Lich King''s armies grew. Even now the val''kyr work to raise your fallen as Scourge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16701,1,0,0, 'SAY_INTRO_ALLIANCE_2'),
(37813,-1631031, 'Things are about to get much worse. Come, taste the power that the Lich King has bestowed upon me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16702,1,0,0, 'SAY_INTRO_ALLIANCE_3'),
(37200,-1631032, 'A lone orc against the might of the Alliance???',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16970,1,0,0, 'SAY_INTRO_ALLIANCE_4'),
(37200,-1631033, 'Charge!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16971,1,0,0, 'SAY_INTRO_ALLIANCE_5'),
(37813,-1631034, 'Dwarves...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16703,1,0,0, 'SAY_INTRO_ALLIANCE_6'),
(37813,-1631035, 'Deathbringer Saurfang immobilizes Muradin and his guards.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_INTRO_ALLIANCE_7'),
(37187,-1631036, 'Kor''kron, move out! Champions, watch your backs. The Scourge have been...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17103,1,0,22, 'SAY_INTRO_HORDE_1'),
(37813,-1631037, 'Join me, father. Join me and we will crush this world in the name of the Scourge -- for the glory of the Lich King!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16704,1,0,0, 'SAY_INTRO_HORDE_2'),
(37187,-1631038, 'My boy died at the Wrath Gate. I am here only to collect his body.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17097,0,0,397, 'SAY_INTRO_HORDE_3'),
(37813,-1631039, 'Stubborn and old. What chance do you have? I am stronger, and more powerful than you ever were.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16705,1,0,5, 'SAY_INTRO_HORDE_4'),
(37187,-1631040, 'We named him Dranosh. It means "Heart of Draenor" in orcish. I would not let the warlocks take him. My boy would be safe, hidden away by the elders of Garadar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17098,0,0,1, 'SAY_INTRO_HORDE_5'),
(37187,-1631041, 'I made a promise to his mother before she died; that I would cross the Dark Portal alone - whether I lived or died, my son would be safe. Untainted...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17099,0,0,1, 'SAY_INTRO_HORDE_6'),
(37187,-1631042, 'Today, I fulfill that promise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17100,0,0,397, 'SAY_INTRO_HORDE_7'),
(37187,-1631043, 'High Overlord Saurfang charges!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17104,2,0,53, 'SAY_INTRO_HORDE_8'),
(37813,-1631044, 'Pathetic old orc. Come then heroes. Come and face the might of the Scourge!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16706,1,0,15, 'SAY_INTRO_HORDE_9'),
(37813,-1631045, 'BY THE MIGHT OF THE LICH KING!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16694,1,0,0, 'SAY_AGGRO'),
(37813,-1631046, 'The ground runs red with your blood!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16699,1,0,0, 'SAY_MARK_OF_THE_FALLEN_CHAMPION'),
(37813,-1631047, 'Feast, my minions!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16700,1,0,0, 'SAY_BLOOD_BEASTS'),
(37813,-1631048, 'You are nothing!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16695,1,0,0, 'SAY_KILL_1'),
(37813,-1631049, 'Your soul will find no redemption here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16696,1,0,0, 'SAY_KILL_2'),
(37813,-1631050, 'Deathbringer Saurfang goes into frenzy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'SAY_FRENZY'),
(37813,-1631051, 'I have become...DEATH!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16698,1,0,0, 'SAY_BERSERK'),
(37813,-1631052, 'I... Am... Released.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16697,1,0,0, 'SAY_DEATH'),
(37200,-1631053, 'Muradin Bronzebeard gasps for air.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16975,2,0,0, 'SAY_OUTRO_ALLIANCE_1'),
(37200,-1631054, 'That was Saurfang''s boy - the Horde commander at the Wrath Gate. Such a tragic end...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16976,0,0,0, 'SAY_OUTRO_ALLIANCE_2'),
(37200,-1631055, 'What in the... There, in the distance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16977,0,0,0, 'SAY_OUTRO_ALLIANCE_3'),
(    0,-1631056, 'A Horde Zeppelin flies up to the rise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_4'),
(37200,-1631057, 'Soldiers, fall in! Looks like the Horde are comin'' to take another shot!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16978,1,0,0, 'SAY_OUTRO_ALLIANCE_5'),
(    0,-1631058, 'The Zeppelin docks, and High Overlord Saurfang hops out, confronting the Alliance soldiers and Muradin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_6'),
(37200,-1631059, 'Don''t force me hand, orc. We can''t let ye pass.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16972,0,0,0, 'SAY_OUTRO_ALLIANCE_7'),
(37187,-1631060, 'Behind you lies the body of my only son. Nothing will keep me from him.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17094,0,0,0, 'SAY_OUTRO_ALLIANCE_8'),
(37200,-1631061, 'I... I can''t do it. Get back on yer ship and we''ll spare yer life.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16973,0,0,0, 'SAY_OUTRO_ALLIANCE_9'),
(    0,-1631062, 'A mage portal from Stormwind appears between the two and Varian Wrynn and Jaina Proudmoore emerge.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_10'),
(37879,-1631063, 'Stand down, Muradin. Let a grieving father pass.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16690,0,0,0, 'SAY_OUTRO_ALLIANCE_11'),
(37187,-1631064, 'High Overlord Saurfang walks over to his son and kneels before his son''s body.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_12'),
(37187,-1631065, '[Orcish] No''ku kil zil''nok ha tar.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17096,0,0,0, 'SAY_OUTRO_ALLIANCE_13'),
(37187,-1631066, 'Higher Overlord Saurfang picks up the body of his son and walks over towards Varian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'SAY_OUTRO_ALLIANCE_14'),
(37187,-1631067, 'I will not forget this... kindness. I thank you, Highness',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17095,0,0,0, 'SAY_OUTRO_ALLIANCE_15'),
(37879,-1631068, 'I... I was not at the Wrath Gate, but the soldiers who survived told me much of what happened. Your son fought with honor. He died a hero''s death. He deserves a hero''s burial.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16691,0,0,0, 'SAY_OUTRO_ALLIANCE_16'),
(37188,-1631069, 'Lady Jaina Proudmoore cries.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16651,2,0,18, 'SAY_OUTRO_ALLIANCE_17'),
(37879,-1631070, 'Jaina? Why are you crying?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16692,0,0,0, 'SAY_OUTRO_ALLIANCE_18'),
(37188,-1631071, 'It was nothing, your majesty. Just... I''m proud of my king.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16652,0,0,0, 'SAY_OUTRO_ALLIANCE_19'),
(37879,-1631072, 'Bah! Muradin, secure the deck and prepare our soldiers for an assault on the upper citadel. I''ll send out another regiment from Stormwind.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16693,0,0,0, 'SAY_OUTRO_ALLIANCE_20'),
(37200,-1631073, 'Right away, yer majesty!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16979,0,0,0, 'SAY_OUTRO_ALLIANCE_21'),
(37187,-1631074, 'High Overlord Saurfang coughs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17105,2,0,0, 'SAY_OUTRO_HORDE_1'),
(37187,-1631075, 'High Overlord Saurfang weeps over the corpse of his son.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17106,2,0,15, 'SAY_OUTRO_HORDE_2'),
(37187,-1631076, 'You will have a proper ceremony in Nagrand next to the pyres of your mother and ancestors.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17101,0,0,0, 'SAY_OUTRO_HORDE_3'),
(37187,-1631077, 'Honor, young heroes... no matter how dire the battle... Never forsake it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17102,0,0,0, 'SAY_OUTRO_HORDE_4');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631090 AND -1631078;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36626,-1631078, 'NOOOO! You kill Stinky! You pay!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16907,1,0,0, 'SAY_STINKY_DEAD'),
(36626,-1631079, 'Fun time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16901,1,0,0, 'SAY_AGGRO'),
(36678,-1631080, 'Just an ordinary gas cloud. But watch out, because that''s no ordinary gas cloud!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17119,1,0,432, 'SAY_GASEOUS_BLIGHT'),
(36626,-1631081, 'Festergut farts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16911,2,0,0, 'EMOTE_GAS_SPORE'),
(36626,-1631082, 'Festergut releases Gas Spores!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'EMOTE_WARN_GAS_SPORE'),
(36626,-1631083, 'Gyah! Uhhh, I not feel so good...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16906,1,0,0, 'SAY_PUNGENT_BLIGHT'),
(36626,-1631084, 'Festergut begins to cast |cFFFF7F00Pungent Blight!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0, 'EMOTE_WARN_PUNGENT_BLIGHT'),
(36626,-1631085, 'Festergut vomits.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0, 'EMOTE_PUNGENT_BLIGHT'),
(36626,-1631086, 'Daddy, I did it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16902,1,0,0, 'SAY_KILL_1'),
(36626,-1631087, 'Dead, dead, dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16903,1,0,0, 'SAY_KILL_2'),
(36626,-1631088, 'Fun time over!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16905,1,0,0, 'SAY_BERSERK'),
(36626,-1631089, 'Da ... Ddy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16904,1,0,0, 'SAY_DEATH'),
(36678,-1631090, 'Oh, Festergut. You were always my favorite. Next to Rotface. The good news is you left behind so much gas, I can practically taste it!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17124,1,0,0, 'SAY_FESTERGUT_DEATH');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631103 AND -1631091;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36678,-1631091,'Great news, everyone! The slime is flowing again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17126,1,0,1,'SAY_ROTFACE_OOZE_FLOOD1'),
(36678,-1631092,'Good news, everyone! I''ve fixed the poison slime pipes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17123,1,0,1,'SAY_ROTFACE_OOZE_FLOOD2'),
(36678,-1631093,'Terrible news, everyone, Rotface is dead! But great news everyone, he left behind plenty of ooze for me to use! Whaa...? I''m a poet, and I didn''t know it? Astounding!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17146,1,0,0,'SAY_ROTFACE_DEATH'),
(36627,-1631094,'What? Precious? Noooooooooo!!!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16993,1,0,0,'SAY_PRECIOUS_DIES'),
(36627,-1631095,'WEEEEEE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16986,1,0,0,'SAY_AGGRO'),
(36627,-1631096,'%s begins to cast Slime Spray!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_SLIME_SPRAY'),
(36627,-1631097,'Icky sticky.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16991,1,0,0,'SAY_SLIME_SPRAY'),
(36627,-1631098,'|TInterface\Icons\spell_shadow_unstableaffliction_2.blp:16|t%s begins to cast |cFFFF0000Unstable Ooze Explosion!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_UNSTABLE_EXPLOSION'),
(36627,-1631099,'I think I made an angry poo-poo. It gonna blow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16992,1,0,0,'SAY_UNSTABLE_EXPLOSION'),
(36627,-1631100,'Daddy make toys out of you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16988,1,0,0,'SAY_KILL_1'),
(36627,-1631101,'I brokes-ded it...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16987,1,0,0,'SAY_KILL_2'),
(36627,-1631102,'Sleepy Time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16990,1,0,0,'SAY_BERSERK'),
(36627,-1631103,'Bad news daddy...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16989,1,0,0,'SAY_DEATH');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631114 AND -1631104;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36678,-1631104,'Good news, everyone! I think I perfected a plague that will destroy all life on Azeroth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17114,1,0,0,'SAY_AGGRO'),
(36678,-1631105,'%s begins to cast Unstable Experiment!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_UNSTABLE_EXPERIMENT'),
(36678,-1631106,'Two oozes, one room! So many delightful possibilities...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17122,1,0,0,'SAY_PHASE_TRANSITION_HEROIC'),
(36678,-1631107,'Hmm. I don''t feel a thing. Whaa...? Where''d those come from?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17120,1,0,15,'SAY_TRANSFORM_1'),
(36678,-1631108,'Tastes like... Cherry! Oh! Excuse me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17121,1,0,15,'SAY_TRANSFORM_2'),
(36678,-1631109,'|TInterface\Icons\inv_misc_herb_evergreenmoss.blp:16|t%s cast |cFF00FF00Malleable Goo!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_MALLEABLE_GOO'),
(36678,-1631110,'%s cast |cFFFF7F00Choking Gas Bomb!|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_CHOKING_GAS_BOMB'),
(36678,-1631111,'Hmm... Interesting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17115,1,0,0,'SAY_KILL_1'),
(36678,-1631112,'That was unexpected!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17116,1,0,0,'SAY_KILL_2'),
(36678,-1631113,'Great news, everyone!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17118,1,0,0,'SAY_BERSERK'),
(36678,-1631114,'Bad news, everyone! I don''t think I''m going to make it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17117,1,0,0,'SAY_DEATH');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1631139 AND -1631115;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(38004,-1631115,'Foolish mortals. You thought us defeated so easily? The San''layn are the Lich King''s immortal soldiers! Now you shall face their might combined!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16795,1,0,1,'SAY_INTRO_1'),
(38004,-1631116,'Rise up, brothers, and destroy our enemies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16796,1,0,0,'SAY_INTRO_2'),
(37972,-1631117,'Such wondrous power! The Darkfallen Orb has made me INVINCIBLE!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16727,1,0,0,'SAY_KELESETH_INVOCATION'),
(37972,-1631118,'Invocation of Blood jumps to Prince Keleseth!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_KELESETH_INVOCATION'),
(37972,-1631119,'Blood will flow!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16728,1,0,0,'SAY_KELESETH_SPECIAL'),
(37972,-1631120,'Were you ever a threat?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16723,1,0,0,'SAY_KELESETH_KILL_1'),
(37972,-1631121,'Truth is found in death.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16724,1,0,0,'SAY_KELESETH_KILL_2'),
(37972,-1631122,'%s cackles maniacally!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16726,2,0,0,'EMOTE_KELESETH_BERSERK'),
(37972,-1631123,'My queen... they come...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16725,1,0,0,'SAY_KELESETH_DEATH'),
(37973,-1631124,'Tremble before Taldaram, mortals, for the power of the orb flows through me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16857,1,0,0,'SAY_TALDARAM_INVOCATION'),
(37973,-1631125,'Invocation of Blood jumps to Prince Taldaram!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_TALDARAM_INVOCATION'),
(37973,-1631126,'Delight in the pain!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16858,1,0,0,'SAY_TALDARAM_SPECIAL'),
(37973,-1631127,'Inferno Flames speed toward $N!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_TALDARAM_FLAME'),
(37973,-1631128,'Worm food.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16853,1,0,0,'SAY_TALDARAM_KILL_1'),
(37973,-1631129,'Beg for mercy!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16854,1,0,0,'SAY_TALDARAM_KILL_2'),
(37973,-1631130,'%s laughs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16856,2,0,0,'EMOTE_TALDARAM_BERSERK'),
(37973,-1631131,'%s gurgles and dies.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16855,2,0,0,'EMOTE_TALDARAM_DEATH'),
(37970,-1631132,'Naxxanar was merely a setback! With the power of the orb, Valanar will have his vengeance!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16685,1,0,0,'SAY_VALANAR_INVOCATION'),
(37970,-1631133,'Invocation of Blood jumps to Prince Valanar!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_VALANAR_INVOCATION'),
(37970,-1631134,'My cup runneth over.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16686,1,0,0,'SAY_VALANAR_SPECIAL'),
(37970,-1631135,'%s begins casting Empowered Schock Vortex!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3,0,0,'EMOTE_VALANAR_SHOCK_VORTEX'),
(37970,-1631136,'Dinner... is served.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16681,1,0,0,'SAY_VALANAR_KILL_1'),
(37970,-1631137,'Do you see NOW the power of the Darkfallen?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16682,1,0,0,'SAY_VALANAR_KILL_2'),
(37970,-1631138,'BOW DOWN BEFORE THE SAN''LAYN!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16684,1,0,0,'SAY_VALANAR_BERSERK'),
(37970,-1631139,'...why...?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16683,1,0,0,'SAY_VALANAR_DEATH');
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(37955,-1666053,'Is that all you got?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16791,1,0,0,''),
(37955,-1666054,'You have made an... unwise... decision.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16782,1,0,0,''),
(37955,-1666055,'Just a taste...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16783,1,0,0,''),
(37955,-1666056,'Know my hunger!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16784,1,0,0,''),
(37955,-1666057,'SUFFER!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16786,1,0,0,''),
(37955,-1666058,'Can you handle this?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16787,1,0,0,''),
(37955,-1666059,'Yes... feed my precious one! You''re mine now! ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16790,1,0,0,''),
(37955,-1666060,'Here it comes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16788,1,0,0,''),
(37955,-1666061,'THIS ENDS NOW!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16793,1,0,0,''),
(37955,-1666062,'But... we were getting along... so well...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16794,1,0,0,'');
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36789,-1666063,'Heroes, lend me your aid! I... I cannot hold them off much longer! You must heal my wounds!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17064,1,0,0,''),
(36789,-1666064,'I have opened a portal into the Emerald Dream. Your salvation lies within, heroes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17068,1,0,0,''),
(36789,-1666065,'My strength is returning! Press on, heroes!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17070,1,0,0,''),
(36789,-1666066,'I will not last much longer!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17069,1,0,0,''),
(36789,-1666067,'Forgive me for what I do! I... cannot... stop... ONLY NIGHTMARES REMAIN!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17072,1,0,0,''),
(36789,-1666068,'A tragic loss...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17066,1,0,0,''),
(36789,-1666069,'FAILURES!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17067,1,0,0,''),
(36789,-1666070,'I am renewed! Ysera grants me the favor to lay these foul creatures to rest!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17071,1,0,0,'');
INSERT INTO `script_texts`(`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36853,-1666071,'You are fools to have come to this place! The icy winds of Northrend will consume your souls!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17007,1,0,0,''),
(36853,-1666072,'Suffer, mortals, as your pathetic magic betrays you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17014,1,0,0,''),
(36853,-1666073,'Can you feel the cold hand of death upon your heart?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17013,1,0,0,''),
(36853,-1666074,'Aaah! It burns! What sorcery is this?!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17015,1,0,0,''),
(36853,-1666075,'Your incursion ends here! None shall survive!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17012,1,0,0,''),
(36853,-1666076,'Now feel my master''s limitless power and despair!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17016,1,0,0,''),
(36853,-1666077,'Perish!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17008,1,0,0,''),
(36853,-1666078,'A flaw of mortality...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17009,1,0,0,''),
(36853,-1666079,'Enough! I tire of these games!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17011,1,0,0,''),
(36853,-1666080,'Free...at last...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17010,1,0,0,'');
INSERT INTO script_texts (npc_entry,entry,content_default,content_loc1,content_loc2,content_loc3,content_loc4,content_loc5,content_loc6,content_loc7,content_loc8,sound,type,language,emote,comment)VALUES
(36597,-1810001, 'So...the Light''s vaunted justice has finally arrived. Shall I lay down Frostmourne and throw myself at your mercy, Fordring?',null,null,null,null,null,null,null,null,17349,1,0,0,''),
(38995,-1810002, 'We will grant you a swift death, Arthas. More than can be said for the thousands you''ve tortured and slain.',null,null,null,null,null,null,null,null,17390,1,0,0,''),
(36597,-1810003, 'You will learn of that first hand. When my work is complete, you will beg for mercy -- and I will deny you. Your anguished cries will be testament to my unbridled power.',null,null,null,null,null,null,null,null,17350,1,0,0,''),
(38995,-1810004, 'So be it. Champions, attack!',null,null,null,null,null,null,null,null,17391,1,0,0,''),
(36597,-1810005, 'I''ll keep you alive to witness the end, Fordring. I would not want the Light''s greatest champion to miss seeing this wretched world remade in my image.',null,null,null,null,null,null,null,null,17351,1,0,0,''),
(38995,-1810006, 'Come then champions, feed me your rage!',null,null,null,null,null,null,null,null,17352,1,0,0,''),
(36597,-1810007, 'I will freeze you from within until all that remains is an icy husk!',null,null,null,null,null,null,null,null,17369,1,0,0,''),
(36597,-1810008, 'Apocalypse!',null,null,null,null,null,null,null,null,17371,1,0,0,''),
(36597,-1810009, 'Bow down before your lord and master!',null,null,null,null,null,null,null,null,17372,1,0,0,''),
(36597,-1810010, 'Hope wanes!',null,null,null,null,null,null,null,null,17363,1,0,0,''),
(36597,-1810011, 'The end has come!',null,null,null,null,null,null,null,null,17364,1,0,0,''),
(36597,-1810012, 'Face now your tragic end!',null,null,null,null,null,null,null,null,17365,1,0,0,''),
(36597,-1810013, 'No question remains unanswered. No doubts linger. You are Azeroth''s greatest champions! You overcame every challenge I laid before you. My mightiest servants have fallen before your relentless onslaught, your unbridled fury... Is it truly righteousness that drives you? I wonder.',null,null,null,null,null,null,null,null,17353,1,0,0,''),
(36597,-1810014, 'You trained them well, Fordring. You delivered the greatest fighting force this world has ever known... right into my hands -- exactly as I intended. You shall be rewarded for your unwitting sacrifice.',null,null,null,null,null,null,null,null,17355,1,0,0,''),
(36597,-1810015, 'Watch now as I raise them from the dead to become masters of the Scourge. They will shroud this world in chaos and destruction. Azeroth''s fall will come at their hands -- and you will be the first to die.',null,null,null,null,null,null,null,null,17356,1,0,0,''),
(36597,-1810016, 'I delight in the irony.',null,null,null,null,null,null,null,null,17357,1,0,0,''),
(38995,-1810017, 'LIGHT, GRANT ME ONE FINAL BLESSING. GIVE ME THE STRENGTH... TO SHATTER THESE BONDS!',null,null,null,null,null,null,null,null,17392,1,0,0,''),
(36597,-1810018, 'Impossible...',null,null,null,null,null,null,null,null,17358,1,0,0,''),
(38995,-1810020, 'No more, Arthas! No more lives will be consumed by your hatred!',null,null,null,null,null,null,null,null,17393,1,0,0,''),
(38579,-1810021, 'Free at last! It is over, my son. This is the moment of reckoning.',null,null,null,null,null,null,null,null,17397,1,0,0,''),
(38995,-1810022, 'The Lich King must fall!',null,null,null,null,null,null,null,null,17389,1,0,0,''),
(38579,-1810023, 'Rise up, champions of the Light!',null,null,null,null,null,null,null,null,17398,1,0,0,''),
(36597,-1810024, 'Now I stand, the lion before the lambs... and they do not fear.',null,null,null,null,null,null,null,null,17361,1,0,0,''),
(36597,-1810025, 'They cannot fear.',null,null,null,null,null,null,null,null,17362,1,0,0,''),
(0,-1810026, 'Argh... Frostmourne, obey me!',null,null,null,null,null,null,null,null,17367,1,0,0,''),
(36597,-1810027, 'Frostmourne hungers...',null,null,null,null,null,null,null,null,17366,1,0,0,''),
(0,-1810028, 'Frostmourne feeds on the soul of your fallen ally!',null,null,null,null,null,null,null,null,17368,1,0,0,''),
(36597,-1810029, 'Val''kyr, your master calls!',null,null,null,null,null,null,null,null,17373,1,0,0,''),
(36597,-1810030, 'Watch as the world around you collapses!',null,null,null,null,null,null,null,null,17370,1,0,0,''),
(36597,-1810031, 'You gnats actually hurt me! Perhaps I''ve toyed with you long enough, now taste the vengeance of the grave!',null,null,null,null,null,null,null,null,17359,1,0,0,''),
(36597,-1810032, 'The Lich King begins to cast Defile',null,null,null,null,null,null,null,null,0,3,0,0,'');
DELETE FROM `spell_proc_event` WHERE `entry` IN (70107);
INSERT INTO `spell_proc_event` VALUES (70107, 0x08, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000054, 0x00000000, 0, 20, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (69762);
INSERT INTO `spell_proc_event` VALUES (69762, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00014000, 0x00000000, 0, 101, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (72178);
INSERT INTO `spell_proc_event` VALUES (72178, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00055510, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (72176);
INSERT INTO `spell_proc_event` VALUES (72176, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00051154, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (70602);
INSERT INTO `spell_proc_event` VALUES (70602, 0x20, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x000AAA20, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (71494);
INSERT INTO `spell_proc_event` VALUES (71494, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 101, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (72176);
INSERT INTO `spell_proc_event` VALUES (72176, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00051154, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (72178);
INSERT INTO `spell_proc_event` VALUES (72178, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00055510, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (71604);
INSERT INTO `spell_proc_event` VALUES (71604, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (70001);
INSERT INTO `spell_proc_event` VALUES (70001, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (71971);
INSERT INTO `spell_proc_event` VALUES (71971, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (72256);
INSERT INTO `spell_proc_event` VALUES (72256, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (72408);
INSERT INTO `spell_proc_event` VALUES (72408, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (70672);
INSERT INTO `spell_proc_event` VALUES (70672, 0x28, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (72455);
INSERT INTO `spell_proc_event` VALUES (72455, 0x28, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (72832);
INSERT INTO `spell_proc_event` VALUES (72832, 0x28, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (72833);
INSERT INTO `spell_proc_event` VALUES (72833, 0x28, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (70904);
INSERT INTO `spell_proc_event` VALUES (70904, 0x10, 0x06, 0x00000000, 0x00000000, 0x00000000, 0x00008000, 0x00000000, 0, 100, 0);
DELETE FROM `creature_template` WHERE `entry`=36672;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES('36672','0','0','0','0','0','1126','11686','0','0','Coldflame','','','0','80','80','0','21','21','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','1024','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','128','npc_coldflame','12340');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (72705, 69147, 69140);
INSERT INTO `spell_script_names` VALUES
('72705', 'spell_marrowgar_coldflame'),
('69147', 'spell_marrowgar_coldflame_trigger'),
('69140', 'spell_marrowgar_coldflame');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69075, 70834, 70835, 70836);
INSERT INTO `spell_script_names` VALUES 
(69075, 'spell_marrowgar_bone_storm'),
(70834,    'spell_marrowgar_bone_storm'),
(70835,    'spell_marrowgar_bone_storm'),
(70836,    'spell_marrowgar_bone_storm');
UPDATE `creature_template` SET `ScriptName`='boss_lady_deathwhisper' WHERE `entry`=36855;
UPDATE `creature_template` SET `ScriptName`='npc_cult_fanatic' WHERE `entry` IN (37890,38009,38135);
UPDATE `creature_template` SET `ScriptName`='npc_cult_adherent' WHERE `entry` IN(37949,38010,38136);
UPDATE `creature_template` SET `ScriptName`='npc_vengeful_shade' WHERE `entry`=38222;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70903,71236) AND `ScriptName`='spell_cultist_dark_martyrdom';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70903,'spell_cultist_dark_martyrdom'),
(71236,'spell_cultist_dark_martyrdom');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (69195, 71219, 73031, 73032);
DELETE FROM `creature` WHERE `id` = 37824;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('201165','37824','631','15','1','0','0','4388.1','3213.29','408.74','3.83972','86400','0','0','25200','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('201508','37824','631','15','1','11686','0','4388.1','3213.29','408.74','3.83972','86400','0','0','25200','0','0','0','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES('201304','37824','631','15','1','11686','0','4324.28','3215.04','408.705','5.58505','86400','0','0','25200','0','0','0','0','0','0');
UPDATE `creature_template` SET `ScriptName` = 'boss_prince_keleseth_icc' WHERE `entry` = 37972;
UPDATE `creature_template` SET `ScriptName` = 'boss_prince_valanar_icc' WHERE `entry` = 37970;
UPDATE `creature_template` SET `ScriptName` = 'boss_prince_taldaram_icc' WHERE `entry` = 37973;
UPDATE `creature_template` SET `mechanic_immune_mask`=650854399 WHERE `entry` IN (37970, 37972, 37973, 38401, 38784, 38785, 38399, 38769, 38770, 38400, 38771, 38772);
UPDATE `creature_template` SET `ScriptName` = 'npc_shock_vortex' WHERE `entry` = 38422;
DELETE FROM `creature` WHERE `id` = 38557;
UPDATE `creature_template` SET `ScriptName` = 'npc_kinetic_bomb_target' WHERE `entry` = 38458;
UPDATE `creature_template` SET `ScriptName` = 'boss_blood_queen_lana_thel' WHERE `entry` = 37955;
UPDATE `creature_template` SET `unit_flags` = 33554432 WHERE `entry` IN (38186, 38429);
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 38429;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 37985;
UPDATE `creature_template` SET `ScriptName` = 'npc_dreamcloud_icc' WHERE `entry` = 38421;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71301, 71977);
INSERT INTO `spell_script_names` VALUES (71301, 'spell_valithria_summon_portal'), (71977, 'spell_valithria_summon_portal');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70873, 71941);
INSERT INTO `spell_script_names` VALUES (70873, 'spell_valithria_vigor'), (71941, 'spell_valithria_vigor');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (71157, 29306);
INSERT INTO `spell_script_names` VALUES (71157,  'spell_rotface_plagued_zombie_infected_wound'), (29306, 'spell_rotface_plagued_zombie_infected_wound');
UPDATE `creature` SET `spawntimesecs` = 604800 WHERE `id` IN (38008, 38752);
DELETE FROM `creature` WHERE `id` = 38752 AND NOT (`guid` = 10718);
UPDATE `creature` SET `spawntimesecs` = 604800 WHERE `guid` = 10718;
DELETE FROM `creature_template` WHERE `entry` = 38752;
INSERT INTO `creature_template` VALUES (38752, 0, 0, 0, 0, 0, 26623, 0, 0, 0, 'Green Dragon Combat Trigger', '', '', 0, 80, 
80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 1, 2, 0, 1, 1, 2000, 2000, 1, 32832, 8, 0, 0, 0, 0, 0, 1, 2, 126, 7, 8, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0, '', 0, 3, 1.35, 1, 1, 0, 0, 0, 0, 0, 0, 0,  0, 1, 358, 803160063, 0, 'npc_icc_combat_stalker', 12340);
UPDATE `creature_template` SET `ScriptName` = 'npc_column_of_frost_icc' WHERE `entry` = 37918;
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_gluttonous_abomination' WHERE `entry` = 37886;
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_rot_worm' WHERE `entry` = 37907;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70912, 70913, 70914, 70915, 70916);
INSERT INTO `spell_script_names` VALUES
(70912,'spell_valithria_summon_adds'),
(70913,'spell_valithria_summon_adds'),
(70914,'spell_valithria_summon_adds'),
(70915,'spell_valithria_summon_adds'),
(70916,'spell_valithria_summon_adds');
REPLACE INTO `spell_script_names` VALUES (70766, 'spell_dream_state');
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_blistering_zombie' WHERE `entry` = 37934;
UPDATE `creature_template` SET `Scriptname` = 'npc_icc_valithria_supressor' WHERE `entry` = 37863;
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_risen_archmage' WHERE `entry` = 37868;
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0, `AIName` = '' WHERE `entry` IN (37868, 37863, 37934);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (37868, 37934, 37886, 37863);
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_blazing_skeleton' WHERE `entry` = 36791;
UPDATE `creature_template` SET `ScriptName` = 'npc_column_of_frost_icc' WHERE `entry` = 37918;
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_gluttonous_abomination' WHERE `entry` = 37886;
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_mana_void' WHERE `entry` = 38068;
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_rot_worm' WHERE `entry` = 37907;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70912, 70913, 70914, 70915, 70916);
INSERT INTO `spell_script_names` VALUES
(70912,'spell_valithria_summon_adds'),
(70913,'spell_valithria_summon_adds'),
(70914,'spell_valithria_summon_adds'),
(70915,'spell_valithria_summon_adds'),
(70916,'spell_valithria_summon_adds');
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_blistering_zombie' WHERE `entry` = 37934;
UPDATE `creature_template` SET `Scriptname` = 'npc_icc_valithria_supressor' WHERE `entry` = 37863;
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_risen_archmage' WHERE `entry` = 37868;
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0, `AIName` = '' WHERE `entry` IN (37868, 37863, 37934);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (37868, 37934, 37886, 37863);
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_valithria_blazing_skeleton' WHERE `entry` = 36791;
-- UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` IN (37533, 37534);
-- UPDATE `creature` SET `MovementType` = 0 WHERE `id` IN (37533, 37534);
-- UPDATE `creature` SET `position_x` = 4430, `position_y` = 2465, `position_z` = 204, `orientation` = 3.142 WHERE `id` = 37533;
-- UPDATE `creature` SET `position_x` = 4430, `position_y` = 2505, `position_z` = 204, `orientation` = 3.142 WHERE `id` = 37534;
-- DELETE FROM `gameobject` WHERE `guid` = 3855786;
-- INSERT INTO `gameobject` VALUES (3855786, 201385, 631, 3, 1, 4317.41, 2484.94, 211.186, 0, 0, 0, 0, 0, 604800, 100, 0);
-- UPDATE `creature_template` SET `ScriptName` = 'npc_icc_frost_bomb_landing_mark' WHERE `entry` = 37186;
-- UPDATE `creature_template` SET `ScriptName` = 'npc_icc_frostwing_mob' WHERE `entry` IN (37531, 37532);
-- UPDATE `creature_template` SET `ScriptName` = 'npc_icc_icy_blast' WHERE `entry` = 36731;
-- DELETE FROM `spell_script_names` WHERE `spell_id` = 71376;
-- INSERT INTO `spell_script_names` VALUES (71376,'spell_icc_icy_blast');
-- DELETE FROM `spell_script_names` WHERE `spell_id` = 71053;
-- INSERT INTO `spell_script_names` VALUES (71053, 'spell_sindragosa_frost_bomb_explosion');
-- UPDATE `spell_script_names` SET `ScriptName` = 'spell_sindragosa_frost_beacon' WHERE `spell_id` = 70126;
-- DELETE FROM `spell_script_names` WHERE `spell_id` = 70157;
-- INSERT INTO `spell_script_names` VALUES (70157, 'spell_sindragosa_ice_tomb');
-- UPDATE `creature_template` SET `VehicleId` = 533 WHERE `entry` = 36980;
-- Creature templates
UPDATE `creature_template` SET `difficulty_entry_1`=38139 WHERE `entry`=37531;
UPDATE `creature_template` SET `difficulty_entry_1`=38151 WHERE `entry`=37532;
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37533;
UPDATE `creature_template` SET `difficulty_entry_2`=0,`difficulty_entry_3`=0 WHERE `entry`=37534;
UPDATE `creature_template` SET `difficulty_entry_1`=38320,`difficulty_entry_2`=38321,`difficulty_entry_3`=38322 WHERE `entry`=36980;
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`unit_class`=1,`faction_A`=14,`faction_H`=14,`unit_flags`=`unit_flags`|33554432,`baseattacktime`=2000,`flags_extra`=`flags_extra`|128 WHERE `entry`=38223; -- Icy Blast
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=1,`faction_A`=2209,`faction_H`=2209,`dynamicflags`=8,`baseattacktime`=2000,`equipment_id`=523,`speed_walk`=1,`speed_run`=1.42857 WHERE `entry` IN (37531,38139); -- Frostwarden Handler
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=2,`faction_A`=16,`faction_H`=16,`dynamicflags`=8,`baseattacktime`=2000,`speed_run`=1 WHERE `entry` IN (37532,38151); -- Frostwing Whelp
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`unit_class`=2,`faction_A`=21,`faction_H`=21,`unit_flags`=`unit_flags`|64,`baseattacktime`=2000,`speed_walk`=2,`speed_run`=1.5873,`MovementType`=2,`InhabitType`=5 WHERE `entry` IN (37533,38220); -- Rimefang
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`unit_class`=2,`faction_A`=21,`faction_H`=21,`unit_flags`=`unit_flags`|64,`baseattacktime`=2000,`speed_walk`=2,`speed_run`=1.5873,`MovementType`=2,`InhabitType`=5 WHERE `entry` IN (37534,38219); -- Spinestalker
UPDATE `creature_template` SET `minlevel`=83,`maxlevel`=83,`unit_class`=1,`faction_A`=2068,`faction_H`=2068,`unit_flags`=0,`baseattacktime`=1500,`speed_walk`=4.8,`speed_run`=4.28571 WHERE `entry` IN (36853,38265,38266,38267); -- Sindragosa
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=2,`faction_A`=14,`faction_H`=14,`unit_flags`=`unit_flags`|33554944,`baseattacktime`=2000,`flags_extra`=`flags_extra`|128 WHERE `entry`=37186; -- Frost Bomb
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_class`=1,`faction_A`=14,`faction_H`=14,`baseattacktime`=2000,`speed_run`=1 WHERE `entry` IN (36980,38320,38321,38322); -- Ice Tomb
UPDATE `creature_template` SET `RegenHealth`=0 WHERE `entry` IN (36980,38320,38321,38322); -- Ice Tomb health regen

-- Linked respawns
SET @GUID := 151761;
SET @SPINESTALKER := 207211;
SET @RIMEFANG := 207210;
DELETE FROM `linked_respawn` WHERE guid IN (@SPINESTALKER,@RIMEFANG) OR `guid` BETWEEN @GUID+22 AND @GUID+51;
INSERT INTO `linked_respawn` (`guid`,`linkedGuid`,`linkType`) VALUES
(@SPINESTALKER,@SPINESTALKER,0), -- Spinestalker
(@RIMEFANG,@RIMEFANG,0), -- Rimefang
(@GUID+22,@SPINESTALKER,0), --  Frostwarden Handler
(@GUID+23,@RIMEFANG,0), --  Frostwarden Handler
(@GUID+24,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+25,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+26,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+27,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+28,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+29,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+30,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+31,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+32,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+33,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+34,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+35,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+36,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+37,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+38,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+39,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+40,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+41,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+42,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+43,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+44,@SPINESTALKER,0), --  Frostwing Whelp
(@GUID+45,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+46,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+47,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+48,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+49,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+50,@RIMEFANG,0), --  Frostwing Whelp
(@GUID+51,@RIMEFANG,0); --  Frostwing Whelp

-- Creature addon
UPDATE `creature_addon` SET `bytes1`=0 WHERE `guid` IN (@SPINESTALKER,@RIMEFANG);

-- Creature model data
UPDATE `creature_model_info` SET `gender`=1 WHERE `modelid`=30362;

-- Gameobject templates
UPDATE `gameobject_template` SET `flags`=33,`faction`=114 WHERE `entry`=202396; -- Ice Wall
UPDATE `gameobject_template` SET `flags`=32,`faction`=114 WHERE `entry`=201722; -- Ice Block

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `id`=202396;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(121712,202396,631,15,1,4309.686,2491.27441,211.170792,0.209439442,0,0,0,0,120,0,0); -- Ice Wall

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=70598;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`Comment`) VALUES
(13,70598,18,1, 'Sindragosa''s Fury - player targets');
-- Fragment of the Nightmare's Corruption drops 100% as of patch 3.0.2
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `item` IN (21146,21147,21148,21149);
-- Insert loot for Gently Shaken Gift
DELETE FROM `item_loot_template` WHERE `entry`=21271;
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(21271,21241,100,1,0,5,5);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12822,12996,12972,12989,12758,12955,13049,13060,13102,13133,13134,13135);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12822,11,0,0, 'achievement_all_you_can_eat'), -- All You Can Eat (10 player)
(12822,12,0,0, ''), -- All You Can Eat (10 player)
(12996,11,0,0, 'achievement_all_you_can_eat'), -- All You Can Eat (10 player) Heroic
(12996,12,2,0, ''), -- All You Can Eat (10 player) Heroic
(12972,11,0,0, 'achievement_all_you_can_eat'), -- All You Can Eat (25 player)
(12972,12,1,0, ''), -- All You Can Eat (25 player)
(12989,11,0,0, 'achievement_all_you_can_eat'), -- All You Can Eat (25 player) Heroic
(12989,12,3,0, ''), -- All You Can Eat (25 player) Heroic
(12758,12,0,0, ''), -- The Frostwing Halls (10 player) Sindragosa
(12955,12,1,0, ''), -- The Frostwing Halls (25 player) Sindragosa
(13049,12,2,0, ''), -- Heroic: The Frostwing Halls (10 player) Sindragosa
(13060,12,3,0, ''), -- Heroic: The Frostwing Halls (25 player) Sindragosa
(13102,12,0,0, ''), -- Sindragosa kills (Icecrown 10 player)
(13133,12,1,0, ''), -- Sindragosa kills (Icecrown 25 player)
(13134,12,2,0, ''), -- Sindragosa kills (Heroic Icecrown 10 player)
(13135,12,3,0, ''); -- Sindragosa kills (Heroic Icecrown 25 player)
DELETE FROM `areatrigger_scripts` WHERE `entry`=5604;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5604,'at_sindragosa_lair');
DELETE FROM `creature_text` WHERE `entry`=36853;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(36853,0,0, 'You are fools to have come to this place! The icy winds of Northrend will consume your souls!',1,0,0,0,0,17007, 'Sindragosa - SAY_AGGRO'),
(36853,1,0, 'Suffer, mortals, as your pathetic magic betrays you!',1,0,0,0,0,17014, 'Sindragosa - SAY_UNCHAINED_MAGIC'),
(36853,2,0, '%s prepares to unleash a wave of blistering cold!',3,0,0,0,0,0, 'Sindragosa - EMOTE_WARN_BLISTERING_COLD'),
(36853,3,0, 'Can you feel the cold hand of death upon your heart?',1,0,0,0,0,17013, 'Sindragosa - SAY_BLISTERING_COLD'),
(36853,4,0, 'Aaah! It burns! What sorcery is this?!',1,0,0,0,0,17015, 'Sindragosa - SAY_RESPITE_FOR_A_TORMENTED_SOUL'),
(36853,5,0, 'Your incursion ends here! None shall survive!',1,0,0,0,0,17012, 'Sindragosa - SAY_AIR_PHASE'),
(36853,6,0, 'Now feel my master''s limitless power and despair!',1,0,0,0,0,17016, 'Sindragosa - SAY_PHASE_2'),
(36853,7,0, '%s fires a frozen orb towards $N!',3,0,0,0,0,0, 'Sindragosa - EMOTE_WARN_FROZEN_ORB'),
(36853,8,0, 'Perish!',1,0,0,0,0,17008, 'Sindragosa - SAY_KILL 1'),
(36853,8,1, 'A flaw of mortality...',1,0,0,0,0,17009, 'Sindragosa - SAY_KILL 2'),
(36853,9,0, 'Enough! I tire of these games!',1,0,0,0,0,17011, 'Sindragosa - SAY_BERSERK'),
(36853,10,0, 'Free...at last...',1,0,0,0,0,17010, 'Sindragosa - SAY_DEATH');
UPDATE `creature_template` SET `ScriptName`='boss_sindragosa' WHERE `entry`=36853;
UPDATE `creature_template` SET `ScriptName`='npc_ice_tomb' WHERE `entry`=36980;
UPDATE `creature_template` SET `ScriptName`='npc_spinestalker' WHERE `entry`=37534;
UPDATE `creature_template` SET `ScriptName`='npc_rimefang_icc' WHERE `entry`=37533;
UPDATE `creature_template` SET `ScriptName`='npc_sindragosa_trash' WHERE `entry` IN (37531,37532);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (70117,70157);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(70117,70122,1, 'Sindragosa - Icy Grip'),
(70157,69700,2, 'Sindragosa - Ice Tomb resistance');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_frostwarden_handler_order_whelp';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_frostwarden_handler_focus_fire';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_rimefang_icy_blast';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_s_fury';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_unchained_magic';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_instability';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_frost_beacon';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_ice_tomb';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_ice_tomb_dummy';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_ice_tomb_trap';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_collision_filter';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(71357,'spell_frostwarden_handler_order_whelp'),
(71350,'spell_frostwarden_handler_focus_fire'),
(71376,'spell_rimefang_icy_blast'),
(70598,'spell_sindragosa_s_fury'),
(69762,'spell_sindragosa_unchained_magic'),
(69766,'spell_sindragosa_instability'),
(70126,'spell_sindragosa_frost_beacon'),
(69712,'spell_sindragosa_ice_tomb'),
(69675,'spell_sindragosa_ice_tomb_dummy'),
(70157,'spell_sindragosa_ice_tomb_trap'),
(69845,'spell_sindragosa_collision_filter'),
(71053,'spell_sindragosa_collision_filter'),
(71054,'spell_sindragosa_collision_filter'),
(71055,'spell_sindragosa_collision_filter'),
(70127,'spell_sindragosa_collision_filter'),
(72528,'spell_sindragosa_collision_filter'),
(72529,'spell_sindragosa_collision_filter'),
(72530,'spell_sindragosa_collision_filter'),
(70117,'spell_sindragosa_collision_filter');

-- Teleports
DELETE FROM `npc_text` WHERE `id` BETWEEN 800000 AND 800006;
INSERT INTO `npc_text` (`id`, `text0_0`) VALUES
(800000, 'Teletransporte al Martillo de Luz'),
(800001, 'Teletransporte a Oratorio de los Malditos'), 
(800002, 'Teletransporte a Muralla de las Calaveras'),
(800003, 'Teletransporte a Alto de Libramorte'),
(800004, 'Teletransporte a la Aguja Superior'),
(800005, 'Teletransporte a la Guarida de Sindragosa'),
(800006, 'Teletransporte al Trono Helado');
DELETE FROM `locales_npc_text` WHERE `entry` BETWEEN 800000 AND 800006;
INSERT INTO `locales_npc_text` (`entry`, `Text0_0_loc8`) VALUES
(800000, 'Молот света'),
(800001, 'Молельня проклятых'),
(800002, 'Черепной вал'),
(800003, 'Подъем смертоносного'),
(800004, 'Шпиль'),
(800005, 'Логово Королевы Льда'),
(800006, 'Ледяной трон');

-- Traps
UPDATE `gameobject_template` SET `ScriptName` = 'go_icc_spirit_alarm' WHERE `entry` IN (201814, 201815, 201816, 201817);
DELETE FROM `creature_addon` WHERE `guid` IN (93950, 101906, 101936, 101937, 101939, 101951, 101995, 101996, 115554, 115555, 115742, 115743);
DELETE FROM `waypoint_scripts` WHERE `dataint` = 38879;
DELETE FROM `waypoint_data` WHERE `action` IN (716, 717, 718, 719, 70, 721, 722, 747, 748, 749, 750);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (70536, 70545, 70546, 70547);
INSERT INTO `spell_script_names` VALUES
(70546, 'spell_icc_spirit_alarm'),
(70536, 'spell_icc_spirit_alarm'),
(70545, 'spell_icc_spirit_alarm'),
(70547, 'spell_icc_spirit_alarm');
REPLACE INTO `spell_script_names` VALUES (70461, 'spell_coldflame_trap');
UPDATE `gameobject_template` SET `ScriptName` = 'go_icc_plagueworks_valve' WHERE `entry` IN (201615, 201616);

-- The Lich King
DELETE FROM `areatrigger_teleport` WHERE `id` = 5718;
UPDATE `creature_template` SET `ScriptName` = 'npc_shambling_horror_icc' WHERE `entry` = 37698;
UPDATE `creature_template` SET `ScriptName` = 'npc_raging_spirit_icc' WHERE `entry` = 36701;
REPLACE INTO `spell_script_names` VALUES
(72743, 'spell_lich_king_defile'),
(72429, 'spell_lich_king_tirion_mass_resurrection'),
(74115, 'spell_lich_king_pain_and_suffering'),
(70501, 'spell_vile_spirit_target_search'),
(68576, 'spell_valkyr_eject_passenger'),
(69030, 'spell_valkyr_target_search'),
(72133, 'spell_lich_king_pain_and_suffering_effect'),
(73789, 'spell_lich_king_pain_and_suffering_effect'),
(73788, 'spell_lich_king_pain_and_suffering_effect'),
(73790, 'spell_lich_king_pain_and_suffering_effect'),
(70498, 'spell_lich_king_vile_spirit_summon'),
(70500, 'spell_lich_king_vile_spirit_summon_visual'),
(68980, 'spell_lich_king_harvest_soul'),
(74325, 'spell_lich_king_harvest_soul');
UPDATE `creature_template` SET `ScriptName` = 'npc_ice_sphere_icc' WHERE `entry` = 36633;
UPDATE `creature_template` SET `ScriptName` = 'npc_defile_icc' WHERE `entry` = 38757;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` IN (36609, 39120, 39121, 39122);
UPDATE `creature_template` SET `vehicleid` = 533 WHERE `entry` IN (36609, 39120, 39121, 39122);
UPDATE `creature` SET `position_z` = 1040 WHERE `id` = 22515 AND `map` = 631;
UPDATE `creature_template` SET `modelid1` = 11686 WHERE `entry` IN (36633, 39305, 39306, 39307);
-- Make Invisible Stalker really invisible
UPDATE `creature_template` SET `modelid1` = 11686 WHERE `entry` = 15214;
-- Add Frostmourne platform
REPLACE INTO `gameobject` VALUES (512171,202161,631,15,1,  495.708,-2523.75,1045.95,  3.14159, 7.7568, 0,0,0,604800,100,1);
UPDATE `creature` SET `id` = 36823, `modelid` = 0, `curhealth` = 0, `spawntimesecs` = '604800' WHERE `guid` = 86812;
UPDATE `creature` SET `id` = 36824, `modelid` = 0, `curhealth` = 0, `spawntimesecs` = '604800' WHERE `guid` = 86813;
UPDATE `creature_template` SET `ScriptName` = 'npc_terenas_fighter_icc' WHERE `entry` = 36823;
UPDATE `creature_template` SET `ScriptName` = 'npc_spirit_warden_icc' WHERE `entry` = 36824;
UPDATE `creature_template` SET `dmg_multiplier` = 52 WHERE `entry` = 36824; -- Spirit Warden
UPDATE `creature_template` SET `dmg_multiplier` = 35 WHERE `entry` = 36823; -- Terenas Menethil
-- Achievement criteria for The Lich King
-- Bane of the Fallen King (10 player heroic) 
-- Realm First! Fall of the Lich King (25 player heroic) 
-- The Frozen Throne (10 player) 
-- The Frozen Throne (25 player) 
-- The Light of Dawn (25 player heroic)
DELETE FROM `achievement_criteria_data` where `criteria_id` IN (12825,12818,12764,12909,12826);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(12825, 12, 2, 0, ''),
(12818, 12, 3, 0, ''),
(12764, 12, 0, 0, ''),
(12909, 12, 1, 0, ''),
(12826, 12, 3, 0, '');

-- Icecrown Citadel trash
UPDATE `creature_template` SET `ScriptName` = 'npc_deathspeaker_high_priest' WHERE `entry` = 36829;
UPDATE `creature_template` SET `ScriptName` = 'npc_val_kyr_herald' WHERE `entry` = 37098;
UPDATE `creature_template` SET `ScriptName` = 'npc_severed_essence' WHERE `entry` = 38410;
REPLACE INTO `spell_script_names` VALUES (69483, 'spell_icc_dark_reckoning');
DELETE FROM `spell_script_names` WHERE `spell_id` = 26678;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (26678,'spell_item_create_heart_candy');
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`exp`=2,`unit_class`=1,`faction_A`=16,`faction_H`=16,`baseattacktime`=2000,`unit_flags`=33280,`speed_run`=0.9920629 WHERE `entry`=38494; -- Rotting Frost Giant
DELETE FROM `creature_text` WHERE `entry` IN (38490,38494);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(38490,0,0, '$n is infected with the Death Plague!',3,0,100,25,0,0, 'Rotting Frost Giant - Death Plague'),
(38494,0,0, '$n is infected with the Death Plague!',3,0,100,25,0,0, 'Rotting Frost Giant - Death Plague');
UPDATE `creature_template` SET `ScriptName`='npc_rotting_frost_giant' WHERE `entry` IN (38490,38494);
DELETE FROM `spell_script_names` WHERE `spell_id` = 72864;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (72864,'spell_frost_giant_death_plague');
UPDATE `creature_template` SET `ScriptName` = 'npc_the_damned' WHERE `entry` = 37011;
UPDATE `creature_template` SET `ScriptName` = 'npc_servant_of_the_throne' WHERE `entry` = 36724;
UPDATE `creature_template` SET `ScriptName` = 'npc_blighted_abomination' WHERE `entry` = 37022;
UPDATE `creature_template` SET `ScriptName` = 'npc_plague_scientist' WHERE `entry` = 37023;
UPDATE `creature_template` SET `ScriptName` = 'npc_decaying_colossus' WHERE `entry` = 36880;
UPDATE `creature_template` SET `ScriptName` = 'npc_pustulating_horror' WHERE `entry` = 10404;
UPDATE `creature_template` SET `ScriptName` = 'npc_ancient_skeletal_soldier' WHERE `entry` = 37012;
DELETE FROM `spell_script_names` WHERE `spell_id` = 70964;
INSERT INTO `spell_script_names` VALUES (70964, 'spell_valithria_vigor'); -- Just to ensure that auras stack
-- Set immunes on Spinestalker, Rimefang, Stinky, Precious, Decaying Colossus, Sister Svalna, Deathbound Ward
UPDATE `creature_template` SET `mechanic_immune_mask` = 667631615 WHERE `entry` IN (37533, 37534, 38219, 38220, 37217, 38103, 37025, 38064, 36880, 37655, 37126, 38258, 37007, 38031);
-- Setting current health of Princes
UPDATE `creature` SET `curhealth` = 1 WHERE `id` IN (37970, 38401, 38784, 38785, 37972, 38399, 38769, 37973, 38400, 38771);

-- DELETE FROM `creature_template` WHERE `entry` IN (37970, 37972, 37973, 38401, 38784, 38785, 38399, 38769, 38770, 38400, 38771, 38772);
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('37970','38401','38784','38785','0','0','30858','0','0','0','Prince Valanar','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','35','0','0','1','536904000','8','0','0','0','0','0','371','535','135','6','108','37970','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','405','1','1','0','0','0','0','0','0','0','150','0','10092','0','1','boss_prince_valanar_icc','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('37972','38399','38769','38770','0','0','30857','0','0','0','Prince Keleseth','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','35','0','0','1','536904000','8','0','0','0','0','0','371','535','135','6','108','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','405','1','1','0','0','0','0','0','0','0','150','0','10077','0','1','boss_prince_keleseth_icc','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('37973','38400','38771','38772','0','0','30856','0','0','0','Prince Taldaram','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','35','0','0','1','536904000','8','0','0','0','0','0','371','535','135','6','108','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','405','1','1','0','0','0','0','0','0','0','150','0','10091','0','1','boss_prince_taldaram_icc','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('38399','0','0','0','0','0','30857','0','0','0','Prince Keleseth (1)','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','70','0','0','1','536904000','8','0','0','0','0','0','371','535','135','6','108','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1620','1','1','0','0','0','0','0','0','0','150','0','10077','0','1','','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('38400','0','0','0','0','0','30856','0','0','0','Prince Taldaram (1)','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','70','0','0','1','536904000','8','0','0','0','0','0','371','535','135','6','108','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1620','1','1','0','0','0','0','0','0','0','150','0','10091','0','1','','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('38401','0','0','0','0','0','30858','0','0','0','Prince Valanar (1)','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','35','2000','2000','1','536904000','8','0','0','0','0','0','371','535','100','6','108','38401','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1620','1','1','0','0','0','0','0','0','0','150','0','10092','0','1','','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('38769','0','0','0','0','0','30857','0','0','0','Prince Keleseth (2)','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','35','0','0','1','536904000','8','0','0','0','0','0','371','535','135','6','108','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','546.75','1','1','0','0','0','0','0','0','0','150','0','10077','0','1','','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('38770','0','0','0','0','0','30857','0','0','0','Prince Keleseth (3)','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','35','0','0','1','536904000','8','0','0','0','0','0','371','535','135','6','108','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','2187','1','1','0','0','0','0','0','0','0','150','0','10077','0','1','','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('38771','0','0','0','0','0','30856','0','0','0','Prince Taldaram (2)','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','35','0','0','1','536904000','8','0','0','0','0','0','371','535','135','6','108','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','546.75','1','1','0','0','0','0','0','0','0','150','0','10091','0','1','','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('38772','0','0','0','0','0','30856','0','0','0','Prince Taldaram (3)','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','35','0','0','1','536904000','8','0','0','0','0','0','371','535','135','6','108','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','2187','1','1','0','0','0','0','0','0','0','150','0','10091','0','1','','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('38784','0','0','0','0','0','30858','0','0','0','Prince Valanar (2)','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','35','2000','2000','1','536904000','8','0','0','0','0','0','371','535','100','6','108','38784','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','546.75','1','1','0','0','0','0','0','0','0','150','0','10092','0','1','','12340');
-- INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values('38785','0','0','0','0','0','30858','0','0','0','Prince Valanar (3)','','','0','83','83','2','16','16','0','1.6','1.42857','1','3','509','683','0','805','35','2000','2000','1','536904000','8','0','0','0','0','0','371','535','100','6','108','38785','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','2187','1','1','0','0','0','0','0','0','0','150','0','10092','0','1','','12340');
-- DELETE  FROM `creature` WHERE `id` IN (37970, 37972, 37973);
-- INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('201577','37970','631','15','1','0','0','4680.29','2769.24','364.17','3.14159','86400','0','0','1','0','0','0','0','0','0');
-- INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('201493','37972','631','15','1','0','0','4682.73','2783.42','364.17','3.14159','86400','0','0','1','0','0','0','0','0','0');
-- INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values('201286','37973','631','15','1','0','0','4682.89','2755.11','364.17','3.14159','86400','0','0','1','0','0','0','0','0','0');
-- UPDATE `creature_template` SET `equipment_id` = 0 where `Entry` IN (37970,37972,37973,38399,38400,38401,38769,38770,38771,38772,38784,38785); 
DELETE FROM `creature_addon` WHERE `GUID` IN (82289,88387,95000,138237,13828,138239,138287,138288,138289); 
DELETE FROM `conditions` WHERE `SourceEntry` IN (62912,62910,62297,62907,65667,63475,62549,62546);
UPDATE `creature_template` SET `lootid`='37970' WHERE `entry`=37973;
UPDATE `creature_template` SET `lootid`='37970' WHERE `entry`=37972;
UPDATE `creature_template` SET `lootid`='38401' WHERE `entry`=38400;
UPDATE `creature_template` SET `lootid`='38401' WHERE `entry`=38399;
UPDATE `creature_template` SET `lootid`='38784' WHERE `entry`=38771;
UPDATE `creature_template` SET `lootid`='38784' WHERE `entry`=38769;
UPDATE `creature_template` SET `lootid`='38785' WHERE `entry`=38772;
UPDATE `creature_template` SET `lootid`='38785' WHERE `entry`=38770;
UPDATE `creature_template` SET `dynamicflags`='9' WHERE `entry` IN (37973, 37972, 38400, 38399, 38771, 38769, 38772, 38770);

-- Deathbringer Saurfang from TrinityCore
REPLACE INTO `spell_script_names` VALUES
( 72202, 'spell_deathbringer_blood_link'),
( 72178, 'spell_deathbringer_blood_link_aura'),
( 72371, 'spell_deathbringer_blood_power'),
( 72409, 'spell_deathbringer_rune_of_blood'),
( 72447, 'spell_deathbringer_rune_of_blood'),
( 72448, 'spell_deathbringer_rune_of_blood'),
( 72449, 'spell_deathbringer_rune_of_blood'),
( 72380, 'spell_deathbringer_blood_nova'),
( 72438, 'spell_deathbringer_blood_nova'),
( 72439, 'spell_deathbringer_blood_nova'),
( 72440, 'spell_deathbringer_blood_nova');
UPDATE `creature_template` SET `ScriptName`='boss_deathbringer_saurfang' WHERE `entry`=37813;
UPDATE `creature_template` SET `ScriptName`='npc_high_overlord_saurfang_icc' WHERE `entry`=37187;
UPDATE `creature_template` SET `ScriptName`='npc_muradin_bronzebeard_icc' WHERE `entry`=37200;
UPDATE `creature_template` SET `ScriptName`='npc_saurfang_event' WHERE `entry` IN (37920,37830);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12778,13036,13035,13037) AND `type` IN (0,11);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12778,13036,13035,13037) AND `type` IN (0,11);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12778,11,0,0, 'achievement_ive_gone_and_made_a_mess'),
(13036,11,0,0, 'achievement_ive_gone_and_made_a_mess'),
(13035,11,0,0, 'achievement_ive_gone_and_made_a_mess'),
(13037,11,0,0, 'achievement_ive_gone_and_made_a_mess');
-- [10468] ICC texts (Shauren)
DELETE FROM `creature_text` WHERE `entry` IN (36612,36626,36627,36678,36855,37187,37188,37200,37813,37879,37970,37972,37973,38004);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`sound`,`language`,`probability`,`emote`,`duration`,`comment`) VALUES
(36612,0,0,'This is the beginning AND the end, mortals. None may enter the master''s sanctum!',1,16950,0,0,0,0,'Lord Marrowgar - SAY_ENTER_ZONE'),
(36612,1,0,'The Scourge will wash over this world as a swarm of death and destruction!',1,16941,0,0,0,0,'Lord Marrowgar - SAY_AGGRO'),
(36612,2,0,'BONE STORM!',1,16946,0,0,0,0,'Lord Marrowgar - SAY_BONE_STORM'),
(36612,3,0,'Bound by bone!',1,16947,0,0,0,0,'Lord Marrowgar - SAY_BONESPIKE_1'),
(36612,3,1,'Stick Around!',1,16948,0,0,0,0,'Lord Marrowgar - SAY_BONESPIKE_2'),
(36612,3,2,'The only escape is death!',1,16949,0,0,0,0,'Lord Marrowgar - SAY_BONESPIKE_3'),
(36612,4,0,'More bones for the offering!',1,16942,0,0,0,0,'Lord Marrowgar - SAY_KILL_1'),
(36612,4,1,'Languish in damnation!',1,16943,0,0,0,0,'Lord Marrowgar - SAY_KILL_2'),
(36612,5,0,'I see... only darkness...',1,16944,0,0,0,0,'Lord Marrowgar - SAY_DEATH'),
(36612,6,0,'THE MASTER''S RAGE COURSES THROUGH ME!',1,16945,0,0,0,0,'Lord Marrowgar - SAY_BERSERK'),
(36612,7,0,'Lord Marrowgar creates a whirling storm of bone!',3,0,0,0,0,0,'Lord Marrowgar - SAY_BONE_STORM_EMOTE'),
(36626,0,0,'NOOOO! You kill Stinky! You pay!',1,16907,0,0,0,0,'Festergut - SAY_STINKY_DEAD'),
(36626,1,0,'Fun time!',1,16901,0,0,0,0,'Festergut - SAY_AGGRO'),
(36626,2,0,'%s farts.',2,16911,0,0,0,0,'Festergut - EMOTE_GAS_SPORE'),
(36626,3,0,'%s releases Gas Spores!',3,0,0,0,0,0,'Festergut - EMOTE_WARN_GAS_SPORE'),
(36626,4,0,'Gyah! Uhhh, I not feel so good...',1,16906,0,0,0,0,'Festergut - SAY_PUNGENT_BLIGHT'),
(36626,5,0,'%s begins to cast |cFFFF7F00Pungent Blight!|r',3,0,0,0,0,0,'Festergut - EMOTE_WARN_PUNGENT_BLIGHT'),
(36626,6,0,'%s vomits.',2,0,0,0,0,0,'Festergut - EMOTE_PUNGENT_BLIGHT'),
(36626,7,0,'Daddy, I did it!',1,16902,0,0,0,0,'Festergut - SAY_KILL_1'),
(36626,7,1,'Dead, dead, dead!',1,16903,0,0,0,0,'Festergut - SAY_KILL_2'),
(36626,8,0,'Fun time over!',1,16905,0,0,0,0,'Festergut - SAY_BERSERK'),
(36626,9,0,'Da ... Ddy...',1,16904,0,0,0,0,'Festergut - SAY_DEATH'),
(36627,0,0,'What? Precious? Noooooooooo!!!',1,16993,0,0,0,0,'Rotface - SAY_PRECIOUS_DIES'),
(36627,1,0,'WEEEEEE!',1,16986,0,0,0,0,'Rotface - SAY_AGGRO'),
(36627,2,0,'%s begins to cast Slime Spray!',3,0,0,0,0,0,'Rotface - EMOTE_SLIME_SPRAY'),
(36627,3,0,'Icky sticky.',1,16991,0,0,0,0,'Rotface - SAY_SLIME_SPRAY'),
(36627,4,0,'|TInterfaceIconsspell_shadow_unstableaffliction_2.blp:16|t%s begins to cast |cFFFF0000Unstable Ooze Explosion!|r',3,0,0,0,0,0,'Rotface - EMOTE_UNSTABLE_EXPLOSION'),
(36627,5,0,'I think I made an angry poo-poo. It gonna blow!',1,16992,0,0,0,0,'Rotface - SAY_UNSTABLE_EXPLOSION'),
(36627,6,0,'Daddy make toys out of you!',1,16988,0,0,0,0,'Rotface - SAY_KILL_1'),
(36627,6,1,'I brokes-ded it...',1,16987,0,0,0,0,'Rotface - SAY_KILL_2'),
(36627,7,0,'Sleepy Time!',1,16990,0,0,0,0,'Rotface - SAY_BERSERK'),
(36627,8,0,'Bad news daddy...',1,16989,0,0,0,0,'Rotface - SAY_DEATH'),
(36678,0,0,'Just an ordinary gas cloud. But watch out, because that''s no ordinary gas cloud!',1,17119,0,0,432,0,'Professor Putricide - SAY_GASEOUS_BLIGHT'),
(36678,1,0,'Oh, Festergut. You were always my favorite. Next to Rotface. The good news is you left behind so much gas, I can practically taste it!',1,17124,0,0,0,0,'Professor Putricide - SAY_FESTERGUT_DEATH'),
(36678,2,0,'Great news, everyone! The slime is flowing again!',1,17126,0,0,1,0,'Professor Putricide - SAY_ROTFACE_OOZE_FLOOD1'),
(36678,2,1,'Good news, everyone! I''ve fixed the poison slime pipes!',1,17123,0,0,1,0,'Professor Putricide - SAY_ROTFACE_OOZE_FLOOD2'),
(36678,3,0,'Terrible news, everyone, Rotface is dead! But great news everyone, he left behind plenty of ooze for me to use! Whaa...? I''m a poet, and I didn''t know it? Astounding!',1,17146,0,0,0,0,'Professor Putricide - SAY_ROTFACE_DEATH'),
(36678,4,0,'Good news, everyone! I think I perfected a plague that will destroy all life on Azeroth!',1,17114,0,0,0,0,'Professor Putricide - SAY_AGGRO'),
(36678,5,0,'%s begins to cast Unstable Experiment!',3,0,0,0,0,0,'Professor Putricide - EMOTE_UNSTABLE_EXPERIMENT'),
(36678,6,0,'Two oozes, one room! So many delightful possibilities...',1,17122,0,0,0,0,'Professor Putricide - SAY_PHASE_TRANSITION_HEROIC'),
(36678,7,0,'Hmm. I don''t feel a thing. Whaa...? Where''d those come from?',1,17120,0,0,15,0,'Professor Putricide - SAY_TRANSFORM_1'),
(36678,8,0,'Tastes like... Cherry! Oh! Excuse me!',1,17121,0,0,15,0,'Professor Putricide - SAY_TRANSFORM_2'),
(36678,9,0,'|TInterfaceIconsinv_misc_herb_evergreenmoss.blp:16|t%s cast |cFF00FF00Malleable Goo!|r',3,0,0,0,0,0,'Professor Putricide - EMOTE_MALLEABLE_GOO'),
(36678,10,0,'%s cast |cFFFF7F00Choking Gas Bomb!|r',3,0,0,0,0,0,'Professor Putricide - EMOTE_CHOKING_GAS_BOMB'),
(36678,11,0,'Hmm... Interesting...',1,17115,0,0,0,0,'Professor Putricide - SAY_KILL_1'),
(36678,11,1,'That was unexpected!',1,17116,0,0,0,0,'Professor Putricide - SAY_KILL_2'),
(36678,12,0,'Great news, everyone!',1,17118,0,0,0,0,'Professor Putricide - SAY_BERSERK'),
(36678,13,0,'Bad news, everyone! I don''t think I''m going to make it.',1,17117,0,0,0,0,'Professor Putricide - SAY_DEATH'),
(36855,0,0,'You have found your way here, because you are among the few gifted with true vision in a world cursed with blindness.',1,17272,0,0,0,0,'Lady Deathwhisper - SAY_INTRO_1'),
(36855,1,0,'You can see through the fog that hangs over this world like a shroud, and grasp where true power lies.',1,17273,0,0,0,0,'Lady Deathwhisper - SAY_INTRO_2'),
(36855,2,0,'Fix your eyes upon your crude hands: the sinew, the soft meat, the dark blood coursing within.',1,16878,0,0,0,0,'Lady Deathwhisper - SAY_INTRO_3'),
(36855,3,0,'It is a weakness; a crippling flaw.... A joke played by the Creators upon their own creations.',1,17268,0,0,0,0,'Lady Deathwhisper - SAY_INTRO_4'),
(36855,4,0,'The sooner you come to accept your condition as a defect, the sooner you will find yourselves in a position to transcend it.',1,17269,0,0,0,0,'Lady Deathwhisper - SAY_INTRO_5'),
(36855,5,0,'Through our Master, all things are possible. His power is without limit, and his will unbending.',1,17270,0,0,0,0,'Lady Deathwhisper - SAY_INTRO_6'),
(36855,6,0,'Those who oppose him will be destroyed utterly, and those who serve -- who serve wholly, unquestioningly, with utter devotion of mind and soul -- elevated to heights beyond your ken.',1,17271,0,0,0,0,'Lady Deathwhisper - SAY_INTRO_7'),
(36855,7,0,'What is this disturbance?! You dare trespass upon this hallowed ground? This shall be your final resting place.',1,16868,0,0,0,0,'Lady Deathwhisper - SAY_AGGRO'),
(36855,8,0,'Enough! I see I must take matters into my own hands!',1,16877,0,0,0,0,'Lady Deathwhisper - SAY_PHASE_2'),
(36855,9,0,'%s''s Mana Barrier shimmers and fades away!',3,0,0,0,0,0,'Lady Deathwhisper - SAY_PHASE_2_EMOTE'),
(36855,10,0,'You are weak, powerless to resist my will!',1,16876,0,0,0,0,'Lady Deathwhisper - SAY_DOMINATE_MIND'),
(36855,11,0,'Take this blessing and show these intruders a taste of our master''s power.',1,16873,0,0,0,0,'Lady Deathwhisper - SAY_DARK_EMPOWERMENT'),
(36855,12,0,'I release you from the curse of flesh!',1,16874,0,0,0,0,'Lady Deathwhisper - SAY_DARK_TRANSFORMATION'),
(36855,13,0,'Arise and exult in your pure form!',1,16875,0,0,0,0,'Lady Deathwhisper - SAY_ANIMATE_DEAD'),
(36855,14,0,'Do you yet grasp of the futility of your actions?',1,16869,0,0,0,0,'Lady Deathwhisper - SAY_KILL_1'),
(36855,14,1,'Embrace the darkness... Darkness eternal!',1,16870,0,0,0,0,'Lady Deathwhisper - SAY_KILL_2'),
(36855,15,0,'This charade has gone on long enough.',1,16872,0,0,0,0,'Lady Deathwhisper - SAY_BERSERK'),
(36855,16,0,'All part of the masters plan! Your end is... inevitable!',1,16871,0,0,0,0,'Lady Deathwhisper - SAY_DEATH'),
(37187,0,0,'Kor''kron, move out! Champions, watch your backs. The Scourge have been...',1,17103,0,0,22,0,'High Overlord Saurfang - SAY_INTRO_HORDE_1'),
(37187,1,0,'My boy died at the Wrath Gate. I am here only to collect his body.',0,17097,0,0,397,0,'High Overlord Saurfang - SAY_INTRO_HORDE_3'),
(37187,2,0,'We named him Dranosh. It means \"Heart of Draenor\" in orcish. I would not let the warlocks take him. My boy would be safe, hidden away by the elders of Garadar.',0,17098,0,0,1,0,'High Overlord Saurfang - SAY_INTRO_HORDE_5'),
(37187,3,0,'I made a promise to his mother before she died; that I would cross the Dark Portal alone - whether I lived or died, my son would be safe. Untainted...',0,17099,0,0,1,0,'High Overlord Saurfang - SAY_INTRO_HORDE_6'),
(37187,4,0,'Today, I fulfill that promise.',0,17100,0,0,397,0,'High Overlord Saurfang - SAY_INTRO_HORDE_7'),
(37187,5,0,'High Overlord Saurfang charges!',2,17104,0,0,53,0,'High Overlord Saurfang - SAY_INTRO_HORDE_8'),
(37187,6,0,'Behind you lies the body of my only son. Nothing will keep me from him.',0,17094,0,0,0,0,'High Overlord Saurfang - SAY_OUTRO_ALLIANCE_8'),
(37187,7,0,'High Overlord Saurfang walks over to his son and kneels before his son''s body.',2,0,0,0,0,0,'High Overlord Saurfang - SAY_OUTRO_ALLIANCE_12'),
(37187,8,0,'[Orcish] No''ku kil zil''nok ha tar.',0,17096,0,0,0,0,'High Overlord Saurfang - SAY_OUTRO_ALLIANCE_13'),
(37187,9,0,'Higher Overlord Saurfang picks up the body of his son and walks over towards Varian',2,0,0,0,0,0,'High Overlord Saurfang - SAY_OUTRO_ALLIANCE_14'),
(37187,10,0,'I will not forget this... kindness. I thank you, Highness',0,17095,0,0,0,0,'High Overlord Saurfang - SAY_OUTRO_ALLIANCE_15'),
(37187,11,0,'%s coughs.',2,17105,0,0,0,0,'High Overlord Saurfang - SAY_OUTRO_HORDE_1'),
(37187,12,0,'%s weeps over the corpse of his son.',2,17106,0,0,15,0,'High Overlord Saurfang - SAY_OUTRO_HORDE_2'),
(37187,13,0,'You will have a proper ceremony in Nagrand next to the pyres of your mother and ancestors.',0,17101,0,0,0,0,'High Overlord Saurfang - SAY_OUTRO_HORDE_3'),
(37187,14,0,'Honor, young heroes... no matter how dire the battle... Never forsake it!',0,17102,0,0,0,0,'High Overlord Saurfang - SAY_OUTRO_HORDE_4'),
(37188,0,0,'%s cries.',2,16651,0,0,18,0,'Lady Jaina Proudmoore - SAY_OUTRO_ALLIANCE_17'),
(37188,1,0,'It was nothing, your majesty. Just... I''m proud of my king.',0,16652,0,0,0,0,'Lady Jaina Proudmoore - SAY_OUTRO_ALLIANCE_19'),
(37200,0,0,'Let''s get a move on then! Move ou...',1,16974,0,0,0,0,'Muradin Bronzebeard - SAY_INTRO_ALLIANCE_1'),
(37200,1,0,'A lone orc against the might of the Alliance???',1,16970,0,0,0,0,'Muradin Bronzebeard - SAY_INTRO_ALLIANCE_4'),
(37200,2,0,'Charge!!!',1,16971,0,0,0,0,'Muradin Bronzebeard - SAY_INTRO_ALLIANCE_5'),
(37200,3,0,'%s gasps for air.',2,16975,0,0,0,0,'Muradin Bronzebeard - SAY_OUTRO_ALLIANCE_1'),
(37200,4,0,'That was Saurfang''s boy - the Horde commander at the Wrath Gate. Such a tragic end...',0,16976,0,0,0,0,'Muradin Bronzebeard - SAY_OUTRO_ALLIANCE_2'),
(37200,5,0,'What in the... There, in the distance!',0,16977,0,0,0,0,'Muradin Bronzebeard - SAY_OUTRO_ALLIANCE_3'),
(37200,6,0,'A Horde Zeppelin flies up to the rise.',2,0,0,0,0,0,'Muradin Bronzebeard - SAY_OUTRO_ALLIANCE_4'),
(37200,7,0,'Soldiers, fall in! Looks like the Horde are comin'' to take another shot!',1,16978,0,0,0,0,'Muradin Bronzebeard - SAY_OUTRO_ALLIANCE_5'),
(37200,8,0,'The Zeppelin docks, and High Overlord Saurfang hops out, confronting the Alliance soldiers and Muradin',2,0,0,0,0,0,'Muradin Bronzebeard - SAY_OUTRO_ALLIANCE_6'),
(37200,9,0,'Don''t force me hand, orc. We can''t let ye pass.',0,16972,0,0,0,0,'Muradin Bronzebeard - SAY_OUTRO_ALLIANCE_7'),
(37200,10,0,'I... I can''t do it. Get back on yer ship and we''ll spare yer life.',0,16973,0,0,0,0,'Muradin Bronzebeard - SAY_OUTRO_ALLIANCE_9'),
(37200,11,0,'A mage portal from Stormwind appears between the two and Varian Wrynn and Jaina Proudmoore emerge.',2,0,0,0,0,0,'Muradin Bronzebeard - SAY_OUTRO_ALLIANCE_10'),
(37200,12,0,'Right away, yer majesty!',0,16979,0,0,0,0,'Muradin Bronzebeard - SAY_OUTRO_ALLIANCE_21'),
(37813,0,0,'For every Horde soldier that you killed -- for every Alliance dog that fell, the Lich King''s armies grew. Even now the val''kyr work to raise your fallen as Scourge.',1,16701,0,0,0,0,'Deathbringer Saurfang - SAY_INTRO_ALLIANCE_2'),
(37813,1,0,'Things are about to get much worse. Come, taste the power that the Lich King has bestowed upon me!',1,16702,0,0,0,0,'Deathbringer Saurfang - SAY_INTRO_ALLIANCE_3'),
(37813,2,0,'Dwarves...',1,16703,0,0,0,0,'Deathbringer Saurfang - SAY_INTRO_ALLIANCE_6'),
(37813,3,0,'%s immobilizes Muradin and his guards.',2,0,0,0,0,0,'Deathbringer Saurfang - SAY_INTRO_ALLIANCE_7'),
(37813,4,0,'Join me, father. Join me and we will crush this world in the name of the Scourge -- for the glory of the Lich King!',1,16704,0,0,0,0,'Deathbringer Saurfang - SAY_INTRO_HORDE_2'),
(37813,5,0,'Stubborn and old. What chance do you have? I am stronger, and more powerful than you ever were.',1,16705,0,0,5,0,'Deathbringer Saurfang - SAY_INTRO_HORDE_4'),
(37813,6,0,'Pathetic old orc. Come then heroes. Come and face the might of the Scourge!',1,16706,0,0,15,0,'Deathbringer Saurfang - SAY_INTRO_HORDE_9'),
(37813,7,0,'BY THE MIGHT OF THE LICH KING!',1,16694,0,0,0,0,'Deathbringer Saurfang - SAY_AGGRO'),
(37813,8,0,'The ground runs red with your blood!',1,16699,0,0,0,0,'Deathbringer Saurfang - SAY_MARK_OF_THE_FALLEN_CHAMPION'),
(37813,9,0,'Feast, my minions!',1,16700,0,0,0,0,'Deathbringer Saurfang - SAY_BLOOD_BEASTS'),
(37813,10,0,'You are nothing!',1,16695,0,0,0,0,'Deathbringer Saurfang - SAY_KILL_1'),
(37813,10,1,'Your soul will find no redemption here!',1,16696,0,0,0,0,'Deathbringer Saurfang - SAY_KILL_2'),
(37813,11,0,'%s goes into frenzy!',3,0,0,0,0,0,'Deathbringer Saurfang - SAY_FRENZY'),
(37813,12,0,'I have become...DEATH!',1,16698,0,0,0,0,'Deathbringer Saurfang - SAY_BERSERK'),
(37813,13,0,'I... Am... Released.',1,16697,0,0,0,0,'Deathbringer Saurfang - SAY_DEATH'),
(37879,0,0,'Stand down, Muradin. Let a grieving father pass.',0,16690,0,0,0,0,'King Varian Wrynn - SAY_OUTRO_ALLIANCE_11'),
(37879,1,0,'I... I was not at the Wrath Gate, but the soldiers who survived told me much of what happened. Your son fought with honor. He died a hero''s death. He deserves a hero''s burial.',0,16691,0,0,0,0,'King Varian Wrynn - SAY_OUTRO_ALLIANCE_16'),
(37879,2,0,'Jaina? Why are you crying?',0,16692,0,0,0,0,'King Varian Wrynn - SAY_OUTRO_ALLIANCE_18'),
(37879,3,0,'Bah! Muradin, secure the deck and prepare our soldiers for an assault on the upper citadel. I''ll send out another regiment from Stormwind.',0,16693,0,0,0,0,'King Varian Wrynn - SAY_OUTRO_ALLIANCE_20'),
(37970,0,0,'Naxxanar was merely a setback! With the power of the orb, Valanar will have his vengeance!',1,16685,0,0,0,0,'Prince Valanar - SAY_VALANAR_INVOCATION'),
(37970,1,0,'Invocation of Blood jumps to Prince Valanar!',3,0,0,0,0,0,'Prince Valanar - EMOTE_VALANAR_INVOCATION'),
(37970,2,0,'My cup runneth over.',1,16686,0,0,0,0,'Prince Valanar - SAY_VALANAR_SPECIAL'),
(37970,3,0,'%s begins casting Empowered Schock Vortex!',3,0,0,0,0,0,'Prince Valanar - EMOTE_VALANAR_SHOCK_VORTEX'),
(37970,4,0,'Dinner... is served.',1,16681,0,0,0,0,'Prince Valanar - SAY_VALANAR_KILL_1'),
(37970,4,1,'Do you see NOW the power of the Darkfallen?',1,16682,0,0,0,0,'Prince Valanar - SAY_VALANAR_KILL_2'),
(37970,5,0,'BOW DOWN BEFORE THE SAN''LAYN!',1,16684,0,0,0,0,'Prince Valanar - SAY_VALANAR_BERSERK'),
(37970,6,0,'...why...?',1,16683,0,0,0,0,'Prince Valanar - SAY_VALANAR_DEATH'),
(37972,0,0,'Such wondrous power! The Darkfallen Orb has made me INVINCIBLE!',1,16727,0,0,0,0,'Prince Keleseth - SAY_KELESETH_INVOCATION'),
(37972,1,0,'Invocation of Blood jumps to Prince Keleseth!',3,0,0,0,0,0,'Prince Keleseth - EMOTE_KELESETH_INVOCATION'),
(37972,2,0,'Blood will flow!',1,16728,0,0,0,0,'Prince Keleseth - SAY_KELESETH_SPECIAL'),
(37972,3,0,'Were you ever a threat?',1,16723,0,0,0,0,'Prince Keleseth - SAY_KELESETH_KILL_1'),
(37972,3,1,'Truth is found in death.',1,16724,0,0,0,0,'Prince Keleseth - SAY_KELESETH_KILL_2'),
(37972,4,0,'%s cackles maniacally!',2,16726,0,0,0,0,'Prince Keleseth - EMOTE_KELESETH_BERSERK'),
(37972,5,0,'My queen... they come...',1,16725,0,0,0,0,'Prince Keleseth - SAY_KELESETH_DEATH'),
(37973,0,0,'Tremble before Taldaram, mortals, for the power of the orb flows through me!',1,16857,0,0,0,0,'Prince Taldaram - SAY_TALDARAM_INVOCATION'),
(37973,1,0,'Invocation of Blood jumps to Prince Taldaram!',3,0,0,0,0,0,'Prince Taldaram - EMOTE_TALDARAM_INVOCATION'),
(37973,2,0,'Delight in the pain!',1,16858,0,0,0,0,'Prince Taldaram - SAY_TALDARAM_SPECIAL'),
(37973,3,0,'Inferno Flames speed toward $N!',3,0,0,0,0,0,'Prince Taldaram - EMOTE_TALDARAM_FLAME'),
(37973,4,0,'Worm food.',1,16853,0,0,0,0,'Prince Taldaram - SAY_TALDARAM_KILL_1'),
(37973,4,1,'Beg for mercy!',1,16854,0,0,0,0,'Prince Taldaram - SAY_TALDARAM_KILL_2'),
(37973,5,0,'%s laughs.',2,16856,0,0,0,0,'Prince Taldaram - EMOTE_TALDARAM_BERSERK'),
(37973,6,0,'%s gurgles and dies.',2,16855,0,0,0,0,'Prince Taldaram - EMOTE_TALDARAM_DEATH'),
(38004,0,0,'Foolish mortals. You thought us defeated so easily? The San''layn are the Lich King''s immortal soldiers! Now you shall face their might combined!',1,16795,0,0,1,0,'Blood-Queen Lana''thel - SAY_INTRO_1'),
(38004,1,0,'Rise up, brothers, and destroy our enemies.',1,16796,0,0,0,0,'Blood-Queen Lana''thel - SAY_INTRO_2');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (70572,72202);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,0,70572,0,18,1,37920,0,0, '', 'Deathbringer Saurfang - Grip of Agony'),
(13,0,70572,0,18,1,37200,0,0, '', 'Deathbringer Saurfang - Grip of Agony'),
(13,0,70572,0,18,1,37187,0,0, '', 'Deathbringer Saurfang - Grip of Agony'),
(13,0,70572,0,18,1,37830,0,0, '', 'Deathbringer Saurfang - Grip of Agony'),
(13,0,72202,0,18,1,37813,0,0, '', 'Deathbringer Saurfang - Blood Link');  
-- [9607] Deathbringer Saurfang Additional Data (By Shauren)
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=72260;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,72260,0,18,1,37920,0,0, '', 'Deathbringer Saurfang - Mark of the Fallen Champion heal');

-- [9607] Deathbringer Saurfang (By Shauren)
-- Deathbringer Saurfang
SET @NPCSaurfang10N := 37813;
SET @NPCSaurfang25N := 3781301;
SET @NPCSaurfang10H := 3781302;
SET @NPCSaurfang25H := 3781302;

-- High Overlord Saurfang
SET @NPCOverlord10N := 37187;
SET @NPCOverlord25N := 38156;
SET @NPCOverlord10H := 38637;
SET @NPCOverlord25H := 38638; 

-- Fix factions
UPDATE `creature_template` SET `faction_A`=974, `faction_H`=974 WHERE `entry` IN (@NPCSaurfang10N,@NPCSaurfang25N,@NPCSaurfang10H,@NPCSaurfang25H); -- Deathbringer Saurfang
UPDATE `creature_template` SET `faction_A`=1735, `faction_H`=1735 WHERE `entry` IN (@NPCOverlord10N,@NPCOverlord25N,@NPCOverlord10H,@NPCOverlord25H); -- High Overlord Saurfang
UPDATE `creature_template` SET `faction_A`=1735, `faction_H`=1735 WHERE `entry`=37920; -- Kor'kron Reaver
UPDATE `creature_template` SET `faction_A`=894, `faction_H`=894 WHERE `entry`=37188; -- Jaina Proudmoore
UPDATE `creature_template` SET `faction_A`=1732, `faction_H`=1732 WHERE `entry`=37830; -- Skybreaker Marine
UPDATE `creature_template` SET `faction_A`=1732, `faction_H`=1732 WHERE `entry`=37200; -- Muradin Bronzebeard 

-- Naxxramas
DELETE FROM conditions WHERE SourceTypeOrReferenceId = 17 AND SourceEntry IN (28374,54426);
INSERT INTO conditions (SourceTypeOrReferenceId,SourceEntry,ConditionTypeOrReference,ConditionValue1,ConditionValue2) VALUES
(17,28374,18,1,0),
(17,28374,18,1,16360),
(17,54426,18,1,0),
(17,54426,18,1,30303);
UPDATE creature SET spawntimesecs = 10 WHERE id = 16027;
UPDATE `creature_template` SET `flags_extra`=268435456 WHERE `entry` = 16027;
UPDATE creature_template SET scriptname = 'mob_naxxramas_trash' WHERE entry IN (15974,15975,15976,15978,15979,15980,15981,30085);
UPDATE creature_template SET scriptname = 'mob_naxxramas_trash' WHERE entry IN (16243,16244,16168,16297,16306,16236);
UPDATE creature_template SET scriptname = 'mob_naxxramas_trash' WHERE entry IN (16017,16018,16020,16021,16022,16024,16025,30071,16027);
UPDATE creature_template SET scriptname = 'mob_naxxramas_trash' WHERE entry IN (16067,16145,16146,16154,16156,16163,16164,16167,16193,16194,16215,16216);
DELETE FROM areatrigger_scripts WHERE entry = 4156;
INSERT INTO areatrigger_scripts (entry,ScriptName) VALUES
(4156,'at_naxxramas_frostwyrm_wing');
DELETE FROM `creature` WHERE guid IN (630000,630001,630002,630003);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('630000','16505','533','2','1','0','0','3359.88','-3620.38','260.997','4.54129','300','0','0','521320','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('630001','16505','533','2','1','0','0','3347.35','-3618.88','260.997','4.6269','300','0','0','521320','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('630002','16803','533','2','1','0','1728','2757.34','-3111.46','267.685','4.11325','300','0','0','404430','0','0','0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('630003','16803','533','2','1','0','1728','2762.21','-3084.54','267.685','2.23614','300','0','0','404430','0','0','0');
DELETE FROM reference_loot_template WHERE entry = 15977;
DELETE FROM `creature_template` WHERE `entry` = 90003;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ('90003','0','0','0','0','0','4629','4629','4629','4629','Soul of Naxxramas',NULL,NULL,'0','80','80','0','35','35','1','1','1.14286','1','0','0','0','0','0','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','mob_naxxramas_teleporter','1');
INSERT INTO reference_loot_template (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount)
VALUES
(15977,39427,0,1,1,1,1),
(15977,39467,0,1,1,1,1),
(15977,39468,0,1,1,1,1),
(15977,39470,0,1,1,1,1),
(15977,39472,0,1,1,1,1),
(15977,39473,0,1,1,1,1),
(15977,40406,0,1,2,1,1),
(15977,40407,0,1,2,1,1),
(15977,40408,0,1,2,1,1),
(15977,40409,0,1,2,1,1),
(15977,40410,0,1,2,1,1),
(15977,40412,0,1,2,1,1),
(15977,40414,0,1,2,1,1);
DELETE FROM creature_loot_template WHERE entry IN (15974,15975,15976,15977,15978,15979,15980,15981);
DELETE FROM creature_loot_template WHERE entry IN (29242,29241,29243,29229,30389,29286,29247,29248);
INSERT INTO creature_loot_template (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount)
VALUES
(15974,44758,70,1,0,2,4),
(15974,42253,25,1,0,1,3),
(15974,44759,15,1,0,2,3),
(15974,15977,3,1,1,-15977,1),
(29242,44758,70,1,0,2,4),
(29242,42253,25,1,0,1,3),
(29242,44759,15,1,0,2,3),
(29242,15977,3,1,1,-15977,1),
(29242,15978,2,1,2,-15977,1),
(15975,44758,70,1,0,2,4),
(15975,42253,25,1,0,1,3),
(15975,44759,15,1,0,2,3),
(15975,15977,3,1,1,-15977,1),
(29241,44758,70,1,0,2,4),
(29241,42253,25,1,0,1,3),
(29241,44759,15,1,0,2,3),
(29241,15977,3,1,1,-15977,1),
(29241,15978,2,1,2,-15977,1),
(15976,44758,70,1,0,2,4),
(15976,42253,25,1,0,1,3),
(15976,44759,15,1,0,2,3),
(15976,15977,3,1,1,-15977,1),
(29243,44758,70,1,0,2,4),
(29243,42253,25,1,0,1,3),
(29243,44759,15,1,0,2,3),
(29243,15977,3,1,1,-15977,1),
(29243,15978,2,1,2,-15977,1),
(15978,44758,70,1,0,2,4),
(15978,44759,15,1,0,2,3),
(15978,15977,3,1,1,-15977,1),
(30389,44758,70,1,0,2,4),
(30389,44759,15,1,0,2,3),
(30389,15977,3,1,1,-15977,1),
(30389,15978,2,1,2,-15977,1),
(15979,44758,70,1,0,2,4),
(15979,44759,15,1,0,2,3),
(15979,15977,3,1,1,-15977,1),
(29286,44758,70,1,0,2,4),
(29286,44759,15,1,0,2,3),
(29286,15977,3,1,1,-15977,1),
(29286,15978,2,1,2,-15977,1),
(15980,33470,33,1,0,2,7),
(15980,43852,15,1,0,1,1),
(15980,35947, 7,1,0,1,1),
(15980,33445, 4,1,0,1,1),
(15980,33447, 2,1,0,1,1),
(15980,15977,3,1,1,-15977,1),
(29247,33470,33,1,0,2,7),
(29247,43852,15,1,0,1,1),
(29247,35947, 7,1,0,1,1),
(29247,33445, 4,1,0,1,1),
(29247,33447, 2,1,0,1,1),
(29247,15977,3,1,1,-15977,1),
(29247,15978,2,1,2,-15977,1),
(15981,33470,33,1,0,2,7),
(15981,43852,15,1,0,1,1),
(15981,35947, 7,1,0,1,1),
(15981,33445, 4,1,0,1,1),
(15981,33447, 2,1,0,1,1),
(15981,15977,3,1,1,-15977,1),
(29248,33470,33,1,0,2,7),
(29248,43852,15,1,0,1,1),
(29248,35947, 7,1,0,1,1),
(29248,33445, 4,1,0,1,1),
(29248,33447, 2,1,0,1,1),
(29248,15977,3,1,1,-15977,1),
(29248,15978,2,1,2,-15977,1);
DELETE FROM creature_loot_template WHERE entry IN (16243,16244,16168,16297,16034,16036,16056,16057,16236,16447);
DELETE FROM creature_loot_template WHERE entry IN (29575,29574,29576,29601,29609,29608,29612,31542,29613,30097);
INSERT INTO creature_loot_template (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount)
VALUES
(16243,33470,33,1,0,2,7),
(16243,43852,15,1,0,1,1),
(16243,35947, 7,1,0,1,1),
(16243,33445, 4,1,0,1,1),
(16243,33447, 2,1,0,1,1),
(16243,15977,3,1,1,-15977,1),
(29575,33470,33,1,0,2,7),
(29575,43852,15,1,0,1,1),
(29575,35947, 7,1,0,1,1),
(29575,33445, 4,1,0,1,1),
(29575,33447, 2,1,0,1,1),
(29575,15977,3,1,1,-15977,1),
(29575,15978,2,1,2,-15977,1),
(16244,33470,33,1,0,2,7),
(16244,43852,15,1,0,1,1),
(16244,35947, 7,1,0,1,1),
(16244,33445, 4,1,0,1,1),
(16244,33447, 2,1,0,1,1),
(16244,15977,3,1,1,-15977,1),
(29574,33470,33,1,0,2,7),
(29574,43852,15,1,0,1,1),
(29574,35947, 7,1,0,1,1),
(29574,33445, 4,1,0,1,1),
(29574,33447, 2,1,0,1,1),
(29574,15977,3,1,1,-15977,1),
(29574,15978,2,1,2,-15977,1),
(16168,33470,33,1,0,2,7),
(16168,43852,15,1,0,1,1),
(16168,35947, 7,1,0,1,1),
(16168,33445, 4,1,0,1,1),
(16168,33447, 2,1,0,1,1),
(16168,15977,3,1,1,-15977,1),
(29576,33470,33,1,0,2,7),
(29576,43852,15,1,0,1,1),
(29576,35947, 7,1,0,1,1),
(29576,33445, 4,1,0,1,1),
(29576,33447, 2,1,0,1,1),
(29576,15977,3,1,1,-15977,1),
(29576,15978,2,1,2,-15977,1),
(16297,33470,33,1,0,2,7),
(16297,43852,15,1,0,1,1),
(16297,35947, 7,1,0,1,1),
(16297,33445, 4,1,0,1,1),
(16297,33447, 2,1,0,1,1),
(16297,15977,3,1,1,-15977,1),
(29601,33470,33,1,0,2,7),
(29601,43852,15,1,0,1,1),
(29601,35947, 7,1,0,1,1),
(29601,33445, 4,1,0,1,1),
(29601,33447, 2,1,0,1,1),
(29601,15977,3,1,1,-15977,1),
(29601,15978,2,1,2,-15977,1),
(16034,33470,33,1,0,2,7),
(16034,43852,15,1,0,1,1),
(16034,35947, 7,1,0,1,1),
(16034,33445, 4,1,0,1,1),
(16034,33447, 2,1,0,1,1),
(16034,15977,3,1,1,-15977,1),
(29609,33470,33,1,0,2,7),
(29609,43852,15,1,0,1,1),
(29609,35947, 7,1,0,1,1),
(29609,33445, 4,1,0,1,1),
(29609,33447, 2,1,0,1,1),
(29609,15977,3,1,1,-15977,1),
(29609,15978,2,1,2,-15977,1),
(16036,33470,33,1,0,2,7),
(16036,43852,15,1,0,1,1),
(16036,35947, 7,1,0,1,1),
(16036,33445, 4,1,0,1,1),
(16036,33447, 2,1,0,1,1),
(16036,15977,3,1,1,-15977,1),
(29613,33470,33,1,0,2,7),
(29613,43852,15,1,0,1,1),
(29613,35947, 7,1,0,1,1),
(29613,33445, 4,1,0,1,1),
(29613,33447, 2,1,0,1,1),
(29613,15977,3,1,1,-15977,1),
(29613,15978,2,1,2,-15977,1),
(16447,33470,33,1,0,2,7),
(16447,43852,15,1,0,1,1),
(16447,35947, 7,1,0,1,1),
(16447,33445, 4,1,0,1,1),
(16447,33447, 2,1,0,1,1),
(16447,15977,3,1,1,-15977,1),
(30097,33470,33,1,0,2,7),
(30097,43852,15,1,0,1,1),
(30097,35947, 7,1,0,1,1),
(30097,33445, 4,1,0,1,1),
(30097,33447, 2,1,0,1,1),
(30097,15977,3,1,1,-15977,1),
(30097,15978,2,1,2,-15977,1);
DELETE FROM creature_loot_template WHERE entry IN (16017,16018,16020,16021,16022,16024,16025);
DELETE FROM creature_loot_template WHERE entry IN (29347,29353,29362,29359,29363,29355,29371);
INSERT INTO creature_loot_template (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount)
VALUES
(16017,33470,33,1,0,2,7),
(16017,43852,15,1,0,1,1),
(16017,35947, 7,1,0,1,1),
(16017,33445, 4,1,0,1,1),
(16017,33447, 2,1,0,1,1),
(16017,15977,3,1,1,-15977,1),
(29347,33470,33,1,0,2,7),
(29347,43852,15,1,0,1,1),
(29347,35947, 7,1,0,1,1),
(29347,33445, 4,1,0,1,1),
(29347,33447, 2,1,0,1,1),
(29347,15977,3,1,1,-15977,1),
(29347,15978,2,1,2,-15977,1),
(16018,33470,33,1,0,2,7),
(16018,43852,15,1,0,1,1),
(16018,35947, 7,1,0,1,1),
(16018,33445, 4,1,0,1,1),
(16018,33447, 2,1,0,1,1),
(16018,15977,3,1,1,-15977,1),
(29353,33470,33,1,0,2,7),
(29353,43852,15,1,0,1,1),
(29353,35947, 7,1,0,1,1),
(29353,33445, 4,1,0,1,1),
(29353,33447, 2,1,0,1,1),
(29353,15977,3,1,1,-15977,1),
(29353,15978,2,1,2,-15977,1),
(16020,33470,33,1,0,2,7),
(16020,43852,15,1,0,1,1),
(16020,35947, 7,1,0,1,1),
(16020,33445, 4,1,0,1,1),
(16020,33447, 2,1,0,1,1),
(16020,15977,3,1,1,-15977,1),
(29362,33470,33,1,0,2,7),
(29362,43852,15,1,0,1,1),
(29362,35947, 7,1,0,1,1),
(29362,33445, 4,1,0,1,1),
(29362,33447, 2,1,0,1,1),
(29362,15977,3,1,1,-15977,1),
(29362,15978,2,1,2,-15977,1),
(16021,33470,33,1,0,2,7),
(16021,43852,15,1,0,1,1),
(16021,35947, 7,1,0,1,1),
(16021,33445, 4,1,0,1,1),
(16021,33447, 2,1,0,1,1),
(16021,15977,3,1,1,-15977,1),
(29359,33470,33,1,0,2,7),
(29359,43852,15,1,0,1,1),
(29359,35947, 7,1,0,1,1),
(29359,33445, 4,1,0,1,1),
(29359,33447, 2,1,0,1,1),
(29359,15977,3,1,1,-15977,1),
(29359,15978,2,1,2,-15977,1),
(16022,33470,33,1,0,2,7),
(16022,43852,15,1,0,1,1),
(16022,35947, 7,1,0,1,1),
(16022,33445, 4,1,0,1,1),
(16022,33447, 2,1,0,1,1),
(16022,15977,3,1,1,-15977,1),
(29363,33470,33,1,0,2,7),
(29363,43852,15,1,0,1,1),
(29363,35947, 7,1,0,1,1),
(29363,33445, 4,1,0,1,1),
(29363,33447, 2,1,0,1,1),
(29363,15977,3,1,1,-15977,1),
(29363,15978,2,1,2,-15977,1),
(16025,33470,33,1,0,2,7),
(16025,43852,15,1,0,1,1),
(16025,35947, 7,1,0,1,1),
(16025,33445, 4,1,0,1,1),
(16025,33447, 2,1,0,1,1),
(16025,15977,3,1,1,-15977,1),
(29371,33470,33,1,0,2,7),
(29371,43852,15,1,0,1,1),
(29371,35947, 7,1,0,1,1),
(29371,33445, 4,1,0,1,1),
(29371,33447, 2,1,0,1,1),
(29371,15977,3,1,1,-15977,1),
(29371,15978,2,1,2,-15977,1);
DELETE FROM creature_loot_template WHERE entry IN (16067,16145,16146,16154,16156,16163,16164,16165,16167,16193,16194,16215,16216,30085);
DELETE FROM creature_loot_template WHERE entry IN (29852,29824,29823,29831,29833,29842,29825,29828,29835,29837,29898,29899,29900,30087);
INSERT INTO creature_loot_template (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount)
VALUES
(16067,33470,33,1,0,2,7),
(16067,43852,15,1,0,1,1),
(16067,35947, 7,1,0,1,1),
(16067,33445, 4,1,0,1,1),
(16067,33447, 2,1,0,1,1),
(16067,15977,3,1,1,-15977,1),
(29852,33470,33,1,0,2,7),
(29852,43852,15,1,0,1,1),
(29852,35947, 7,1,0,1,1),
(29852,33445, 4,1,0,1,1),
(29852,33447, 2,1,0,1,1),
(29852,15977,3,1,1,-15977,1),
(29852,15978,2,1,2,-15977,1),
(16145,33470,33,1,0,2,7),
(16145,43852,15,1,0,1,1),
(16145,35947, 7,1,0,1,1),
(16145,33445, 4,1,0,1,1),
(16145,33447, 2,1,0,1,1),
(16145,15977,3,1,1,-15977,1),
(29824,33470,33,1,0,2,7),
(29824,43852,15,1,0,1,1),
(29824,35947, 7,1,0,1,1),
(29824,33445, 4,1,0,1,1),
(29824,33447, 2,1,0,1,1),
(29824,15977,3,1,1,-15977,1),
(29824,15978,2,1,2,-15977,1),
(16146,33470,33,1,0,2,7),
(16146,43852,15,1,0,1,1),
(16146,35947, 7,1,0,1,1),
(16146,33445, 4,1,0,1,1),
(16146,33447, 2,1,0,1,1),
(16146,15977,3,1,1,-15977,1),
(29823,33470,33,1,0,2,7),
(29823,43852,15,1,0,1,1),
(29823,35947, 7,1,0,1,1),
(29823,33445, 4,1,0,1,1),
(29823,33447, 2,1,0,1,1),
(29823,15977,3,1,1,-15977,1),
(29823,15978,2,1,2,-15977,1),
(16154,33470,33,1,0,2,7),
(16154,43852,15,1,0,1,1),
(16154,35947, 7,1,0,1,1),
(16154,33445, 4,1,0,1,1),
(16154,33447, 2,1,0,1,1),
(16154,33448, 1,1,0,1,1),
(16154,15977,3,1,1,-15977,1),
(29831,33470,33,1,0,2,7),
(29831,43852,15,1,0,1,1),
(29831,35947, 7,1,0,1,1),
(29831,33445, 4,1,0,1,1),
(29831,33447, 2,1,0,1,1),
(29831,33448, 1,1,0,1,1),
(29831,15977,3,1,1,-15977,1),
(29831,15978,2,1,2,-15977,1),
(16163,33470,33,1,0,2,7),
(16163,43852,15,1,0,1,1),
(16163,35947, 7,1,0,1,1),
(16163,33445, 4,1,0,1,1),
(16163,33447, 2,1,0,1,1),
(16163,15977,3,1,1,-15977,1),
(29842,33470,33,1,0,2,7),
(29842,43852,15,1,0,1,1),
(29842,35947, 7,1,0,1,1),
(29842,33445, 4,1,0,1,1),
(29842,33447, 2,1,0,1,1),
(29842,15977,3,1,1,-15977,1),
(29842,15978,2,1,2,-15977,1),
(16164,33470,33,1,0,2,7),
(16164,43852,15,1,0,1,1),
(16164,35947, 7,1,0,1,1),
(16164,33445, 4,1,0,1,1),
(16164,33447, 2,1,0,1,1),
(16164,15977,3,1,1,-15977,1),
(29825,33470,33,1,0,2,7),
(29825,43852,15,1,0,1,1),
(29825,35947, 7,1,0,1,1),
(29825,33445, 4,1,0,1,1),
(29825,33447, 2,1,0,1,1),
(29825,15977,3,1,1,-15977,1),
(29825,15978,2,1,2,-15977,1),
(16165,33470,33,1,0,2,7),
(16165,43852,15,1,0,1,1),
(16165,35947, 7,1,0,1,1),
(16165,33445, 4,1,0,1,1),
(16165,33447, 2,1,0,1,1),
(16165,15977,3,1,1,-15977,1),
(29828,33470,33,1,0,2,7),
(29828,43852,15,1,0,1,1),
(29828,35947, 7,1,0,1,1),
(29828,33445, 4,1,0,1,1),
(29828,33447, 2,1,0,1,1),
(29828,15977,3,1,1,-15977,1),
(29828,15978,2,1,2,-15977,1),
(16167,33470,33,1,0,2,7),
(16167,43852,15,1,0,1,1),
(16167,35947, 7,1,0,1,1),
(16167,33445, 4,1,0,1,1),
(16167,33447, 2,1,0,1,1),
(16167,33448, 1,1,0,1,1),
(16167,15977,3,1,1,-15977,1),
(29835,33470,33,1,0,2,7),
(29835,43852,15,1,0,1,1),
(29835,35947, 7,1,0,1,1),
(29835,33445, 4,1,0,1,1),
(29835,33447, 2,1,0,1,1),
(29835,33448, 1,1,0,1,1),
(29835,15977,3,1,1,-15977,1),
(29835,15978,2,1,2,-15977,1),
(16193,33470,33,1,0,2,7),
(16193,43852,15,1,0,1,1),
(16193,35947, 7,1,0,1,1),
(16193,33445, 4,1,0,1,1),
(16193,33447, 2,1,0,1,1),
(16193,15977,3,1,1,-15977,1),
(29837,33470,33,1,0,2,7),
(29837,43852,15,1,0,1,1),
(29837,35947, 7,1,0,1,1),
(29837,33445, 4,1,0,1,1),
(29837,33447, 2,1,0,1,1),
(29837,15977,3,1,1,-15977,1),
(29837,15978,2,1,2,-15977,1),
(16194,33470,33,1,0,2,7),
(16194,43852,15,1,0,1,1),
(16194,35947, 7,1,0,1,1),
(16194,33445, 4,1,0,1,1),
(16194,33447, 2,1,0,1,1),
(16194,15977,3,1,1,-15977,1),
(29898,33470,33,1,0,2,7),
(29898,43852,15,1,0,1,1),
(29898,35947, 7,1,0,1,1),
(29898,33445, 4,1,0,1,1),
(29898,33447, 2,1,0,1,1),
(29898,15977,3,1,1,-15977,1),
(29898,15978,2,1,2,-15977,1),
(16215,33470,33,1,0,2,7),
(16215,43852,15,1,0,1,1),
(16215,35947, 7,1,0,1,1),
(16215,33445, 4,1,0,1,1),
(16215,33447, 2,1,0,1,1),
(16215,15977,3,1,1,-15977,1),
(29899,33470,33,1,0,2,7),
(29899,43852,15,1,0,1,1),
(29899,35947, 7,1,0,1,1),
(29899,33445, 4,1,0,1,1),
(29899,33447, 2,1,0,1,1),
(29899,15977,3,1,1,-15977,1),
(29899,15978,2,1,2,-15977,1),
(16216,33470,33,1,0,2,7),
(16216,43852,15,1,0,1,1),
(16216,35947, 7,1,0,1,1),
(16216,33445, 4,1,0,1,1),
(16216,33447, 2,1,0,1,1),
(16216,15977,3,1,1,-15977,1),
(29900,33470,33,1,0,2,7),
(29900,43852,15,1,0,1,1),
(29900,35947, 7,1,0,1,1),
(29900,33445, 4,1,0,1,1),
(29900,33447, 2,1,0,1,1),
(29900,15977,3,1,1,-15977,1),
(29900,15978,2,1,2,-15977,1);
UPDATE creature_template SET lootid = entry WHERE entry IN (29242,29241,29243,29229,30389,29286,29247,29248);
UPDATE creature_template SET lootid = entry WHERE entry IN (29575,29574,29576,29601,29609,29608,29612,31542,29613,30097);
UPDATE creature_template SET lootid = entry WHERE entry IN (29347,29353,29362,29359,29363,29355,29371);
UPDATE creature_template SET lootid = entry WHERE entry IN (29852,29824,29823,29831,29833,29842,29825,29828,29835,29837,29898,29899,29900,30087);
UPDATE `creature_template` SET `ScriptName` = 'mob_gluth_zombie' WHERE `entry` = 16360;
UPDATE `creature_template` SET `ScriptName` = 'mob_naxxramas_kelthuzad_trash' WHERE `entry` IN (16427, 16428, 16429);
UPDATE `creature_template` SET `ScriptName` = 'mob_naxxramas_noth_trash' WHERE `entry` IN (16984, 16983, 16981);
UPDATE `creature_template` SET `ScriptName` = 'mob_naxxramas_trash' WHERE `ScriptName` = 'mob_naxxramas_tash';

-- Nexus
SET @lootid_anomalus     = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26763));
SET @lootid_telestra     = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26731));
SET @lootid_keristrasza  = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26723));
SET @lootid_ormorok      = (SELECT lootid FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26794));
SET @mindmg = (SELECT mindmg      FROM creature_template WHERE entry = 26796);
SET @maxdmg = (SELECT maxdmg      FROM creature_template WHERE entry = 26796);
SET @attack = (SELECT attackpower FROM creature_template WHERE entry = 26796);
UPDATE creature_template SET mindmg = @mindmg, maxdmg = @maxdmg, attackpower = @attack WHERE entry = 26798;
SET @mindmg = (SELECT mindmg      FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26796));
SET @maxdmg = (SELECT maxdmg      FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26796));
SET @attack = (SELECT attackpower FROM creature_template WHERE entry = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26796));
SET @kolurg_diff1 = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 26798);
UPDATE creature_template SET mindmg = @mindmg, maxdmg = @maxdmg, attackpower = @attack WHERE entry = @kolurg_diff1;
UPDATE creature_template SET mechanic_immune_mask = mechanic_immune_mask &~ 33554432 WHERE entry IN (26731,30510);
UPDATE creature_template SET AIName = '', ScriptName = 'boss_magus_telestra_arcane' WHERE entry = 26929;
DELETE FROM creature WHERE id IN (26798,26796,27949,27947);
INSERT INTO creature (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(26796,576,2,1,24366,0,424.185,185.37,-35.004,3.263,3600,0,0,337025,0,0,0),
(27949,576,1,1,24366,0,424.185,185.37,-35.004,3.263,3600,0,0,337025,0,0,0);
DELETE FROM creature_loot_template WHERE item = 43665;
SET @spike_h = (SELECT difficulty_entry_1 FROM creature_template WHERE entry = 27099);
UPDATE creature_template SET unit_flags = unit_flags|2|33554432 WHERE entry IN (27099,@spike_h);
UPDATE creature SET position_x = '323.541779', position_y = '-240.492249', position_z = '-14.088820', orientation = '2.964224' WHERE guid = '126444';
UPDATE creature SET position_x = '323.179108', position_y = '-242.347137', position_z = '-14.088820', orientation = '2.948516' WHERE guid = '126606';
UPDATE creature SET position_x = '324.616272', position_y = '-234.996307', position_z = '-14.088820', orientation = '3.152720' WHERE guid = '126605';
UPDATE creature SET position_x = '317.004852', position_y = '-237.360901', position_z = '-14.088820', orientation = '3.231260' WHERE guid = '126445';
DELETE FROM creature_onkill_reputation WHERE creature_id IN (27947,27949);

-- Ocolus
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dynamicflags` = 8, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103, `spell1` = 50232, `spell2` = 50248, `spell3` = 50240, `spell4` =  50253, `spell5` = 53112, `VehicleId` = 70 WHERE `entry` = 27756;
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dynamicflags` = 8, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103, `spell1` = 49840, `spell2` = 49838, `spell3` = 49592, `spell4` =  0, `spell5` = 53112, `VehicleId` = 70 WHERE `entry` = 27755;
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dynamicflags` = 8, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103, `spell1` = 50328, `spell2` = 50341, `spell3` = 50344, `spell4` =  0, `spell5` = 53112, `VehicleId` = 70 WHERE `entry` = 27692;
UPDATE creature_template SET npcflag=1 WHERE entry IN (27657,27658,27659);
UPDATE creature_template SET ScriptName='boss_drakos' WHERE entry = 27654;
UPDATE creature_template SET ScriptName='boss_urom' WHERE entry = 27655;
UPDATE creature_template SET ScriptName='mob_centrifige_construct' WHERE entry = 27641;
UPDATE creature_template SET ScriptName='boss_varos' WHERE entry = 27447;
UPDATE creature_template SET ScriptName='boss_eregos' WHERE entry = 27656;
UPDATE creature_template SET ScriptName='npc_planar_anomaly' WHERE entry = 30879;
UPDATE `creature_template` SET `npcflag`=3 WHERE `entry` = 27658;
UPDATE creature_template SET InhabitType = 5, modelid1 =  28107, modelid3 = 28107 WHERE entry=30879;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, mindmg = 422, maxdmg = 586, faction_A = 16, faction_H = 16, attackpower = 642, dmg_multiplier = 1, minrangedmg = 345, maxrangedmg = 509, rangedattackpower = 103 WHERE entry = 28166;
DELETE FROM `script_texts` WHERE npc_entry='27654';
INSERT INTO `script_texts` VALUES ('27654', -1578000, 'The prisoners shall not go free. The word of Malygos is law!','', '', '', '', '', '', '', '', 13594,1,0,0, 'drakos SAY_AGGRO');
INSERT INTO `script_texts` VALUES ('27654', -1578001, 'A fitting punishment!','', '', '', '', '', '', '', '', 13602, 1,0,0, 'drakos SAY_KILL_1');
INSERT INTO `script_texts` VALUES ('27654', -1578002, 'Sentence: executed!','', '', '', '', '', '', '', '', 13603,1,0,0, 'drakos SAY_KILL_2');
INSERT INTO `script_texts` VALUES ('27654', -1578003, 'Another casualty of war!','', '', '', '', '', '', '', '', 13604, 1,0,0, 'drakos SAY_KILL_3');
INSERT INTO `script_texts` VALUES ('27654', -1578004, 'The war... goes on.','', '', '', '', '', '', '', '', 13605,1,0,0,  'drakos SPELL_DEATH');
INSERT INTO `script_texts` VALUES ('27654', -1578005, 'It is too late to run!','', '', '', '', '', '', '', '', 13598, 1,0,0, 'drakos SAY_PULL_1');
INSERT INTO `script_texts` VALUES ('27654', -1578006, 'Gather \'round! ','', '', '', '', '', '', '', '', 13599, 1,0,0, 'drakos SAY_PULL_2');
INSERT INTO `script_texts` VALUES ('27654', -1578007, 'None shall escape!','', '', '', '', '', '', '', '', 13600, 1,0,0, 'drakos SAY_PULL_3');
INSERT INTO `script_texts` VALUES ('27654', -1578008, 'I condemn you to death!','', '', '', '', '', '', '', '', 13601,1,0,0,  'drakos SAY_PULL_4');
INSERT INTO `script_texts` VALUES ('27654', -1578009, 'Tremble, worms!','', '', '', '', '', '', '', '', 13595,1,0,0,  'drakos SAY_STOMP_1');
INSERT INTO `script_texts` VALUES ('27654', -1578010, 'I will crush you!', '', '', '', '', '', '', '', '', 13596, 1,0,0, 'drakos SAY_STOMP_2');
INSERT INTO `script_texts` VALUES ('27654', -1578011, 'Can you fly?', '', '', '', '', '', '', '', '', 13597, 1,0,0, 'drakos SAY_STOMP_3');
DELETE FROM `script_texts` WHERE npc_entry= '27655';
INSERT INTO `script_texts` VALUES ('27655', -1578012, 'Poor blind fools!','', '', '', '', '', '', '', '', 13638,1,0,0, 'urom SAY_AGGRO');
INSERT INTO `script_texts` VALUES ('27655', -1578013, 'If only you understood!','', '', '', '', '', '', '', '', 13641,1,0,0, 'urom SAY_KILL_1');
INSERT INTO `script_texts` VALUES ('27655', -1578014, 'Now, do you see? DO YOU?!','', '', '', '', '', '', '', '', 13642,1,0,0, 'urom SAY_KILL_2');
INSERT INTO `script_texts` VALUES ('27655', -1578015, 'Unfortunate, but necessary.','', '', '', '', '', '', '', '', 13643,1,0,0, 'urom SAY_KILL_3');
INSERT INTO `script_texts` VALUES ('27655', -1578016, 'Everything I\'ve done... has been for Azeroth...','', '', '', '', '', '', '', '', 13644,1,0,0, 'urom SAY_DEATH');
INSERT INTO `script_texts` VALUES ('27655', -1578017, 'A taste... just a small taste... of the Spell-Weaver\'s power!','', '', '', '', '', '', '', '', 13639,1,0,0, 'urom SAY_EXPLOSION_1');
INSERT INTO `script_texts` VALUES ('27655', -1578018, 'So much unstable energy... but worth the risk to destroy you!','', '', '', '', '', '', '', '', 13640,1,0,0, 'urom SAY_EXPLOSION_2');
INSERT INTO `script_texts` VALUES ('27655', -1578019, 'What do we have here... those would defy the Spell-Weaver? Those without foresight or understanding. How could I make you see? Malygos is saving the world from itself! Bah! You are hardly worth my time!','', '', '', '', '', '', '', '', 13635,1,0,0, 'urom SAY_SUMMON_1');
INSERT INTO `script_texts` VALUES ('27655', -1578020, 'Clearly my pets failed. Perhaps another demonstration is in order.','', '', '', '', '', '', '', '', 13636,1,0,0, 'urom SAY_SUMMON_2');
INSERT INTO `script_texts` VALUES ('27655', -1578021, 'Still you fight. Still you cling to misguided principles. If you survive, you\'ll find me in the center ring.','', '', '', '', '', '', '', '', 13637,1,0,0, 'urom SAY_SUMMON_3');
DELETE FROM `script_texts` WHERE npc_entry = '27447';
INSERT INTO `script_texts` VALUES ('27447', -1578022, 'There will be no mercy!','', '', '', '', '', '', '', '', 13649,1,0,0, 'varos SAY_AGGRO');
INSERT INTO `script_texts` VALUES ('27447', -1578023, 'You were warned.','', '', '', '', '', '', '', '', 13653,1,0,0, 'varos SAY_KILL_1');
INSERT INTO `script_texts` VALUES ('27447', -1578024, 'The Oculus is ours.','', '', '', '', '', '', '', '', 13654,1,0,0, 'varos SAY_KILL_2');
INSERT INTO `script_texts` VALUES ('27447', -1578025, 'They are... too strong! Underestimated their... fortitude.','', '', '', '', '', '', '', '', 13655,1,0,0, 'varos SAY_DEATH');
INSERT INTO `script_texts` VALUES ('27447', -1578026, 'Blast them! Destroy them!','', '', '', '', '', '', '', '', 13650,1,0,0, 'varos SAY_STRIKE_1');
INSERT INTO `script_texts` VALUES ('27447', -1578027, 'Take no prisoners! Attack!','', '', '', '', '', '', '', '', 13651,1,0,0, 'varos SAY_STRIKE_2');
INSERT INTO `script_texts` VALUES ('27447', -1578028, 'Strike now! Obliterate them!','', '', '', '', '', '', '', '', 13652,1,0,0, 'varos SAY_STRIKE_3');
INSERT INTO `script_texts` VALUES ('27447', -1578029, 'Intruders, your victory will be short-lived. I am Commander Varos Cloudstrider. My drakes control the skies and protest this conduit. I will see to it personally that the Oculus does not fall into your hands!','', '', '', '', '', '', '', '', 13648,1,0,0, 'varos SAY_SPAWN');
UPDATE gameobject_template SET flags=4 where entry IN (189986,193995);
UPDATE gameobject_template SET TYPE=10,flags=32,data0=0,data2=1887150,data3=0,data6=1 WHERE entry=188715;
DELETE FROM event_scripts WHERE id=1887150;
INSERT INTO event_scripts (id,delay,command,datalong,datalong2,dataint,x,y,z,o) VALUES 
(1887150,0,6,571,0,0,3877.953125,6984.460449,106.320236,0.023581);
UPDATE gameobject_template SET TYPE=10,flags=32,data0=0,data2=1899850,data3=0,data6=1 WHERE entry=189985;
DELETE FROM event_scripts WHERE id=1899850;
INSERT INTO event_scripts (id,delay,command,datalong,datalong2,dataint,x,y,z,o) VALUES 
(1899850,0,6,578,0,0,996.837646,1061.329834,359.476685,3.490091);
DELETE FROM creature_onkill_reputation WHERE creature_id IN (27636,27642,28153,28236);
INSERT INTO creature_onkill_reputation (creature_id,RewOnKillRepFaction1,RewOnKillRepFaction2,MaxStanding1,IsTeamAward1,RewOnKillRepValue1,MaxStanding2,IsTeamAward2,RewOnKillRepValue2,TeamDependent) VALUES 
(27636,1037,1052,7,0,25,7,0,25,1),
(27642,1037,1052,7,0,5,7,0,5,1),
(28153,1037,1052,7,0,5,7,0,5,1),
(28236,1037,1052,7,0,25,7,0,25,1);
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 26918;
UPDATE gameobject_template SET ScriptName="oculus_teleporter" WHERE entry in (188715, 189985);
update creature_template set spell1 = 50328, spell2 = 50341, spell3 = 50344, `InhabitType` = 5 where entry = 27692;
update creature_template set spell1 = 50232, spell2 = 50248, spell3 = 50240, spell4 = 50253, `InhabitType` = 5 where entry = 27756;
update creature_template set spell1 = 49840, spell2 = 49838, spell3 = 49592, `InhabitType` = 5 where entry = 27755;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 27659;

-- Onyxia
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (12129,36561);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1212901','12129','0','0','100','7','7800','8200','9400','9600','11','15284','1','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Cleave'),
('1212902','12129','0','0','100','7','9200','9300','8400','8500','11','20203','0','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Fire Nova'),
('1212903','12129','0','0','100','7','11500','11700','23400','23600','11','12097','1','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Pierce Armor'),
('1212904','12129','0','0','100','7','12600','12800','5800','6000','11','18958','1','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Flame Lash'),
('1212905','12129','0','0','100','7','9200','9300','8400','8500','11','68969','0','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Fire Nova'),
('1212906','12129','0','0','100','7','12600','12800','5800','6000','11','69308','1','1','0','0','0','0','0','0','0','0','Onyxian Warder - Cast Flame Lash'),
(3656101,36561,0,0,75,7,15000,15000,30000,30000,11,68958,0,0,0,0,0,0,0,0,0,0, 'Onyxia Lair Guard - Cast Blast Nova'),
(3656102,36561,0,0,90,7,5000,5000,20000,20000,11,68960,1,0,0,0,0,0,0,0,0,0, 'Onyxia Lair Guard - Cast Ignite Weapon'),
(3656103,36561,0,0,80,7,7000,7000,9000,11000,11,15284,1,0,0,0,0,0,0,0,0,0, 'Onyxia Lair Guard - Cast Cleave' );
UPDATE creature_template SET  AIName='EventAI' WHERE entry IN (12129,36561);

-- ---------------------------------
-- ULDUAR
-- ---------------------------------

-- -----------------------
-- SPELLS
-- -----------------------
-- Biting Cold Spell Scripts
DELETE FROM `spell_script_names` WHERE `spell_id` IN (62038, 62039);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('62038', 'spell_gen_biting_cold'),
('62039', 'spell_gen_biting_cold_dot');
-- Rapid Burst (63382) Spell Script
DELETE FROM `spell_script_names` WHERE `spell_id` = 63382;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('63382', 'spell_gen_rapid_burst');
-- Fire Bomb (66313) Spell Script
DELETE FROM `spell_script_names` WHERE `spell_id` = 66313;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('66313', 'spell_gen_fire_bomb');
-- Fire Bomb Trigger
UPDATE `creature_template` SET `flags_extra` = `flags_extra` | 128, `spell1` = 66318 WHERE `entry` = 34854;


-- -----------------------
-- MISC
-- -----------------------
-- Creatures/Gameobjects 25 man Spawn
UPDATE `creature` SET `spawnMask` = 3 WHERE `map` = 603;
UPDATE `gameobject` SET `spawnMask` = 3 WHERE `map` = 603;

-- -----------------------
-- BOSS Ignis
-- -----------------------
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 9, `vehicleId` = 342 WHERE `entry` = 33118;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 9 WHERE `entry` = 33190;
DELETE FROM creature WHERE id = 33121;
DELETE FROM conditions WHERE SourceEntry = 62343;
INSERT INTO `conditions` VALUES
('13','0','62343','0','18','1','33121','0','0','',NULL);

-- -----------------------
-- BOSS Razorscale
-- -----------------------
UPDATE `creature_template` SET `speed_run` = 0.00001 WHERE `entry` IN (34188, 34189);

-- -----------------------
-- BOSS XT-002
-- -----------------------
UPDATE `creature_template` SET `VehicleId` = 335 WHERE `entry` = 33293;

-- -----------------------
-- Assembly of Iron
-- -----------------------
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235 WHERE `entry` IN (32867, 32927, 33693, 33692);
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299803 WHERE `entry` IN (32857, 33694);
UPDATE `creature_template` SET `ScriptName` = 'npc_rune_of_power' WHERE `entry` = 33705;
UPDATE `creature_template` SET `difficulty_entry_1` = 33691, `ScriptName` = 'npc_rune_of_summoning' WHERE `entry` = 33051;
UPDATE `creature_template` SET `ScriptName` = 'npc_lightning_elemental' WHERE `entry` = 32958;
-- Runemaster Molgeim
UPDATE `creature_model_info` SET `bounding_radius` = 0.45, `combat_reach` = 4 WHERE `modelid` = 28381;
-- Steelbreaker
UPDATE `creature_model_info` SET `bounding_radius` = 0.45, `combat_reach` = 8 WHERE `modelid` = 28344;

-- -----------------------
-- Kologarn
-- -----------------------
UPDATE `creature_template` SET `baseattacktime` = 1800, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` IN (32930, 33909);
UPDATE `creature_model_info` SET `bounding_radius` = 1, `combat_reach` = 15 WHERE `modelid` = 28638;
UPDATE `creature_model_info` SET `bounding_radius` = 0.465, `combat_reach` = 15 WHERE `modelid` = 28821;
-- Left Arm
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'npc_left_arm' WHERE `entry` = 32933;
UPDATE `creature_model_info` SET `bounding_radius` = 0.465, `combat_reach` = 15 WHERE `modelid` = 28821;
-- Right Arm
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'npc_right_arm' WHERE `entry` = 32934;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235 WHERE `entry` IN (33910, 33911);
UPDATE `creature_model_info` SET `bounding_radius` = 0.465, `combat_reach` = 15 WHERE `modelid` = 28822;
-- Focused Eyebeam
UPDATE `creature_template` SET `ScriptName` = 'npc_focused_eyebeam' WHERE `entry` IN (33632, 33802);
DELETE FROM conditions WHERE SourceEntry IN (63676, 63702);
INSERT INTO `conditions` VALUES
('13','0','63676','0','18','1','32930','0','0','',"Focused Eyebeam (Kologarn)"),
('13','0','63702','0','18','1','32930','0','0','',"Focused Eyebeam (Kologarn)");
-- Cleanup
DELETE FROM `creature` WHERE `id` IN (33632, 33802, 34297, 32933, 32934, 33809, 33661, 33742);
DELETE FROM vehicle_accessory WHERE guid = 32930;


-- -----------------------
-- Auriaya
-- -----------------------
UPDATE `creature_template` SET `baseattacktime` = 1500, `equipment_id` = 2422, `mechanic_immune_mask` = 617299807, `flags_extra` = 1 WHERE `entry` = 33515;
UPDATE `creature_template` SET `baseattacktime` = 1500, `equipment_id` = 2422, `mechanic_immune_mask` = 617299807, `flags_extra` = 1 WHERE `entry` = 34175;
UPDATE `creature_model_info` SET `bounding_radius` = 0.775, `combat_reach` = 5 WHERE `modelid` = 28651;
-- Sanctum Sentry
UPDATE `creature_template` SET `speed_walk` = 1.66667, `mechanic_immune_mask` = 536870912, `flags_extra` = 1, `ScriptName` = 'npc_sanctum_sentry' WHERE `entry` = 34014;
UPDATE `creature_template` SET `baseattacktime` = 1500, `speed_walk` = 1.66667, `mechanic_immune_mask` = 536870912, `flags_extra` = 1 WHERE `entry` = 34166;
-- Feral Defender
UPDATE `creature_template` SET `speed_walk` = 2, `dmg_multiplier` = 3.5, `flags_extra` = 1, `ScriptName` = 'npc_feral_defender' WHERE `entry` = 34035;
UPDATE `creature_template` SET `speed_walk` = 2, `dmg_multiplier` = 5, `flags_extra` = 1, `baseattacktime` = 1500 WHERE `entry` = 34171;
UPDATE `creature_template` SET `unit_flags` = 33554432, `ScriptName` = 'npc_seeping_trigger' WHERE `entry` = 34098;
UPDATE `creature_template` SET `unit_flags` = 33554432 WHERE `entry` = 34174;
UPDATE `creature_template` SET `dmg_multiplier` = 1.5, `baseattacktime` = 1500 WHERE `entry` = 34169;
UPDATE `creature_template` SET `ScriptName` = 'npc_feral_defender_trigger' WHERE `entry` = 34096;
-- Mace equip
DELETE FROM `creature_equip_template` WHERE entry = 2422;
INSERT INTO `creature_equip_template` VALUES ('2422','45315','0','0');
-- Cleanup
DELETE FROM `creature` WHERE `id` = 34014;
-- Auriaya movement path
DELETE FROM `creature_addon` WHERE guid = 137496;
INSERT INTO `creature_addon` VALUES ('137496','1033515','0','0','0','0','');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 137496;
DELETE FROM `waypoint_data` WHERE id = 1033515;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) VALUES
('1033515','1','1968.46','51.75','417.72','0','0','0','100','0'),
('1033515','2','1956.75','49.22','411.35','0','0','0','100','0'),
('1033515','3','1938.90','42.09','411.35','3000','0','0','100','0'),
('1033515','4','1956.75','49.22','411.35','0','0','0','100','0'),
('1033515','5','1968.46','51.75','417.72','0','0','0','100','0'),
('1033515','6','2011.43','44.91','417.72','0','0','0','100','0'),
('1033515','7','2022.65','37.74','411.36','0','0','0','100','0'),
('1033515','8','2046.65','9.61','411.36','0','0','0','100','0'),
('1033515','9','2053.4','-8.65','421.68','0','0','0','100','0'),
('1033515','10','2053.14','-39.8','421.66','0','0','0','100','0'),
('1033515','11','2046.26','-57.96','411.35','0','0','0','100','0'),
('1033515','12','2022.42','-86.39','411.35','0','0','0','100','0'),
('1033515','13','2011.26','-92.95','417.71','0','0','0','100','0'),
('1033515','14','1969.43','-100.02','417.72','0','0','0','100','0'),
('1033515','15','1956.66','-97.4','411.35','0','0','0','100','0'),
('1033515','16','1939.18','-90.90','411.35','3000','0','0','100','0'),
('1033515','17','1956.66','-97.4','411.35','0','0','0','100','0'),
('1033515','18','1969.43','-100.02','417.72','0','0','0','100','0'),
('1033515','19','2011.26','-92.95','417.71','0','0','0','100','0'),
('1033515','20','2022.42','-86.39','411.35','0','0','0','100','0'),
('1033515','21','2046.26','-57.96','411.35','0','0','0','100','0'),
('1033515','22','2053.14','-39.8','421.66','0','0','0','100','0'),
('1033515','23','2053.4','-8.65','421.68','0','0','0','100','0'),
('1033515','24','2046.65','9.61','411.36','0','0','0','100','0'),
('1033515','25','2022.65','37.74','411.36','0','0','0','100','0'),
('1033515','26','2011.43','44.91','417.72','0','0','0','100','0');

-- -----------------------
-- Hodir
-- -----------------------
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'boss_hodir' WHERE `entry` = 32845;
UPDATE `creature_template` SET `equipment_id` = 1843, `mechanic_immune_mask` = 650854239, `flags_extra` = 1 WHERE `entry` = 32846;
-- Hodir npcs
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_priest' WHERE `entry` IN (32897, 33326, 32948, 33330);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_shaman' WHERE `entry` IN (33328, 32901, 33332, 32950);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_druid' WHERE `entry` IN (33325, 32900, 32941, 33333);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_mage' WHERE `entry` IN (32893, 33327, 33331, 32946);
UPDATE `creature_template` SET `ScriptName` = 'npc_toasty_fire' WHERE `entry` = 33342;
UPDATE `creature_template` SET `ScriptName` = 'npc_icicle' WHERE `entry` = 33169;
UPDATE `creature_template` SET `ScriptName` = 'npc_icicle_snowdrift' WHERE `entry` = 33173;
UPDATE `creature_template` SET `ScriptName` = 'npc_snowpacked_icicle' WHERE `entry` = 33174;
UPDATE `creature_template` SET `difficulty_entry_1` = 33352, `mechanic_immune_mask` = 612597599, `ScriptName` = 'npc_flash_freeze' WHERE `entry` = 32926;
UPDATE `creature_template` SET `difficulty_entry_1` = 33353, `mechanic_immune_mask` = 612597599, `ScriptName` = 'npc_flash_freeze' WHERE `entry` = 32938;
UPDATE `creature_template` SET `mechanic_immune_mask` = 612597599 WHERE `entry` IN (33352, 33353);
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 194173;
-- Cleanup
DELETE FROM `creature` WHERE `id` IN (32950, 32941, 32948, 32946, 32938);

-- -----------------------
-- Mimiron
-- -----------------------
-- Mimiron Tram
UPDATE `gameobject_template` SET `flags` = 32, `data2` = 3000, `ScriptName` = 'go_call_tram' WHERE `entry` IN (194914, 194912, 194437);
DELETE FROM gameobject WHERE id = '194437';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('194437','603','1','1','2306.87','274.237','424.288','1.52255','0','0','0.689847','0.723956','300','0','1');
DELETE FROM gameobject_template WHERE entry = '194438';
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
('194438','1','8504','Activate Tram','','','','0','32','1','0','0','0','0','0','0','0','0','3000','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','go_call_tram','11159');
DELETE FROM gameobject WHERE id = '194438';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(194438, 603, 1,1,2306.99, 2589.35, 424.382, 4.71676, 0, 0, 0.705559, -0.708651, 300, 0, 1);
-- Mimiron
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_mimiron' WHERE `entry` = 33350;
-- Leviathan MKII
UPDATE `creature_template` SET `vehicleid` = 370, `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_leviathan_mk' WHERE `entry` = 33432;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34106;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_leviathan_mk_turret' WHERE `entry` = 34071;
DELETE FROM `vehicle_accessory` WHERE guid = 33432;
INSERT INTO `vehicle_accessory` (`guid`, `accessory_entry`, `seat_id`, `minion`, `description`) VALUES (33432, 34071, 3, 3, 'Leviathan Mk II turret');
UPDATE creature_template SET ScriptName = 'npc_proximity_mine' WHERE entry = 34362;
DELETE FROM `creature_model_info` WHERE `modelid`=28831;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(28831, 0.5, 7, 2, 0);
-- VX-001
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `vehicleid` = 371, `ScriptName` = 'boss_vx_001' WHERE `entry` = 33651;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34108;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 34050;
UPDATE `creature_template` SET `unit_flags` = 33686020, `flags_extra` = 2 WHERE `entry` = 34211;
UPDATE `creature_template` SET `ScriptName` = 'npc_rocket_strike' WHERE `entry` = 34047;
-- Aerial Command Unit
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `ScriptName` = 'boss_aerial_unit' WHERE `entry` = 33670;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34109;
UPDATE `creature_template` SET `ScriptName` = 'npc_magnetic_core' WHERE `entry` = 34068;
UPDATE `creature_template` SET `ScriptName` = 'npc_assault_bot' WHERE `entry` = 34057;
UPDATE `creature_template` SET `difficulty_entry_1` = 34148, `ScriptName` = 'npc_emergency_bot' WHERE `entry` = 34147;
-- HardMode
UPDATE `gameobject_template` SET `flags` = 32, `ScriptName` = 'go_not_push_button' WHERE `entry` = 194739;
UPDATE `creature_template` SET `difficulty_entry_1` = 34361, `ScriptName` = 'npc_frost_bomb' WHERE `entry` = 34149;
UPDATE `creature_template` SET `speed_walk` = 0.15, `speed_run` = 0.15, `ScriptName` = 'npc_mimiron_flame_trigger' WHERE `entry` = 34363;
UPDATE `creature_template` SET `ScriptName` = 'npc_mimiron_flame_spread' WHERE `entry` = 34121;
-- CleanUp
DELETE FROM creature WHERE id IN (34071, 33856);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 34143;


-- -----------------------
-- Freya
-- -----------------------
UPDATE `creature_template` SET `baseattacktime` = 1500, `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_freya' WHERE `entry` = 32906;
UPDATE `creature_template` SET `speed_walk` = 1.6, `baseattacktime` = 1500, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 33360;
-- Elders
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `ScriptName` = 'npc_elder_brightleaf' WHERE `entry` = 32915;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `ScriptName` = 'npc_elder_ironbranch' WHERE `entry` = 32913;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `ScriptName` = 'npc_elder_stonebark' WHERE `entry` = 32914;
UPDATE `creature_template` SET `speed_walk` = 1.66666, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` IN (33393, 33392, 33391);
-- Iron roots
UPDATE `creature_template` SET `difficulty_entry_1` = 33397, `mechanic_immune_mask` = 650854239, `ScriptName` = 'npc_iron_roots' WHERE `entry` = 33168;
UPDATE `creature_template` SET `difficulty_entry_1` = 33396, `mechanic_immune_mask` = 650854239, `ScriptName` = 'npc_iron_roots' WHERE `entry` = 33088;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239 WHERE `entry` IN (33396, 33397);
-- Eonar Gift
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `ScriptName` = 'npc_eonars_gift' WHERE `entry` = 33228;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 33385;
-- Unstable Sun Beam
UPDATE `creature_template` SET `ScriptName` = 'npc_unstable_sun_beam' WHERE `entry` = 33050;
-- Sun Beam
UPDATE `creature_template` SET `ScriptName` = 'npc_sun_beam' WHERE `entry` = 33170;
-- Nature Bomb
UPDATE `creature_template` SET `ScriptName` = 'npc_nature_bomb' WHERE `entry` = 34129;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 194902;
-- Detonating Lasher
UPDATE `creature_template` SET `flags_extra` = 256, `ScriptName` = 'npc_detonating_lasher' WHERE `entry` = 32918;
UPDATE `creature_template` SET `flags_extra` = 256 WHERE `entry` = 33399;
-- Ancient Conservator
UPDATE `creature_template` SET `mechanic_immune_mask` = 650853979, `ScriptName` = 'npc_ancient_conservator' WHERE `entry` = 33203;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650853979 WHERE `entry` = 33376;
-- Healthy Spore
UPDATE `creature_template` SET `ScriptName` = 'npc_healthy_spore' WHERE `entry` = 33215;
-- Storm Lasher
UPDATE `creature_template` SET `ScriptName` = 'npc_storm_lasher' WHERE `entry` = 32919;
-- Snaplasher
UPDATE `creature_template` SET `ScriptName` = 'npc_snaplasher' WHERE `entry` = 32916;
-- Ancient Water Spirit
UPDATE `creature_template` SET `ScriptName` = 'npc_ancient_water_spirit' WHERE `entry` = 33202;
-- Cleanup
DELETE FROM `creature` WHERE `guid` = 136607 OR id = 33575;



-- Thorim
UPDATE `creature_template` SET `speed_walk` = 1.66667, `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'boss_thorim' WHERE `entry` = 32865;
UPDATE `creature_template` SET `speed_walk` = 1.66667, `baseattacktime` = 1500, `equipment_id` = 1844, `mechanic_immune_mask` = 650854239 WHERE `entry` = 33147;
DELETE FROM `creature` WHERE `id`=32865;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(32865, 603, 3, 1, 28977, 0, 2134.967, -298.962, 438.331, 1.57, 604800, 0, 0, 4183500, 425800, 0, 0);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=62042;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
('62042','62470','1','Thorim: Deafening Thunder');
-- Charge Orb
DELETE FROM conditions WHERE SourceEntry = 62016;
INSERT INTO `conditions` VALUES
('13','0','62016','0','18','1','33378','0','0','',NULL);
UPDATE `creature_template` SET `unit_flags` = 33685508 WHERE `entry` = 33378;
-- Gate
-- DELETE FROM `gameobject_scripts` WHERE `id`=55194;
-- INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
-- (55194, 0, 11, 34155, 15, '0', 0, 0, 0, 0);
DELETE FROM `gameobject_template` WHERE `entry`=194265;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
('194265','1','295','Lever','','','','0','16','3','0','0','0','0','0','0','0','0','6000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0');
UPDATE `gameobject` SET `id` = 194265, `rotation2` = 1, `rotation3` = 0, `spawntimesecs` = 7200, `animprogress` = 100 WHERE `guid` = 55194;
-- Cleanup
DELETE FROM `creature` WHERE `id` IN (32885, 32883, 32908, 32907, 32882, 33110, 32886, 32879, 32892, 33140, 33141, 33378, 32874, 32875)
OR guid IN (136694, 136695, 136666, 136706, 136754, 136653, 136756, 136757, 136725, 136718);
-- Pre adds
UPDATE `creature_template` SET `equipment_id` = 1849, `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32885;
UPDATE `creature_template` SET `equipment_id` = 1849 WHERE `entry` = 33153;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32883;
UPDATE `creature_template` SET `equipment_id` = 1847 WHERE `entry` = 33152;
UPDATE `creature_template` SET `equipment_id` = 1850, `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32908;
UPDATE `creature_template` SET `equipment_id` = 1850 WHERE `entry` = 33151;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32907;
UPDATE `creature_template` SET `equipment_id` = 1852 WHERE `entry` = 33150;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32882;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32886;
UPDATE `creature_template` SET `modelid1` = 16925, `modelid2` = 0 WHERE `entry`IN (33378, 32892);
-- Thorim Mini bosses
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_runic_colossus' WHERE `entry` = 32872;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_ancient_rune_giant' WHERE `entry` = 32873;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_sif' WHERE `entry` = 33196;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_arena_phase' WHERE `entry` IN (32876, 32904, 32878, 32877, 32874, 32875, 33110);
DELETE FROM `creature_addon` WHERE `guid`IN (136059, 136816);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('136059','0','0','0','1','0','40775 0'),
('136816','0','0','0','1','0','40775 0');
DELETE FROM creature_addon WHERE guid=138238;
DELETE FROM creature_addon WHERE guid=136757;

-- General Vezax
UPDATE `creature_template` SET `mechanic_immune_mask` = 617299803, `flags_extra` = 257, `ScriptName` = 'boss_general_vezax' WHERE `entry` = 33271;
UPDATE `creature_template` SET `baseattacktime` = 1500, `mechanic_immune_mask` = 617299803, `flags_extra` = 257 WHERE `entry` = 33449;
UPDATE `creature_model_info` SET `bounding_radius` = 0.62, `combat_reach` = 12 WHERE `modelid` = 28548;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'npc_saronite_vapors' WHERE `entry` = 33488;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `mechanic_immune_mask` = 650854235, `ScriptName` = 'npc_saronite_animus' WHERE `entry` = 33524;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `mechanic_immune_mask` = 650854235 WHERE `entry` IN (33789, 34152);
UPDATE `creature_model_info` SET `bounding_radius` = 0.62, `combat_reach` = 10 WHERE `modelid` = 28992;
-- CleanUp
DELETE FROM creature WHERE id = 33500;

-- Runeforged Sentry
UPDATE `creature_template` SET `spell1` = 64852, `spell2` = 64870, `spell3` = 64847, `AIName` = 'SmartAI' WHERE `entry` = 34234;
UPDATE `creature_template` SET `spell1` = 64852, `spell2` = 64870, `spell3` = 64847 WHERE `entry` = 34235;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34234);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34234);
INSERT INTO `smart_scripts` VALUES 
(34234, 0, 0, 0, 0, 0, 100, 0, 2000, 2000, 10000, 10000, 11, 64852, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Runeforged Sentry - Cast Flaming Rune'),
(34234, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 5000, 7000, 11, 64870, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Runeforged Sentry - Cast Lava Burst'),
(34234, 0, 2, 0, 0, 0, 100, 0, 2500, 3000, 12000, 12000, 11, 64847, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Runeforged Sentry - Cast Runed Flame Jets');

-- Steelforged Defender
UPDATE `creature_template` SET `spell1` = 62845, `spell2` = 57780, `spell3` = 50370, `AIName` = 'SmartAI' WHERE `entry` = 33236;
UPDATE `creature_template` SET `spell1` = 62845, `spell2` = 57780, `spell3` = 50370 WHERE `entry` = 34113;
UPDATE `creature` SET `spawntimesecs` = 604800 WHERE `id` IN (33236, 33838);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33236);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33236);
INSERT INTO `smart_scripts` VALUES 
(33236, 0, 0, 0, 0, 0, 100, 0, 4000, 6000, 15000, 20000, 11, 62845, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Steelforged Defender - Cast Hamstring'),
(33236, 0, 1, 0, 0, 0, 100, 0, 2000, 4000, 6000, 8000, 11, 57780, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Steelforged Defender - Cast Lightning Bolt'),
(33236, 0, 2, 0, 0, 0, 100, 0, 5000, 6000, 4000, 6000, 11, 50370, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Steelforged Defender - Cast Sunder Armor');

-- Mechagnome Battletank
UPDATE `creature_template` SET `spell1` = 64693, `spell2` = 64953, `AIName` = 'SmartAI' WHERE `entry` = 34164;
UPDATE `creature_template` SET `spell1` = 64693, `spell2` = 64953 WHERE `entry` = 34165;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34164);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34164);
INSERT INTO `smart_scripts` VALUES 
(34164, 0, 0, 0, 0, 0, 100, 0, 3000, 4000, 6000, 8000, 11, 64693, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Mechagnome Battletank - Cast Flame Cannon'),
(34164, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 15000, 20000, 11, 64953, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0,'Mechagnome Battletank - Cast Jump Attack');

-- Ulduar Colossus
UPDATE `creature_template` SET `spell1` = 62625, `AIName` = 'SmartAI' WHERE `entry` = 33237;
UPDATE `creature_template` SET `spell1` = 62625 WHERE `entry` = 34105;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33237);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33237);
INSERT INTO `smart_scripts` VALUES 
(33237, 0, 0, 0, 0, 0, 100, 0, 8000, 10000, 15000, 20000, 11, 62625, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Ulduar Colossus - Cast Ground Slam');

-- invisible triggers
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` IN (33377, 33742, 34286, 33500, 33406, 33575);

-- Molten Colossus
UPDATE `creature_template` SET `spell1` = 64697, `spell2` = 64698, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 34069;
UPDATE `creature_template` SET `spell1` = 64697, `spell2` = 64698, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 34185;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34069);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34069);
INSERT INTO `smart_scripts` VALUES 
(34069, 0, 0, 0, 0, 0, 100, 0, 6000, 10000, 10000, 12000, 11, 64697, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Molten Colossus - Cast Earthquake'),
(34069, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 15000, 20000, 11, 64698, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Molten Colossus - Cast Pyroblast');

-- Magma Rager
UPDATE `creature_template` SET `spell1` = 64773, `spell2` = 64746, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 34086;
UPDATE `creature_template` SET `spell1` = 64773, `spell2` = 64746, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 34201;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34086);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34086);
INSERT INTO `smart_scripts` VALUES 
(34086, 0, 0, 0, 0, 0, 100, 0, 2000, 4000, 6000, 8000, 11, 64773, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Magma Rager - Cast Fire Blast'),
(34086, 0, 1, 0, 0, 0, 100, 0, 8000, 16000, 15000, 25000, 11, 64746, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Magma Rager - Cast Superheated winds');
UPDATE `creature_template` SET `unit_flags` = 33718790, modelid1 = 11686, modelid2 = 0, `spell1` = 64724, `AIName` = 'SmartAI' WHERE `entry` = 34194;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34194);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34194);
INSERT INTO `smart_scripts` VALUES 
(34194, 0, 0, 0, 0, 0, 100, 0, 1000, 2000, 10000, 10000, 11, 64724, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Superheated Winds');

-- Forge Construct
UPDATE `creature_template` SET `spell1` = 64719, `spell2` = 64720, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 34085;
UPDATE `creature_template` SET `spell1` = 64719, `spell2` = 64721, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 34186;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34085);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34085);
INSERT INTO `smart_scripts` VALUES 
(34085, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 10000, 16000, 11, 64719, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0,'Forge Construct - Cast Charge'),
(34085, 0, 1, 0, 0, 0, 100, 2, 2000, 6000, 6000, 8000, 11, 64720, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Forge Construct - Cast Flame Emission 10'),
(34085, 0, 2, 0, 0, 0, 100, 4, 2000, 6000, 6000, 8000, 11, 64721, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Forge Construct - Cast Flame Emission 25');

-- XB-488 Disposalbot
UPDATE `creature_template` SET `spell1` = 65080, `spell2` = 65084, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 34273;
UPDATE `creature_template` SET `spell1` = 65104, `spell2` = 65084, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 34274;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34273);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34273);
INSERT INTO `smart_scripts` VALUES 
(34273, 0, 0, 0, 2, 0, 100, 0, 30, 30, 0, 0, 11, 65084, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'XB-488 Disposalbot - Cast Self Destruct'),
(34273, 0, 1, 0, 0, 0, 100, 2, 2000, 6000, 10000, 15000, 11, 65080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'XB-488 Disposalbot - Cast Cut Scrap Metal 10'),
(34273, 0, 2, 0, 0, 0, 100, 4, 2000, 6000, 10000, 15000, 11, 65104, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'XB-488 Disposalbot - Cast Cut Scrap Metal 25');

-- Parts Recovery Technician
UPDATE `creature_template` SET `spell1` = 65071, `spell2` = 65070, `mingold` = 7100, `maxgold` = 7600, `mechanic_immune_mask` = 33554432, `AIName` = 'SmartAI' WHERE `entry` = 34267;
UPDATE `creature_template` SET `spell1` = 65071, `spell2` = 65070, `mingold` = 14200, `maxgold` = 15600, `mechanic_immune_mask` = 33554432 WHERE `entry` = 34268;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34267);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34267);
INSERT INTO `smart_scripts` VALUES 
(34267, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 10000, 15000, 11, 65071, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0,'Parts Recovery Technician - Cast Mechano Kick'),
(34267, 0, 1, 0, 0, 0, 100, 0, 6000, 8000, 20000, 25000, 11, 65070, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Parts Recovery Technician - Cast Defense Matrix');

-- XD-175 Compactobot
UPDATE `creature_template` SET `spell1` = 65073, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 34271;
UPDATE `creature_template` SET `spell1` = 65106, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 34272;
UPDATE `creature_template` SET `mingold` = 7100, `maxgold` = 7600 WHERE `entry` = 34269;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34271);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34271);
INSERT INTO `smart_scripts` VALUES 
(34271, 0, 0, 0, 0, 0, 100, 2, 8000, 12000, 15000, 20000, 11, 65073, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0,'XD-175 Compactobot - Cast Trash Compactor 10'),
(34271, 0, 1, 0, 0, 0, 100, 4, 8000, 12000, 15000, 20000, 11, 65106, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0,'XD-175 Compactobot - Cast Trash Compactor 25');

-- Lightning Charged Iron Dwarf
UPDATE `creature_template` SET `spell1` = 64889, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 34199;
UPDATE `creature_template` SET `spell1` = 64975, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 34237;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34199);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34199);
INSERT INTO `smart_scripts` VALUES 
(34199, 0, 0, 0, 0, 0, 100, 2, 1000, 2000, 10000, 15000, 11, 64889, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Lightning Charged Iron Dwarf - Cast Lightning Charged 10'),
(34199, 0, 1, 0, 0, 0, 100, 4, 1000, 2000, 10000, 15000, 11, 64975, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Lightning Charged Iron Dwarf - Cast Lightning Charged 25');

-- Hardened Iron Golem
UPDATE `creature_template` SET `spell1` = 64877, `spell2` = 64874, `mingold` = 7100, `maxgold` = 7600, `mechanic_immune_mask` = 33554496, `AIName` = 'SmartAI' WHERE `entry` = 34190;
UPDATE `creature_template` SET `spell1` = 64877, `spell2` = 64967, `mingold` = 14200, `maxgold` = 15600, `mechanic_immune_mask` = 33554496 WHERE `entry` = 34229;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34190);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34190);
INSERT INTO `smart_scripts` VALUES 
(34190, 0, 0, 0, 0, 0, 100, 0, 4000, 8000, 25000, 30000, 11, 64877, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Hardened Iron Golem - Cast Harden Fists'),
(34190, 0, 1, 0, 0, 0, 100, 2, 5000, 7000, 20000, 30000, 11, 64874, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Hardened Iron Golem - Cast Rune Punch 10'),
(34190, 0, 2, 0, 0, 0, 100, 4, 5000, 7000, 20000, 30000, 11, 64967, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Hardened Iron Golem - Cast Rune Punch 25');

-- Iron Mender
UPDATE `creature_template` SET `spell1` = 64918, `spell2` = 64903, `spell3` = 64897, `mechanic_immune_mask` = 33554496, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 34198;
UPDATE `creature_template` SET `spell1` = 64971, `spell2` = 64970, `spell3` = 64968, `mechanic_immune_mask` = 33554496, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 34236;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34198);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34198);
INSERT INTO `smart_scripts` VALUES 
(34198, 0, 0, 0, 0, 0, 100, 2, 2000, 4000, 4000, 6000, 11, 64918, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Iron Mender - Cast Electro Shock 10'),
(34198, 0, 1, 0, 0, 0, 100, 4, 2000, 4000, 4000, 6000, 11, 64971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Iron Mender - Cast Electro Shock 25'),
(34198, 0, 2, 0, 0, 0, 100, 2, 3000, 6000, 10000, 15000, 11, 64903, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Iron Mender - Cast Fuse Lightning 10'),
(34198, 0, 3, 0, 0, 0, 100, 4, 3000, 6000, 10000, 15000, 11, 64970, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Iron Mender - Cast Fuse Lightning 25'),
(34198, 0, 4, 0, 0, 0, 100, 2, 10000, 25000, 30000, 45000, 11, 64897, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Iron Mender - Cast Fuse Metal 10'),
(34198, 0, 5, 0, 0, 0, 100, 4, 10000, 25000, 30000, 45000, 11, 64968, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Iron Mender - Cast Fuse Metal 25');

-- Rune Etched Sentry
UPDATE `creature_template` SET `spell1` = 64852, `spell2` = 64870, `spell3` = 64847, `mechanic_immune_mask` = 33554496, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 34196;
UPDATE `creature_template` SET `spell1` = 64852, `spell2` = 64870, `spell3` = 64847, `mechanic_immune_mask` = 33554496, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 34245;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34196);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34196);
INSERT INTO `smart_scripts` VALUES 
(34196, 0, 0, 0, 0, 0, 100, 0, 2000, 2000, 10000, 10000, 11, 64852, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Rune Etched Sentry - Cast Flaming Rune'),
(34196, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 5000, 7000, 11, 64870, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Rune Etched Sentry - Cast Lava Burst'),
(34196, 0, 2, 0, 0, 0, 100, 0, 2500, 3000, 12000, 15000, 11, 64847, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Rune Etched Sentry - Cast Runed Flame Jets');

-- Chamber Overseer
UPDATE `creature_template` SET `spell1` = 64820, `spell2` = 64825, `mingold` = 7100, `maxgold` = 7600, `mechanic_immune_mask` = 33554496, `AIName` = 'SmartAI' WHERE `entry` = 34197;
UPDATE `creature_template` SET `spell1` = 64943, `spell2` = 64944, `mingold` = 14200, `maxgold` = 15600, `mechanic_immune_mask` = 33554496 WHERE `entry` = 34226;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34197);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34197);
INSERT INTO `smart_scripts` VALUES 
(34197, 0, 0, 0, 0, 0, 100, 2, 4000, 8000, 6000, 8000, 11, 64820, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Chamber Overseer - Cast Devastating Leap 10'),
(34197, 0, 1, 0, 0, 0, 100, 4, 4000, 8000, 6000, 8000, 11, 64943, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Chamber Overseer - Cast Devastating Leap 25'),
(34197, 0, 2, 0, 0, 0, 100, 2, 10000, 12000, 8000, 12000, 11, 64825, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Chamber Overseer - Cast Staggering Roar 10'),
(34197, 0, 3, 0, 0, 0, 100, 4, 10000, 12000, 8000, 12000, 11, 64944, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Chamber Overseer - Cast Staggering Roar 25');

-- Storm Tempered Keeper
UPDATE `creature_template` SET `spell1` = 63541, `spell2` = 63630, `mingold` = 7100, `maxgold` = 7600, `mechanic_immune_mask` = 33554496, `AIName` = 'SmartAI' WHERE `entry` IN (33722, 33699);
UPDATE `creature_template` SET `spell1` = 63541, `spell2` = 63630, `mingold` = 14200, `maxgold` = 15600, `mechanic_immune_mask` = 33554496 WHERE `entry` IN (33723, 33700);
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (33722, 33699);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (33722, 33699);
INSERT INTO `smart_scripts` VALUES 
(33722, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 75, 63630, 33699, 0, 0, 0, 0, 11, 33699, 50, 0, 0, 0, 0, 0,'Storm Tempered Keeper - Cast Vengeful Surge on death'),
(33722, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 10000, 15000, 11, 63541, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Storm Tempered Keeper - Cast Forked Lightning'),
(33722, 0, 2, 0, 0, 0, 100, 0, 3000, 3000, 3000, 3000, 11, 63539, 0, 0, 0, 0, 0, 9, 33699, 15, 50, 0, 0, 0, 0,'Storm Tempered Keeper - Cast Separation Anxiety if separated'),
(33699, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 75, 63630, 33722, 0, 0, 0, 0, 11, 33722, 50, 0, 0, 0, 0, 0,'Storm Tempered Keeper - Cast Vengeful Surge on death'),
(33699, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 10000, 15000, 11, 63541, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Storm Tempered Keeper - Cast Forked Lightning'),
(33699, 0, 2, 0, 0, 0, 100, 0, 3000, 3000, 3000, 3000, 11, 63539, 0, 0, 0, 0, 0, 9, 33722, 15, 50, 0, 0, 0, 0,'Storm Tempered Keeper - Cast Separation Anxiety if separated');

-- Champion of Hodir
UPDATE `creature_template` SET `spell1` = 64639, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 34133;
UPDATE `creature_template` SET `spell1` = 64652, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 34139;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34133);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34133);
INSERT INTO `smart_scripts` VALUES 
(34133, 0, 0, 0, 0, 0, 100, 2, 3000, 6000, 12000, 16000, 11, 64639, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Champion of Hodir - Cast Stomp 10'),
(34133, 0, 1, 0, 0, 0, 100, 4, 3000, 6000, 12000, 16000, 11, 64652, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Champion of Hodir - Cast Stomp 25');

-- Winter Jormungar
UPDATE `creature_template` SET `spell1` = 64638, `AIName` = 'SmartAI' WHERE `entry` = 34137;
UPDATE `creature_template` SET `spell1` = 64638 WHERE `entry` = 34140;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34137);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34137);
INSERT INTO `smart_scripts` VALUES 
(34137, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 6000, 9000, 11, 64638, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Winter Jormungar - Cast Acidic Bite');

-- Winter Revenant
UPDATE `creature_template` SET `spell1` = 64642, `spell2` = 64643, `spell3` = 64644, `mechanic_immune_mask` = 33554496, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 34134;
UPDATE `creature_template` SET `spell1` = 64653, `spell2` = 64643, `spell3` = 64644, `mechanic_immune_mask` = 33554496, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 34141;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34134);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34134);
INSERT INTO `smart_scripts` VALUES 
(34134, 0, 0, 0, 0, 0, 100, 2, 8000, 12000, 15000, 20000, 11, 64642, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Winter Revenant - Cast Blizzard 10'),
(34134, 0, 1, 0, 0, 0, 100, 4, 8000, 12000, 15000, 20000, 11, 64653, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Winter Revenant - Cast Blizzard 25'),
(34134, 0, 2, 0, 0, 0, 100, 0, 3000, 5000, 10000, 12000, 11, 64643, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Winter Revenant - Cast Whirling Strike'),
(34134, 0, 3, 0, 0, 0, 100, 0, 15000, 20000, 60000, 75000, 11, 64644, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Winter Revenant - Cast Shield of the Winter Revenant');

-- Winter Rumbler
UPDATE `creature_template` SET `spell1` = 64645, `spell2` = 64647, `mingold` = 7100, `maxgold` = 7600, `mechanic_immune_mask` = 33554496, `AIName` = 'SmartAI' WHERE `entry` = 34135;
UPDATE `creature_template` SET `spell1` = 64645, `spell2` = 64654, `mingold` = 14200, `maxgold` = 15600, `mechanic_immune_mask` = 33554496 WHERE `entry` = 34142;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34135);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34135);
INSERT INTO `smart_scripts` VALUES 
(34135, 0, 0, 0, 0, 0, 100, 0, 6000, 12000, 10000, 16000, 11, 64645, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Winter Rumbler - Cast Cone of Cold'),
(34135, 0, 1, 0, 0, 0, 100, 2, 3000, 6000, 8000, 12000, 11, 64647, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Winter Rumbler - Cast Snow Blindness 10'),
(34135, 0, 2, 0, 0, 0, 100, 4, 3000, 6000, 8000, 12000, 11, 64654, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Winter Rumbler - Cast Snow Blindness 25');

-- Guardian Lasher
UPDATE `creature_template` SET `spell1` = 63007, `spell2` = 63047, `mingold` = 7100, `maxgold` = 7600, `mechanic_immune_mask` = 33554496, `AIName` = 'SmartAI' WHERE `entry` = 33430;
UPDATE `creature_template` SET `spell1` = 63007, `spell2` = 63550, `mingold` = 14200, `maxgold` = 15600, `mechanic_immune_mask` = 33554496 WHERE `entry` = 33732;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33430);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33430);
INSERT INTO `smart_scripts` VALUES 
(33430, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 75, 63007, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Guardian Lasher - Cast Guardian Pheromones on aggro'),
(33430, 0, 1, 0, 0, 0, 100, 2, 3000, 6000, 8000, 12000, 11, 63047, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Guardian Lasher - Cast Guardian''s Lash 10'),
(33430, 0, 2, 0, 0, 0, 100, 4, 3000, 6000, 8000, 12000, 11, 63550, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Guardian Lasher - Cast Guardian''s Lash 25');

-- Forest Swarmer
UPDATE `creature_template` SET `spell1` = 63059, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33431;
UPDATE `creature_template` SET `spell1` = 63059, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33731;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33431);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33431);
INSERT INTO `smart_scripts` VALUES 
(33431, 0, 0, 0, 0, 0, 100, 0, 3000, 9000, 10000, 20000, 11, 63059, 0, 0, 0, 0, 0, 11, 33430, 40, 0, 0, 0, 0, 0,'Forest Swarmer - Cast Pollinate');
DELETE FROM conditions WHERE SourceEntry = 63059;

-- Guardian of Life
UPDATE `creature_template` SET `spell1` = 63226, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33528;
UPDATE `creature_template` SET `spell1` = 63551, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33733;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33528);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33528);
INSERT INTO `smart_scripts` VALUES 
(33528, 0, 0, 0, 0, 0, 100, 2, 3000, 9000, 15000, 20000, 11, 63226, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Guardian of Life - Cast Poison Breath 10'),
(33528, 0, 1, 0, 0, 0, 100, 4, 3000, 9000, 15000, 20000, 11, 63551, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Guardian of Life - Cast Poison Breath 25');

-- Nature's Blade
UPDATE `creature_template` SET `spell1` = 63247, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33527;
UPDATE `creature_template` SET `spell1` = 63568, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33741;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33527);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33527);
INSERT INTO `smart_scripts` VALUES 
(33527, 0, 0, 0, 0, 0, 100, 2, 3000, 9000, 18000, 24000, 11, 63247, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Nature Blade - Cast Living Tsunami 10'),
(33527, 0, 1, 0, 0, 0, 100, 4, 3000, 9000, 18000, 24000, 11, 63568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Nature Blade - Cast Living Tsunami 25');

-- Ironroot Lasher
UPDATE `creature_template` SET `spell1` = 63240, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33526;
UPDATE `creature_template` SET `spell1` = 63553, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33734;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33526);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33526);
INSERT INTO `smart_scripts` VALUES 
(33526, 0, 0, 0, 0, 0, 100, 2, 3000, 8000, 12000, 16000, 11, 63240, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Ironroot Lasher - Cast Ironroot Thorns 10'),
(33526, 0, 1, 0, 0, 0, 100, 4, 3000, 8000, 12000, 16000, 11, 63553, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Ironroot Lasher - Cast Ironroot Thorns 25');

-- Mangrove Ent
UPDATE `creature_template` SET `spell1` = 63272, `spell2` = 63242, `spell3` = 63241, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33525;
UPDATE `creature_template` SET `spell1` = 63272, `spell2` = 63556, `spell3` = 63554, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33735;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33525);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33525);
INSERT INTO `smart_scripts` VALUES 
(33525, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 16000, 20000, 11, 63272, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Mangrove Ent - Cast Hurricane'),
(33525, 0, 1, 0, 0, 0, 100, 2, 4000, 6000, 12000, 16000, 11, 63242, 0, 0, 0, 0, 0, 11, 0, 30, 0, 0, 0, 0, 0,'Mangrove Ent - Cast Nourish 10'),
(33525, 0, 2, 0, 0, 0, 100, 4, 4000, 6000, 12000, 16000, 11, 63556, 0, 0, 0, 0, 0, 11, 0, 30, 0, 0, 0, 0, 0,'Mangrove Ent - Cast Nourish 25'),
(33525, 0, 3, 0, 0, 0, 100, 2, 20000, 25000, 20000, 25000, 11, 63241, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Mangrove Ent - Cast Tranquility 10'),
(33525, 0, 4, 0, 0, 0, 100, 4, 20000, 25000, 20000, 25000, 11, 63554, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Mangrove Ent - Cast Tranquility 25');

-- Misguided Nymph
UPDATE `creature_template` SET `spell1` = 63082, `spell2` = 63111, `spell3` = 63136, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33355;
UPDATE `creature_template` SET `spell1` = 63559, `spell2` = 63562, `spell3` = 63564, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33737;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33355);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33355);
INSERT INTO `smart_scripts` VALUES 
(33355, 0, 0, 0, 0, 0, 100, 2, 8000, 12000, 16000, 20000, 11, 63082, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Misguided Nymph - Cast Bind Life 10'),
(33355, 0, 1, 0, 0, 0, 100, 4, 8000, 12000, 16000, 20000, 11, 63559, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Misguided Nymph - Cast Bind Life 25'),
(33355, 0, 2, 0, 0, 0, 100, 2, 4000, 6000, 12000, 16000, 11, 63111, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Misguided Nymph - Cast Frost Spear 10'),
(33355, 0, 3, 0, 0, 0, 100, 4, 4000, 6000, 12000, 16000, 11, 63562, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Misguided Nymph - Cast Frost Spear 25'),
(33355, 0, 4, 0, 0, 0, 100, 2, 15000, 20000, 15000, 20000, 11, 63136, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Misguided Nymph - Cast Winter''s Embrace 10'),
(33355, 0, 5, 0, 0, 0, 100, 4, 15000, 20000, 15000, 20000, 11, 63564, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Misguided Nymph - Cast Winter''s Embrace 25');

-- Corrupted Servitor
UPDATE `creature_template` SET `spell1` = 63169, `spell2` = 63149, `mingold` = 7100, `maxgold` = 7600, `mechanic_immune_mask` = 33554496, `AIName` = 'SmartAI' WHERE `entry` = 33354;
UPDATE `creature_template` SET `spell1` = 63549, `spell2` = 63149, `mingold` = 14200, `maxgold` = 15600, `mechanic_immune_mask` = 33554496 WHERE `entry` = 33729;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33354);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33354);
INSERT INTO `smart_scripts` VALUES 
(33354, 0, 0, 0, 0, 0, 100, 2, 2000, 4000, 16000, 20000, 11, 63169, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Corrupted Servitor - Cast Petrify Joints 10'),
(33354, 0, 1, 0, 0, 0, 100, 4, 2000, 4000, 16000, 20000, 11, 63549, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Corrupted Servitor - Cast Petrify Joints 25'),
(33354, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 12000, 16000, 11, 63149, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Corrupted Servitor - Cast Violent Earth');

-- Arachnopod Destroyer
UPDATE `creature_template` SET `spell1` = 64717, `spell2` = 64776, `mingold` = 7100, `maxgold` = 7600, `mechanic_immune_mask` = 33554496, `AIName` = 'SmartAI' WHERE `entry` = 34183;
UPDATE `creature_template` SET `spell1` = 64717, `spell2` = 64776, `mingold` = 14200, `maxgold` = 15600, `mechanic_immune_mask` = 33554496 WHERE `entry` = 34214;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34183);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34183);
INSERT INTO `smart_scripts` VALUES 
(34183, 0, 0, 0, 0, 0, 100, 0, 2000, 4000, 12000, 16000, 11, 64717, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Arachnopod Destroyer - Cast Flame Spray'),
(34183, 0, 1, 0, 0, 0, 100, 0, 8000, 10000, 12000, 16000, 11, 64776, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Arachnopod Destroyer - Cast Machine Gun');

-- Boomer XP-500
UPDATE `creature_template` SET `spell1` = 55714, `AIName` = 'SmartAI' WHERE `entry` = 34192;
UPDATE `creature_template` SET `spell1` = 55714 WHERE `entry` = 34216;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34192);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34192);
INSERT INTO `smart_scripts` VALUES 
(34192, 0, 0, 0, 9, 0, 100, 0, 0, 2, 1000, 1000, 11, 55714, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Boomer XP-500 - Explode');

-- Clockwork Sapper
UPDATE `creature_template` SET `spell1` = 64740, `mingold` = 7100, `maxgold` = 7600, `mechanic_immune_mask` = 33554496, `AIName` = 'SmartAI' WHERE `entry` = 34193;
UPDATE `creature_template` SET `spell1` = 64740, `mingold` = 14200, `maxgold` = 15600, `mechanic_immune_mask` = 33554496 WHERE `entry` = 34220;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=34193);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=34193);
INSERT INTO `smart_scripts` VALUES 
(34193, 0, 0, 0, 0, 0, 100, 0, 2000, 6000, 12000, 16000, 11, 64740, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Clockwork Sapper - Cast Energy Sap');

-- Twilight Adherent
UPDATE `creature_template` SET `spell1` = 64663, `spell2` = 63760, `spell3` = 13704, `equipment_id` = 1848, `mechanic_immune_mask` = 33554513, `unit_class` = 2, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33818;
UPDATE `creature_template` SET `spell1` = 64663, `spell2` = 63760, `spell3` = 13704, `equipment_id` = 1848, `mechanic_immune_mask` = 33554513, `unit_class` = 2, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33827;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33818);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33818);
INSERT INTO `smart_scripts` VALUES 
(33818, 0, 0, 0, 0, 0, 100, 0, 10000, 16000, 16000, 20000, 11, 64663, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Twilight Adherent - Cast Arcane Burst'),
(33818, 0, 1, 0, 0, 0, 100, 0, 8000, 10000, 16000, 20000, 11, 63760, 0, 0, 0, 0, 0, 11, 0, 30, 0, 0, 0, 0, 0,'Twilight Adherent - Cast Greater Heal'),
(33818, 0, 2, 0, 0, 0, 100, 0, 2000, 4000, 15000, 18000, 11, 13704, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Twilight Adherent - Cast Psychic Scream');

-- Twilight Guardian
UPDATE `creature_template` SET `spell1` = 52719, `spell2` = 62317, `spell3` = 63757, `mechanic_immune_mask` = 33554513, `equipment_id` = 1852, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33822;
UPDATE `creature_template` SET `spell1` = 52719, `spell2` = 62317, `spell3` = 63757, `mechanic_immune_mask` = 33554513, `equipment_id` = 1852, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33828;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33822);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33822);
INSERT INTO `smart_scripts` VALUES 
(33822, 0, 0, 0, 0, 0, 100, 0, 6000, 10000, 8000, 10000, 11, 52719, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Twilight Guardian - Cast Concussion Blow'),
(33822, 0, 1, 0, 0, 0, 100, 0, 2000, 3000, 3000, 6000, 11, 62317, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Twilight Guardian - Cast Devastate'),
(33822, 0, 2, 0, 0, 0, 100, 0, 8000, 10000, 14000, 16000, 11, 63757, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Twilight Guardian - Cast Thunderclap');

-- Twilight Shadowblade
UPDATE `creature_template` SET `spell1` = 63753, `mechanic_immune_mask` = 33554513,  `equipment_id` = 1862, `baseattacktime` = 1000, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33824;
UPDATE `creature_template` SET `spell1` = 63753, `mechanic_immune_mask` = 33554513,  `equipment_id` = 1862, `baseattacktime` = 1000, `mingold` = 7100, `maxgold` = 7600 WHERE `entry` = 33831;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33824);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33824);
INSERT INTO `smart_scripts` VALUES 
(33824, 0, 0, 0, 0, 0, 100, 0, 6000, 8000, 12000, 16000, 11, 63753, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Twilight Shadowblade - Cast Fan of Knives');

-- Twilight Slayer
UPDATE `creature_template` SET `spell1` = 63784, `spell2` = 35054, `mechanic_immune_mask` = 33554513, `equipment_id` = 1847, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33823;
UPDATE `creature_template` SET `spell1` = 63784, `spell2` = 35054, `mechanic_immune_mask` = 33554513, `equipment_id` = 1847, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33832;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33823);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33823);
INSERT INTO `smart_scripts` VALUES 
(33823, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 12000, 16000, 11, 35054, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0,'Twilight Slayer - Cast Mortal Strike'),
(33823, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 20000, 25000, 11, 63784, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Twilight Slayer - Cast Bladestorm');

UPDATE `creature_template` SET `equipment_id` = 1849 WHERE `entry` = 32885;
UPDATE `creature_template` SET `equipment_id` = 1850 WHERE `entry` = 32908;

-- Faceless Horror
UPDATE `creature_template` SET `spell1` = 64429, `spell2` = 63722, `spell3` = 63710, `spell4` = 63703, `mechanic_immune_mask` = 33554513, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33772;
UPDATE `creature_template` SET `spell1` = 64429, `spell2` = 63722, `spell3` = 63710, `spell4` = 63703, `mechanic_immune_mask` = 33554513, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33773;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33772);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33772);
INSERT INTO `smart_scripts` VALUES 
(33772, 0, 0, 0, 0, 0, 100, 0, 18000, 20000, 16000, 20000, 11, 64429, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0,'Faceless Horror - Cast Death Grip'),
(33772, 0, 1, 0, 0, 0, 100, 0, 2000, 4000, 10000, 12000, 11, 63722, 0, 0, 0, 0, 0, 17, 10, 40, 0, 0, 0, 0, 0,'Faceless Horror - Cast Shadow Crash'),
(33772, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 75, 63703, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Faceless Horror - add aura Void Wave on aggro');

-- Twilight Frost Mage
UPDATE `creature_template` SET `spell1` = 64663, `spell2` = 63758, `spell3` = 63912, `spell4` = 63913, `equipment_id` = 1849, `mechanic_immune_mask` = 33554513, `unit_class` = 2, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33819;
UPDATE `creature_template` SET `spell1` = 64663, `spell2` = 63758, `spell3` = 63912, `spell4` = 63913, `equipment_id` = 1849, `mechanic_immune_mask` = 33554513, `unit_class` = 2, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33829;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33819);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33819);
INSERT INTO `smart_scripts` VALUES 
(33819, 0, 0, 0, 0, 0, 100, 0, 10000, 16000, 16000, 20000, 11, 64663, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Twilight Frost Mage - Cast Arcane Burst'),
(33819, 0, 1, 0, 0, 0, 100, 0, 1000, 2000, 6000, 8000, 11, 63913, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Twilight Frost Mage - Cast Frostbolt'),
(33819, 0, 2, 0, 0, 0, 100, 0, 2000, 4000, 10000, 16000, 11, 63758, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Twilight Frost Mage - Cast Frost Bolt Volley'),
(33819, 0, 3, 0, 0, 0, 100, 0, 8000, 10000, 12000, 16000, 11, 63912, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Twilight Frost Mage - Cast Frost Nova');

-- Twilight Pyromancer
UPDATE `creature_template` SET `spell1` = 64663, `spell2` = 63789, `spell3` = 63775, `equipment_id` = 1848, `mechanic_immune_mask` = 33554513, `unit_class` = 2, `mingold` = 7100, `maxgold` = 7600, `AIName` = 'SmartAI' WHERE `entry` = 33820;
UPDATE `creature_template` SET `spell1` = 64663, `spell2` = 63789, `spell3` = 63775, `equipment_id` = 1848, `mechanic_immune_mask` = 33554513, `unit_class` = 2, `mingold` = 14200, `maxgold` = 15600 WHERE `entry` = 33830;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33820);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33820);
INSERT INTO `smart_scripts` VALUES 
(33820, 0, 0, 0, 0, 0, 100, 0, 10000, 16000, 16000, 20000, 11, 64663, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Twilight Pyromancer - Cast Arcane Burst'),
(33820, 0, 1, 0, 0, 0, 100, 0, 1000, 2000, 6000, 8000, 11, 63789, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Twilight Pyromancer - Cast Fireball'),
(33820, 0, 2, 0, 0, 0, 100, 0, 2000, 4000, 10000, 16000, 11, 63775, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0,'Twilight Pyromancer - Cast Flamestrike');

-- Enslaved Fire Elemental
UPDATE `creature_template` SET `spell1` = 38064, `spell2` = 63778, `mechanic_immune_mask` = 33554513, `AIName` = 'SmartAI' WHERE `entry` = 33838;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=33838);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33838);
INSERT INTO `smart_scripts` VALUES 
(33838, 0, 0, 0, 0, 0, 100, 0, 4000, 8000, 10000, 14000, 11, 38064, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Enslaved Fire Elemental - Cast Blast Wave'),
(33838, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 75, 63778, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Enslaved Fire Elemental - Cast Fire Shield on aggro');

-- Boom Bot
UPDATE `creature_template` SET `spell1` = 63801, `AIName` = 'SmartAI' WHERE `entry` = 33836;
UPDATE `creature_template` SET `spell1` = 63801 WHERE `entry` = 34218;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33836);
INSERT INTO `smart_scripts` VALUES 
(33836, 0, 0, 0, 9, 0, 100, 0, 0, 2, 1000, 1000, 11, 63801, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Boom Bot - Explode');

-- Rubble
UPDATE `creature_template` SET `spell1` = 38064, `AIName` = 'SmartAI' WHERE `entry` = 33768;
UPDATE `creature_template` SET `spell1` = 63978 WHERE `entry` = 33908;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33768);
INSERT INTO `smart_scripts` VALUES 
(33768, 0, 0, 0, 0, 0, 100, 2, 4000, 8000, 10000, 12000, 11, 38064, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Rubble - Cast Stone Nova 10'),
(33768, 0, 1, 0, 0, 0, 100, 4, 4000, 8000, 10000, 12000, 11, 63978, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Rubble - Cast Stone Nova 25');

-- Cleanup
DELETE FROM `spelldifficulty_dbc` WHERE `id` > 3194;

-- Razorscale
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3195','64758','64759','0','0'),
('3196','63809','64696','0','0'),
('3197','46763','64062','0','0'),
('3198','63807','63808','0','0');

-- XT-002
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3199','63018','65121','0','0'),
('3200','63024','64234','0','0'),
('3201','65737','64193','0','0'),
('3202','64203','64235','0','0'),
('3203','64227','64236','0','0');

-- Assembly of Iron
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3204','61890','63498','0','0'),
('3205','61903','63493','0','0'),
('3206','44008','63494','0','0'),
('3207','64637','61888','0','0'),
('3208','62274','63489','0','0'),
('3209','62269','63490','0','0'),
('3210','62054','63491','0','0'),
('3211','61879','63479','0','0'),
('3212','61869','63481','0','0'),
('3213','61915','63483','0','0'),
('3214','61887','63486','0','0');

-- Kologarn
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3215','63629','63979','0','0'),
('3216','63356','64003','0','0'),
('3217','63573','64006','0','0'),
('3218','63716','64005','0','0'),
('3219','62030','63980','0','0'),
('3220','63783','63982','0','0'),
('3221','64290','64292','0','0'),
('3222','62056','63985','0','0'),
('3223','63766','63983','0','0'),
('3224','63347','63977','0','0');

-- Auriaya
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3225','64389','64678','0','0'),
('3226','64422','64688','0','0'),
('3227','64496','64674','0','0'),
('3228','64478','64669','0','0'),
('3229','64458','64676','0','0'),
('3230','64666','64374','0','0'),
('3231','64375','64667','0','0');

-- Hodir
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3232','62478','63512','0','0'),
('3233','65123','65133','0','0');

-- Thorim
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3234','62131','64390','0','0');

-- Freya
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3235','62528','62892','0','0'),
('3236','62623','62872','0','0'),
('3237','62437','62859','0','0'),
('3238','62283','62930','0','0'),
('3239','62451','62865','0','0'),
('3240','62950','62955','0','0'),
('3241','62952','62956','0','0'),
('3242','62953','62957','0','0'),
('3243','62954','62958','0','0'),
('3244','62598','62937','0','0'),
('3245','62589','63571','0','0'),
('3246','62648','62939','0','0'),
('3247','62649','62938','0','0'),
('3248','62664','64191','0','0'),
('3249','64587','64650','0','0'),
('3250','62584','64185','0','0'),
('3251','62337','62933','0','0'),
('3252','62325','62932','0','0'),
('3253','62310','62928','0','0'),
('3254','64060','64071','0','0'),
('3255','62438','62861','0','0'),
('3256','62217','62922','0','0'),
('3257','62240','62920','0','0');

-- Mimiron
INSERT INTO `spelldifficulty_dbc` (`id`, `spellid0`, `spellid1`, `spellid2`, `spellid3`) VALUES 
('3258','63666','65026','0','0'),
('3259','62997','64529','0','0'),
('3260','66351','63009','0','0'),
('3261','63677','64533','0','0'),
('3262','64348','64536','0','0'),
('3263','63689','64535','0','0');

-- Leviathan Doors
DELETE FROM `gameobject` WHERE `id` = '194905';
DELETE FROM `gameobject` WHERE `guid` = '35528';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('35528','194905','603','1','1','401.308','-13.8236','409.524','3.14159','0','0','0','1','180','255','0');

-- Thorim's Hammer
DELETE FROM `conditions` WHERE `SourceEntry` = 62911;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13','0','62911','0','18','1','33365','0','0','',"Thorim Hammer");

-- Mimiron's Inferno
DELETE FROM `conditions` WHERE `SourceEntry` = 62909;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13','0','62909','0','18','1','33370','0','0','',"Mimiron Inferno");

-- Hodir's Fury
DELETE FROM `conditions` WHERE `SourceEntry` = 62533;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13','0','62533','0','18','1','33212','0','0','',"Hodirs Fury");

-- Freya's Ward
DELETE FROM `conditions` WHERE `SourceEntry` = 62906;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13','0','62906','0','18','1','33367','0','0','',"Freya Ward");


UPDATE `creature_template` SET `speed_walk` = 2 WHERE `entry` IN (33370, 33212);
DELETE FROM creature WHERE guid IN (137479, 137480);

-- Boom Bot
DELETE FROM `smart_scripts` WHERE (`entryorguid`=33836);
INSERT INTO `smart_scripts` VALUES 
(33836, 0, 0, 1, 9, 0, 100, 1, 0, 2, 0, 0, 11, 63801, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Boom Bot - Explode'),
(33836, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Boom Bot - despawn');

-- Salvaged Chopper has no heroic entry
UPDATE `creature_template` SET `difficulty_entry_1` = 0 WHERE `entry` = 33062;

DELETE FROM `creature` WHERE `id` IN (33060, 33062, 33109);

-- Flame Leviathan
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235 WHERE `entry` IN (33113, 34003);

-- Mimiron
UPDATE `creature_template` SET `exp` = 0 WHERE `entry` IN (33432, 34106);
UPDATE `creature_template` SET `difficulty_entry_1` = 34114 WHERE `entry` = 33855;

-- Remove Chest spawned
DELETE FROM `gameobject` WHERE `id` IN (195046, 195047, 194307, 194308);
-- XT-002 loot
DELETE FROM `creature_loot_template` WHERE `entry`=33293;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('33293','45624','100','1','0','1','1'),
('33293','1','100','1','0','-34121','2'),
('33293','45867','0','2','2','1','1'),
('33293','45868','0','2','2','1','1'),
('33293','45869','0','2','2','1','1'),
('33293','45870','0','2','2','1','1'),
('33293','45871','0','2','2','1','1');

DELETE FROM `reference_loot_template` WHERE `entry`=34121;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('34121','45675','0','1','1','1','1'),
('34121','45676','0','1','1','1','1'),
('34121','45677','0','1','1','1','1'),
('34121','45679','0','1','1','1','1'),
('34121','45680','0','1','1','1','1'),
('34121','45682','0','1','1','1','1'),
('34121','45685','0','1','1','1','1'),
('34121','45686','0','1','1','1','1'),
('34121','45687','0','1','1','1','1'),
('34121','45694','0','1','1','1','1');


-- Assembly of Iron Hardmode loot

DELETE FROM `creature_loot_template` WHERE `entry` IN (32857, 32927, 32867);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('32857','45624','100','2','0','1','1'),
-- ('32857','1','100','1','0','-34122','2'),
-- ('32927','45624','100','2','0','2','2'),
-- ('32927','1','100','1','0','-34122','3'),
-- ('32927','45506','100','2','0','1','1'),
('32867','45624','100','4','0','1','1'),
('32867','1','100','1','0','-34122','2'),
-- ('32867','45506','0','4','0','1','1'),
('32867','45447','0','4','2','1','1'),
('32867','45448','0','4','2','1','1'),
('32867','45449','0','4','2','1','1'),
('32867','45455','0','4','2','1','1'),
('32867','45456','0','4','2','1','1');

DELETE FROM `reference_loot_template` WHERE `entry`=34122;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('34122','45322','0','1','1','1','1'),
('34122','45324','0','1','1','1','1'),
('34122','45329','0','1','1','1','1'),
('34122','45330','0','1','1','1','1'),
('34122','45331','0','1','1','1','1'),
('34122','45332','0','1','1','1','1'),
('34122','45333','0','1','1','1','1'),
('34122','45378','0','1','1','1','1'),
('34122','45418','0','1','1','1','1'),
('34122','45423','0','1','1','1','1');

UPDATE creature_loot_template SET lootmode = 4 WHERE entry = 33693 AND item IN (45506, 45624);
UPDATE creature_loot_template SET lootmode = 2 WHERE entry IN (33694, 33692) AND item = 45624;

-- Hodir

-- DELETE FROM `reference_loot_template` WHERE entry = 34173;
-- INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('34173','45450','0','1','1','1','1'),
-- ('34173','45451','0','1','1','1','1'),
-- ('34173','45452','0','1','1','1','1'),
-- ('34173','45453','0','1','1','1','1'),
-- ('34173','45454','0','1','1','1','1');

-- DELETE FROM `gameobject_loot_template` WHERE entry = 26946;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('26946','1','100','1','0','-34173','2'),
-- ('26946','2','10','1','0','-34154','1'),
-- ('26946','45038','8','1','0','1','1'),
-- ('26946','45087','75','1','0','1','1'),
-- ('26946','45624','100','1','0','1','1'),
-- ('26946','45632','0','1','1','1','1'),
-- ('26946','45633','0','1','1','1','1'),
-- ('26946','45634','0','1','1','1','1');

-- Hodir Harmode loot

UPDATE script_texts SET `type` = 2 WHERE entry = -1603218;
DELETE FROM `gameobject` WHERE `id`=194200;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(194200, 603, 1, 1, 2038.29, -200.702, 432.687, 3.12232, 0, 0, 1, 0, 300, 0, 1);

-- DELETE FROM `gameobject_loot_template` WHERE entry=27069;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('27069','45624','100','1','0','1','1'),
-- ('27069','45888','0','1','1','1','1'),
-- ('27069','45886','0','1','1','1','1'),
-- ('27069','45887','0','1','1','1','1'),
-- ('27069','45877','0','1','1','1','1'),
-- ('27069','45876','0','1','1','1','1'),
-- ('27069','45786','-100','1','0','1','1');

DELETE FROM `gameobject` WHERE `id`=194201;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(NULL, 194201, 603, 2, 1, 2038.29, -200.702, 432.687, 3.12232, 0, 0, 1, 0, 604800, 0, 1);
UPDATE `gameobject_template` SET `flags` = 16 WHERE `entry` = 194201;
UPDATE gameobject_loot_template SET lootmode = 1 WHERE entry = 26950 AND lootmode = 2;


-- Freya
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 33215;
-- DELETE FROM `gameobject_loot_template` WHERE `entry` IN (27078, 27079, 27080, 27081);
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('27078','1','100','1','0','-34125','1'),
-- ('27078','2','100','1','0','-34105','1'),
-- ('27078','45624','100','1','0','1','1'),
-- ('27078','45087','100','1','0','1','1'),
-- ('27078','45644','0','1','1','1','1'),
-- ('27078','45645','0','1','1','1','1'),
-- ('27078','45646','0','1','1','1','1'),
-- ('27078','46110','100','1','0','1','1'),
-- ('27079','1','100','1','0','-34125','2'),
-- ('27079','2','100','1','0','-34105','1'),
-- ('27079','45624','100','1','0','1','1'),
-- ('27079','45087','100','1','0','1','1'),
-- ('27079','45644','0','1','1','1','1'),
-- ('27079','45645','0','1','1','1','1'),
-- ('27079','45646','0','1','1','1','1'),
-- ('27079','46110','100','1','0','1','1'),
-- ('27080','1','100','1','0','-34125','2'),
-- ('27080','2','100','1','0','-34105','1'),
-- ('27080','45624','100','1','0','2','2'),
-- ('27080','45087','100','1','0','1','1'),
-- ('27080','45644','0','1','1','1','1'),
-- ('27080','45645','0','1','1','1','1'),
-- ('27080','45646','0','1','1','1','1'),
-- ('27080','46110','100','1','0','1','1');
-- ('27081','1','100','1','0','-34125','1'),
-- ('27081','2','100','1','0','-34105','1'),
-- ('27081','45943','0','1','2','1','1'),
-- ('27081','45945','0','1','2','1','1'),
-- ('27081','45946','0','1','2','1','1'),
-- ('27081','45294','0','1','2','1','1'),
-- ('27081','45947','0','1','2','1','1'),
-- ('27081','45624','100','1','0','1','1'),
-- ('27081','45087','100','1','0','1','1'),
-- ('27081','45644','0','1','1','1','1'),
-- ('27081','45645','0','1','1','1','1'),
-- ('27081','45646','0','1','1','1','1'),
-- ('27081','45788','-100','1','0','1','1'),
-- ('27081','46110','100','1','0','1','1');

-- DELETE FROM `reference_loot_template` WHERE `entry`=34125;
-- INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('34125','45934','0','1','1','1','1'),
-- ('34125','45935','0','1','1','1','1'),
-- ('34125','45936','0','1','1','1','1'),
-- ('34125','45940','0','1','1','1','1'),
-- ('34125','45941','0','1','1','1','1');


-- DELETE FROM `gameobject_template` WHERE entry IN (194326, 194328, 194329, 194330, 194331);
-- INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
-- ('194326','3','8628','Freya\'s Gift','','','','0','0','2','0','0','0','0','0','0','1634','27080','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','12340'),
-- ('194328','3','8628','Freya\'s Gift','','','','0','0','2','0','0','0','0','0','0','1634','27087','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','12340'),
-- ('194329','3','8628','Freya\'s Gift','','','','0','0','2','0','0','0','0','0','0','1634','27088','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','12340'),
-- ('194330','3','8628','Freya\'s Gift','','','','0','0','2','0','0','0','0','0','0','1634','27089','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','12340'),
-- ('194331','3','8628','Freya\'s Gift','','','','0','0','2','0','0','0','0','0','0','1634','27090','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','12340');

-- DELETE FROM `reference_loot_template` WHERE entry = 34176;
-- INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('34176','45479','0','1','1','1','1'),
-- ('34176','45483','0','1','1','1','1'),
-- ('34176','45482','0','1','1','1','1'),
-- ('34176','45481','0','1','1','1','1'),
-- ('34176','45480','0','1','1','1','1');

-- DELETE FROM `gameobject_loot_template` WHERE entry = 27087;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('27087','1','100','1','0','-34176','2'),
-- ('27087','2','10','1','0','-34154','1'),
-- ('27087','45624','100','1','0','1','1'),
-- ('27087','45038','18','1','0','1','1'),
-- ('27087','45087','75','1','0','1','1'),
-- ('27087','45653','0','1','1','1','1'),
-- ('27087','45654','0','1','1','1','1'),
-- ('27087','45655','0','1','1','1','1'),
-- ('27087','46110','70','1','0','1','1');

-- DELETE FROM `gameobject_loot_template` WHERE entry = 27088;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('27088','1','100','1','0','-34176','3'),
-- ('27088','2','10','1','0','-34154','1'),
-- ('27088','45624','100','1','0','1','1'),
-- ('27088','45038','18','1','0','1','1'),
-- ('27088','45087','75','1','0','1','1'),
-- ('27088','45653','0','1','1','1','1'),
-- ('27088','45654','0','1','1','1','1'),
-- ('27088','45655','0','1','1','1','1'),
-- ('27088','46110','70','1','0','1','1');

-- DELETE FROM `gameobject_loot_template` WHERE entry = 27089;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('27089','1','100','1','0','-34176','3'),
-- ('27089','2','10','1','0','-34154','1'),
-- ('27089','45624','100','1','0','2','2'),
-- ('27089','45038','18','1','0','1','1'),
-- ('27089','45087','75','1','0','1','1'),
-- ('27089','45653','0','1','1','1','1'),
-- ('27089','45654','0','1','1','1','1'),
-- ('27089','45655','0','1','1','1','1'),
-- ('27089','46110','70','1','0','1','1'),
-- ('27089','45814','-100','1','0','1','1');

-- DELETE FROM `gameobject_loot_template` WHERE entry = 27090;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('27090','1','100','1','0','-34176','3'),
-- ('27090','2','10','1','0','-34154','1'),
-- ('27090','45624','100','1','0','2','2'),
-- ('27090','45038','18','1','0','1','1'),
-- ('27090','45087','75','1','0','1','1'),
-- ('27090','45485','0','1','1','1','1'),
-- ('27090','45613','0','1','1','1','1'),
-- ('27090','45487','0','1','1','1','1'),
-- ('27090','45484','0','1','1','1','1'),
-- ('27090','45486','0','1','1','1','1'),
-- ('27090','45653','0','1','2','1','1'),
-- ('27090','45654','0','1','2','1','1'),
-- ('27090','45655','0','1','2','1','1'),
-- ('27090','45488','0','1','1','1','1'),
-- ('27090','46110','70','1','0','1','1'),
-- ('27090','45814','-100','1','0','1','1');

-- Thorim

UPDATE `gameobject_template` SET `faction` = 0, `flags` = 0 WHERE `entry` IN (194312, 194313);

-- DELETE FROM `gameobject_loot_template` WHERE entry IN (27073, 27074);
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('27073','45624','100','1','0','1','1'),
-- ('27073','1','100','1','0','-34130','1'),
-- ('27073','45659','0','1','1','1','1'),
-- ('27073','45660','0','1','1','1','1'),
-- ('27073','45661','0','1','1','1','1'),
-- ('27074','45624','100','1','0','1','1'),
-- ('27074','1','100','1','0','-34130','1'),
-- ('27074','45928','0','1','2','1','1'),
-- ('27074','45929','0','1','2','1','1'),
-- ('27074','45930','0','1','2','1','1'),
-- ('27074','45931','0','1','2','1','1'),
-- ('27074','45933','0','1','2','1','1'),
-- ('27074','45659','0','1','1','1','1'),
-- ('27074','45660','0','1','1','1','1'),
-- ('27074','45661','0','1','1','1','1'),
-- ('27074','45784','-100','3','0','1','1');

-- DELETE FROM `reference_loot_template` WHERE entry = 34130;
-- INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('34130','45892','0','1','1','1','1'),
-- ('34130','45893','0','1','1','1','1'),
-- ('34130','45894','0','1','1','1','1'),
-- ('34130','45895','0','1','1','1','1'),
-- ('34130','45927','0','1','1','1','1');


-- DELETE FROM `reference_loot_template` WHERE entry = 34174;
-- INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('34174','45463','0','1','1','1','1'),
-- ('34174','45466','0','1','1','1','1'),
-- ('34174','45467','0','1','1','1','1'),
-- ('34174','45468','0','1','1','1','1'),
-- ('34174','45469','0','1','1','1','1');

-- DELETE FROM `gameobject_loot_template` WHERE entry = 26955;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('26955','1','100','1','0','-34174','2'),
-- ('26955','2','10','1','0','-34154','1'),
-- ('26955','45038','18','1','0','1','1'),
-- ('26955','45087','75','1','0','1','1'),
-- ('26955','45624','100','1','0','1','2'),
-- ('26955','45638','0','1','1','1','1'),
-- ('26955','45639','0','1','1','1','1'),
-- ('26955','45640','0','1','1','1','1');

-- UPDATE `gameobject_template` SET `size` = 3, `questItem1` = 45817, `data1` = 26956 WHERE `entry` = 194315;
-- DELETE FROM `gameobject_loot_template` WHERE entry = 26956;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('26956','1','100','1','0','-34174','2'),
-- ('26956','2','10','1','0','-34154','1'),
-- ('26956','45624','100','1','0','2','2'),
-- ('26956','45038','18','1','0','1','1'),
-- ('26956','45087','75','1','0','1','1'),
-- ('26956','45470','0','1','1','1','1'),
-- ('26956','45471','0','1','1','1','1'),
-- ('26956','45472','0','1','1','1','1'),
-- ('26956','45473','0','1','1','1','1'),
-- ('26956','45474','0','1','1','1','1'),
-- ('26956','45570','0','1','1','1','1'),
-- ('26956','45638','0','1','2','1','1'),
-- ('26956','45639','0','1','2','1','1'),
-- ('26956','45640','0','1','2','1','1'),
-- ('26956','45817','-100','1','0','1','1');

-- Mimiron
DELETE FROM `gameobject_template` WHERE entry = 194790;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
('194790','3','8686','Cache of Innovation','','','','0','0','1.5','0','0','0','0','0','0','1634','27084','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','12340');

DELETE FROM `gameobject_loot_template` WHERE entry IN (27085, 27084);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('27085','45624','100','1','0','1','1'),
-- ('27085','1','100','1','0','-34129','1'),
-- ('27085','45647','0','1','1','1','1'),
-- ('27085','45648','0','1','1','1','1'),
-- ('27085','45649','0','1','1','1','1'),
('27084','45624','100','1','0','1','1'),
('27084','1','100','1','0','-34129','1'),
('27084','45982','0','1','2','1','1'),
('27084','45988','0','1','2','1','1'),
('27084','45989','0','1','2','1','1'),
('27084','45990','0','1','2','1','1'),
('27084','45993','0','1','2','1','1'),
('27084','45647','0','1','1','1','1'),
('27084','45648','0','1','1','1','1'),
('27084','45649','0','1','1','1','1'),
('27084','45787','-100','1','0','1','1');

DELETE FROM `reference_loot_template` WHERE entry = 34129;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('34129','45972','0','1','1','1','1'),
('34129','45973','0','1','1','1','1'),
('34129','45974','0','1','1','1','1'),
('34129','45975','0','1','1','1','1'),
('34129','45976','0','1','1','1','1');


UPDATE `gameobject_template` SET `size` = 1.5 WHERE `entry` = 194956;
-- DELETE FROM `reference_loot_template` WHERE entry = 34175;
-- INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('34175','45489','0','1','1','1','1'),
-- ('34175','45490','0','1','1','1','1'),
-- ('34175','45491','0','1','1','1','1'),
-- ('34175','45492','0','1','1','1','1'),
-- ('34175','45493','0','1','1','1','1');

-- DELETE FROM `gameobject_loot_template` WHERE entry = 26963;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('26963','1','100','1','0','-34175','2'),
-- ('26963','2','10','1','0','-34154','1'),
-- ('26963','45038','18','1','0','1','1'),
-- ('26963','45087','75','1','0','1','1'),
-- ('26963','45624','100','1','0','1','1'),
-- ('26963','45641','0','1','1','1','1'),
-- ('26963','45642','0','1','1','1','1'),
-- ('26963','45643','0','1','1','1','1');

-- DELETE FROM `gameobject_loot_template` WHERE entry = 27086;
-- INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- ('27086','1','100','1','0','-34175','2'),
-- ('27086','2','10','1','0','-34154','1'),
-- ('27086','45624','100','1','0','2','2'),
-- ('27086','45038','18','1','0','1','1'),
-- ('27086','45087','75','1','0','1','1'),
-- ('27086','45494','0','1','1','1','1'),
-- ('27086','45495','0','1','1','1','1'),
-- ('27086','45496','0','1','1','1','1'),
-- ('27086','45497','0','1','1','1','1'),
-- ('27086','45620','0','1','1','1','1'),
-- ('27086','45641','0','1','2','1','1'),
-- ('27086','45642','0','1','2','1','1'),
-- ('27086','45643','0','1','2','1','1'),
-- ('27086','45663','0','1','1','1','1'),
-- ('27086','45816','-100','1','0','1','1');

-- General Vezax loot

DELETE FROM `creature_loot_template` WHERE entry = 33271;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('33271','45624','100','1','0','1','1'),
('33271','1','100','1','0','-34131','2'),
('33271','46032','0','2','2','1','1'),
('33271','46033','0','2','2','1','1'),
('33271','46034','0','2','2','1','1'),
('33271','46035','0','2','2','1','1'),
('33271','46036','0','2','2','1','1');

DELETE FROM `reference_loot_template` WHERE entry = 34131;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('34131','45996','0','1','1','1','1'),
('34131','45997','0','1','1','1','1'),
('34131','46008','0','1','1','1','1'),
('34131','46009','0','1','1','1','1'),
('34131','46010','0','1','1','1','1'),
('34131','46011','0','1','1','1','1'),
('34131','46012','0','1','1','1','1'),
('34131','46013','0','1','1','1','1'),
('34131','46014','0','1','1','1','1'),
('34131','46015','0','1','1','1','1');


DELETE FROM creature WHERE id = 33167;
UPDATE `creature_template` SET `modelid1` = 11686, `modelid2` = 0 WHERE `entry` IN (33364, 33369, 33108, 33366);

DELETE FROM vehicle_accessory WHERE guid = 33113 AND seat_id IN (0, 1);
INSERT INTO `vehicle_accessory` (`guid`, `accessory_entry`, `seat_id`, `minion`, `description`) VALUES (33113, 33114, 0, 1, 'Flame Leviathan');
INSERT INTO `vehicle_accessory` (`guid`, `accessory_entry`, `seat_id`, `minion`, `description`) VALUES (33113, 33114, 1, 1, 'Flame Leviathan');

UPDATE creature_model_info SET bounding_radius = 15, combat_reach = 10 WHERE modelid IN (29158, 29159, 29160);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 33264; -- TODO
UPDATE `creature_template` SET `AIName` = '', `ScriptName` = 'boss_flame_leviathan_defense_cannon' WHERE `entry` = 33139;

-- Mimiron modelids
UPDATE `creature_model_info` SET `bounding_radius` = 0.775, `combat_reach` = 7 WHERE `modelid` = 28831;
UPDATE `creature_model_info` SET `bounding_radius` = 0.775, `combat_reach` = 5 WHERE `modelid` = 28841;
UPDATE `creature_model_info` SET `bounding_radius` = 0.775, `combat_reach` = 4 WHERE `modelid` = 28979;

-- Flame Leviathan
UPDATE `creature_template` SET `mingold` = 1450000, `maxgold` = 1750000 WHERE `entry` = 33113;
UPDATE `creature_template` SET `mingold` = 2450000, `maxgold` = 2750000 WHERE `entry` = 34003;
-- Razorscale
UPDATE `creature_template` SET `mingold` = 1450000, `maxgold` = 1750000 WHERE `entry` = 33186;
UPDATE `creature_template` SET `mingold` = 2450000, `maxgold` = 2750000 WHERE `entry` = 33724;
-- Ignis
UPDATE `creature_template` SET `mingold` = 1450000, `maxgold` = 1750000 WHERE `entry` = 33118;
UPDATE `creature_template` SET `mingold` = 2450000, `maxgold` = 2750000 WHERE `entry` = 33190;
UPDATE `creature_template` SET `mechanic_immune_mask` = 536872986 WHERE `entry` IN (34234, 34235, 33237, 34105);
-- Magma Rager
UPDATE `creature_template` SET `mechanic_immune_mask` = 131072 WHERE `entry` IN (34086, 34201);
-- Robots
UPDATE `creature_template` SET `mechanic_immune_mask` = 8405008 WHERE `entry` IN (34085, 34186, 34274, 34268, 34272, 34270);
-- XT-002
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235 WHERE `entry` IN (33293, 33885, 33329, 33995);
UPDATE `creature_template` SET `mingold` = 3450000, `maxgold` = 3750000 WHERE entry = 33885;
UPDATE `creature_template` SET `mingold` = 1450000, `maxgold` = 1750000 WHERE entry = 33293;
-- Lightning charged dwarf
UPDATE `creature_template` SET `equipment_id` = 870, `mechanic_immune_mask` = 5 WHERE `entry` = 34237;
UPDATE `creature_template` SET `equipment_id` = 870, `mechanic_immune_mask` = 5 WHERE `entry` = 34199;
-- Hardened Iron Golem
UPDATE `creature_template` SET `mingold` = 24200, `maxgold` = 26200, `mechanic_immune_mask` = 64 WHERE `entry` = 34229;
UPDATE `creature_template` SET `mingold` = 14200, `maxgold` = 16200, `mechanic_immune_mask` = 64 WHERE `entry` = 34190;
-- Iron Mender
UPDATE `creature_template` SET `mingold` = 24200, `maxgold` = 26200, `mechanic_immune_mask` = 1 WHERE `entry` = 34236;
UPDATE `creature_template` SET `mingold` = 14200, `maxgold` = 16200, `mechanic_immune_mask` = 1 WHERE `entry` = 34198;
-- Runed Etched
UPDATE `creature_template` SET `mingold` = 24200, `maxgold` = 26200, `mechanic_immune_mask` = 64 WHERE `entry` = 34245;
UPDATE `creature_template` SET `mingold` = 14200, `maxgold` = 16200, `mechanic_immune_mask` = 64 WHERE `entry` = 34196;
-- Chamber Overseer
UPDATE `creature_template` SET `mingold` = 14600, `maxgold` = 18200, `mechanic_immune_mask` = 33554496 WHERE `entry` = 34226;
UPDATE `creature_template` SET `mingold` = 14600, `maxgold` = 18200, `mechanic_immune_mask` = 33554496 WHERE `entry` = 34197;
-- Storm Tempered Keeper
UPDATE `creature_template` SET `mingold` = 271000, `maxgold` = 276000, `mechanic_immune_mask` = 545260304 WHERE `entry` IN (33700, 33723);
UPDATE `creature_template` SET `mingold` = 71000, `maxgold` = 76000, `mechanic_immune_mask` = 545260304 WHERE `entry` IN (33699, 33722);
-- Auriaya
UPDATE `creature_template` SET `mingold` = 1460000, `maxgold` = 1520000, `mechanic_immune_mask` = 617299807 WHERE `entry` = 33515;
UPDATE `creature_template` SET `mingold` = 3460000, `maxgold` = 3520000, `mechanic_immune_mask` = 617299807, `flags_extra` = 1 WHERE `entry` = 34175;
-- Sanctum Sentry
UPDATE `creature_template` SET `baseattacktime` = 1500, `speed_walk` = 1.66667, `flags_extra` = 1 WHERE `entry` IN (34014, 34166);
-- Champion of Hodir
UPDATE `creature_template` SET `mingold` = 371000, `maxgold` = 376000, `mechanic_immune_mask` = 545267736 WHERE `entry` = 34139;
UPDATE `creature_template` SET `mingold` = 171000, `maxgold` = 176000, `mechanic_immune_mask` = 545267736 WHERE `entry` = 34133;
-- Winter revenant
UPDATE `creature_template` SET `mingold` = 171000, `maxgold` = 176000, `mechanic_immune_mask` = 2128 WHERE `entry` = 34141;
UPDATE `creature_template` SET `mingold` = 71000, `maxgold` = 76000, `mechanic_immune_mask` = 2128 WHERE `entry` = 34134;
-- Winter Rumbler
UPDATE `creature_template` SET `mingold` = 30300, `maxgold` = 32000, `mechanic_immune_mask` = 33554432 WHERE `entry` = 34142;
UPDATE `creature_template` SET `mingold` = 10300, `maxgold` = 12000, `mechanic_immune_mask` = 33554432 WHERE `entry` = 34135;
-- Arachnopod
UPDATE `creature_template` SET `mingold` = 205000, `maxgold` = 225000, `mechanic_immune_mask` = 8405008 WHERE `entry` = 34214;
UPDATE `creature_template` SET `mingold` = 105000, `maxgold` = 125000, `mechanic_immune_mask` = 8405008 WHERE `entry` = 34183;
-- Clockwork
UPDATE `creature_template` SET `mingold` = 17200, `maxgold` = 17600, `mechanic_immune_mask` = 8405008 WHERE `entry` = 34184;
UPDATE `creature_template` SET `mingold` = 27200, `maxgold` = 27600, `mechanic_immune_mask` = 8405008 WHERE `entry` = 34219;
-- Boomer XP-500
UPDATE `creature_template` SET `mechanic_immune_mask` = 8405008 WHERE `entry` = 34216;
UPDATE `creature_template` SET `mechanic_immune_mask` = 8405008 WHERE `entry` = 34192;
-- Trash
UPDATE `creature_template` SET `mechanic_immune_mask` = 8405008 WHERE `entry` = 34191;
UPDATE `creature_template` SET `mechanic_immune_mask` = 8405008 WHERE `entry` = 34217;
-- Clockwork sapper
UPDATE `creature_template` SET `mingold` = 37000, `maxgold` = 38200, `mechanic_immune_mask` = 8405008 WHERE `entry` = 34220;
UPDATE `creature_template` SET `mingold` = 17000, `maxgold` = 18200, `mechanic_immune_mask` = 8405008 WHERE `entry` = 34193;
-- Elders
UPDATE `creature_template` SET `mingold` = 625000, `maxgold` = 665000, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` IN (32914, 32913, 33391);
UPDATE `creature_template` SET `mingold` = 1805000, `maxgold` = 1855000, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` IN (33393, 33392, 33391);
-- Freya trash
UPDATE `creature_template` SET `mingold` = 625000, `maxgold` = 655000 WHERE `entry` = 33732;
UPDATE `creature_template` SET `mingold` = 75000, `maxgold` = 95000 WHERE `entry` = 33731;
UPDATE `creature_template` SET `mingold` = 125000, `maxgold` = 155000 WHERE `entry` IN (33733, 33734);
UPDATE `creature_template` SET `mingold` = 125000, `maxgold` = 155000 WHERE `entry` IN (33741, 33729);
UPDATE `creature_template` SET `mingold` = 125000, `maxgold` = 155000 WHERE `entry` IN (33735, 33737);
-- Dark Rune Thunderer, Ravager
UPDATE `creature_template` SET `baseattacktime` = 1500, `mechanic_immune_mask` = 545259541 WHERE `entry` IN (33754, 33755);
UPDATE `creature_template` SET `baseattacktime` = 1500, `mingold` = 71000, `maxgold` = 76000, `mechanic_immune_mask` = 545259541 WHERE `entry` = 33757;
UPDATE `creature_template` SET `baseattacktime` = 1500, `mingold` = 71000, `maxgold` = 76000, `mechanic_immune_mask` = 545259541 WHERE `entry` = 33758;
-- Twilight mobs
UPDATE `creature_template` SET `mingold` = 72000, `maxgold` = 76000, `mechanic_immune_mask` = 570425425 WHERE `entry` IN (33818, 33822, 33824, 33823);
UPDATE `creature_template` SET `mingold` = 272000, `maxgold` = 276000, `mechanic_immune_mask` = 570425425 WHERE `entry` = 33827;
UPDATE `creature_template` SET `mingold` = 72000, `maxgold` = 76000, `mechanic_immune_mask` = 570425425 WHERE `entry` = 33828;
UPDATE `creature_template` SET `baseattacktime` = 1000, `mingold` = 72000, `maxgold` = 76000, `mechanic_immune_mask` = 570425425 WHERE `entry` = 33831;
UPDATE `creature_template` SET `mingold` = 72000, `maxgold` = 76000, `mechanic_immune_mask` = 570425425 WHERE `entry` = 33832;
UPDATE `creature_template` SET `mingold` = 76000, `maxgold` = 79000, `mechanic_immune_mask` = 33554512 WHERE `entry` = 33773;
UPDATE `creature_template` SET `mingold` = 72000, `maxgold` = 76000, `mechanic_immune_mask` = 8388625 WHERE `entry` = 33830;
UPDATE `creature_template` SET `mingold` = 72000, `maxgold` = 76000, `mechanic_immune_mask` = 8388625 WHERE `entry` = 33829;
UPDATE `creature_template` SET `mingold` = 41000, `maxgold` = 46000, `mechanic_immune_mask` = 8519697 WHERE `entry` = 33839;
-- Hodir
UPDATE `creature_template` SET `mingold` = 0, `maxgold` = 0 WHERE `entry` IN (32845, 32846);
-- General Vezax
UPDATE `creature_template` SET `mingold` = 3450000, `maxgold` = 3750000, `mechanic_immune_mask` = 617299803, `flags_extra` = 257 WHERE `entry` = 33449;
UPDATE `creature_template` SET `mingold` = 1450000, `maxgold` = 1750000 WHERE `entry` = 33271;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235 WHERE `entry` = 33789;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 256 WHERE `entry` = 33524;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 256 WHERE `entry` = 34152;

-- XT-002 correct vehicle id
UPDATE `creature_template` SET `VehicleId` = 353 WHERE `entry` = 33293;
-- XT-002 Hearth
DELETE FROM `vehicle_accessory` WHERE `guid` = 33293;
INSERT INTO `vehicle_accessory` (`guid`, `accessory_entry`, `seat_id`, `minion`, `description`) VALUES (33293, 33329, 0, 1, 'XT-002 Hearth');
-- Gravity Bomb
DELETE FROM spell_script_names WHERE spell_id IN (63025, 64233);
INSERT INTO spell_script_names VALUES 
(63025, "spell_xt002_gravity_bomb"),
(64233, "spell_xt002_gravity_bomb");

-- Salvaged Chopper has faction dependent modelid
UPDATE `creature_template` SET `modelid2` = 0 WHERE `entry` = 33062;
-- Sanctum Sentry 25 damage nerf
UPDATE `creature_template` SET `dmg_multiplier` = 35 WHERE `entry` = 34166;

UPDATE creature_template SET scriptname = 'boss_sara' WHERE entry = 33134;
UPDATE script_texts SET npc_entry = 33134 WHERE npc_entry = 33288 AND entry IN (-1603330,-1603331,-1603332,-1603333);
UPDATE script_texts SET content_default = "Help me! Please get them off me!" WHERE npc_entry = 33134 AND entry = -1603310;
UPDATE script_texts SET content_default = "What do you want from me? Leave me alone!" WHERE npc_entry = 33134 AND entry = -1603311;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` = 33134;
UPDATE creature_template SET scriptname = 'npc_ominous_cloud' WHERE entry = 33292;
UPDATE creature_template SET scriptname = 'npc_guardian_of_yogg_saron' WHERE entry = 33136;
UPDATE creature_template SET scriptname = 'npc_yogg_saron_tentacle' WHERE entry in (33966,33985,33983);
UPDATE creature_template SET scriptname = 'npc_descend_into_madness' WHERE entry = 34072;
UPDATE creature_template SET scriptname = 'npc_brain_of_yogg_saron' WHERE entry = 33890;
UPDATE creature_template SET scriptname = 'boss_yogg_saron' WHERE entry = 33288;
UPDATE creature_template SET scriptname = 'npc_influence_tentacle' WHERE entry in (33716,33720,33719,33717,33433,33567);
UPDATE creature_template SET scriptname = 'npc_immortal_guardian' WHERE entry = 33988;
UPDATE creature_template SET scriptname = 'npc_support_keeper' WHERE entry in (33410,33411,33412,33413);
UPDATE creature_template SET scriptname = 'npc_sanity_well' WHERE entry = 33991;
UPDATE creature_template SET modelid1 = 11686, modelid2 = 11686 WHERE entry = 33991;
UPDATE creature_template SET scriptname = 'npc_death_orb' WHERE entry = 33882;
UPDATE creature_template SET modelid1 = 16946, modelid2 = 16946 WHERE entry = 33882;
UPDATE creature_template SET scriptname = 'npc_death_ray' WHERE entry = 33881;
UPDATE creature_template SET modelid1 = 17612, modelid2 = 17612 WHERE entry = 33881;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, scriptname = 'npc_laughting_skull' WHERE entry = 33990;
UPDATE creature_template SET modelid1 = 15880, modelid2 = 15880 WHERE entry = 33990;
UPDATE gameobject_template SET scriptname = 'go_flee_to_surface' WHERE entry = 194625;

UPDATE creature_template SET RegenHealth = 0 WHERE entry IN (33134,34332,33890,33954);

DELETE FROM gameobject WHERE id = 194625;
INSERT INTO gameobject 
(guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state)
VALUES 
(603001, 194625, 603, 3, 1, 2001.40, -59.66, 245.07, 0, 0, 0, 0, 0, 60, 100, 1),
(603002, 194625, 603, 3, 1, 1941.61, -25.88, 244.98, 0, 0, 0, 0, 0, 60, 100, 1),
(603003, 194625, 603, 3, 1, 2001.18,  9.409, 245.24, 0, 0, 0, 0, 0, 60, 100, 1);

-- Auren shouldnt hit other friendly NPCs
DELETE FROM spell_script_names WHERE spell_id IN (62670,62671,62702,62650);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(62670,'spell_keeper_support_aura_targeting'),
(62671,'spell_keeper_support_aura_targeting'),
(62702,'spell_keeper_support_aura_targeting'),
(62650,'spell_keeper_support_aura_targeting');

-- Script for Target Faces Caster
DELETE FROM spell_script_names WHERE spell_id IN (64164,64168);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64164,'spell_lunatic_gaze_targeting'),
(64168,'spell_lunatic_gaze_targeting');

-- Trigger Effekt on Near Player with Brain Link 
DELETE FROM spell_script_names WHERE spell_id IN (63802);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(63802,'spell_brain_link_periodic_dummy');

-- Needed for Titanic Storm
-- Script for Target have Weakened Aura
DELETE FROM spell_script_names WHERE spell_id IN (64172);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64172,'spell_titanic_storm_targeting');

-- Condition because NPCs need this else no hit
DELETE FROM conditions WHERE SourceEntry = 64172;
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,64172,0,18,1,33988,0,0,'','Effekt only for Immortal Guardians');

-- Insane Death trigger on Remove
DELETE FROM spell_script_names WHERE spell_id IN (63120);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(63120,'spell_insane_death_effekt');

-- Deathray Effekt on Death Orb
DELETE FROM conditions WHERE SourceEntry IN (63882,63886);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,63882,0,18,1,33882,0,0,'','Effekt on Death Orb'),
(13,0,63886,0,18,1,33882,0,0,'','Effekt on Death Orb');

-- Correct Summon Position of Tentacle
DELETE FROM spell_script_names WHERE spell_id IN (64139,64143,64133);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64139,'spell_summon_tentacle_position'),
(64143,'spell_summon_tentacle_position'),
(64133,'spell_summon_tentacle_position');

-- Heal Trigger for Empowering Shadows
DELETE FROM spell_script_names WHERE spell_id IN (64466);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64466,'spell_empowering_shadows');


-- Missing Says Vision
DELETE FROM script_texts WHERE entry BETWEEN -1603360 AND -1603342;
INSERT INTO script_texts (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(33436,-1603342,'Bad news sire.',15538,0,0,0,'Garona KingLlaneVision_Say1'),
(33436,-1603343,'The clans are united under Blackhand in this assault. They will stand together until Stormwind has fallen.',15539,0,0,0,'Garona KingLlaneVision_Say2'),
(33436,-1603344,'Gul\'dan is bringing up his warlocks by nightfall. Until then, the Blackrock clan will be trying to take the Eastern Wall.',15540,0,0,0,'Garona KingLlaneVision_Say3'),
(33288,-1603345,'A thousand deaths... or one murder.',15762,0,0,0,'YoggSaron KingLlaneVision_Say1'),
(33288,-1603346,'',15763,0,0,0,'YoggSaron KingLlianeVision_Say2'),
(33437,-1603347,'We will hold until the reinforcements come. As long as men with stout hearts are manning the walls and throne Stormwind will hold.',15585,0,0,0,'KingLlane KingLlaneVision_Say'),
(33436,-1603348,'The orc leaders agree with your assessment.',15541,0,0,0,'Garona KingLlaneVision_Say4'),
(33288,-1603349,'Your petty quarrels only make me stronger!',15764,0,0,0,'YoggSaron KingLlaneVision_Say3'),

(33441,-1603350,'Your resilience is admirable.',15598,0,0,0,'TheLichKing LichKingVision_Say1'),
(33442,-1603351,'Arrrrrrgh!',15470,1,0,0,'ImmolatedChampion LichKingVision_Say1'),
(33442,-1603352,'I\'m not afraid of you!',15471,0,0,0,'ImmolatedChampion LichKingVision_Say2'),
(33441,-1603353,'I will break you as I broke him.',15599,0,0,0,'TheLichKing LichKingVision_Say2'),
(33288,-1603354,'Yrr n\'lyeth... shuul anagg!',15766,0,0,0,'YoggSaron LichKingVision_Say1'),
(33288,-1603355,'He will learn... no king rules forever, only death is eternal!',15767,0,0,0,'YoggSaron LichKingVision_Say2'),

(33523,-1603356,'It is done... All have been given that which must be given. I now seal the Dragon Soul forever...',15631,0,0,0,'Neltharion DragonSoulVision_Say1'),
(33495,-1603357,'That terrible glow... should that be?',15702,0,0,0,'Ysera DragonSoulVision_Say'),
(33523,-1603358,'For it to be as it must, yes.',15632,0,0,0,'Neltharion DragonSoulVision_Say2'),
(33535,-1603359,'It is a weapon like no other. It must be like no other.',15610,0,0,0,'Malygos DragonSoulVision_Say'),
(33288,-1603360,'His brood learned their lesson before too long, you shall soon learn yours!',15765,0,0,0,'YoggSaron DragonSoulVision_Say1');
-- ================ End of Ulduar ======================

-- Pit of Saron
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=12993 AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(12993,11,0,0, 'achievement_doesnt_go_to_eleven');
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1658070 AND -1658050;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36658,-1658050,'Your pursuit shall be in vain, adventurers, for the Lich King has placed an army of undead at my command! Behold!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16755,1,0,0,'Tyrannus SAY_AMBUSH_1'),
(36658,-1658051,'Persistent whelps! You will not reach the entrance of my lord\'s lair! Soldiers, destroy them!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16756,1,0,0,'Tyrannus SAY_AMBUSH_2'),
(36658,-1658052,'Rimefang! Trap them within the tunnel! Bury them alive!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16757,1,0,0,'Tyrannus SAY_GAUNTLET_START'),
(36658,-1658053,'Alas, brave, brave adventurers, your meddling has reached its end. Do you hear the clatter of bone and steel coming up the tunnel behind you? That is the sound of your impending demise.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16758,1,0,0,'Tyrannus SAY_TYRANNUS_INTRO_1'),
(37592,-1658054,'Heroes! We will hold off the undead as long as we can, even to our dying breath. Deal with the Scourgelord!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17150,1, 0,0,'Gorkun SAY_GORKUN_INTRO_2'),
(36658,-1658055,'Ha, such an amusing gesture from the rabble. When I have finished with you, my master\'s blade will feast upon your souls. Die!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16759,1,0,0,'Tyrannus SAY_TYRANNUS_INTRO_3'),
(36658,-1658056,'I shall not fail The Lich King! Come and meet your end!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16760,1, 0,0,'Tyrannus SAY_AGGRO'),
(36658,-1658057,'Such a shameful display... You are better off dead!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16761,1,0,0,'Tyrannus SAY_SLAY_1'),
(36658,-1658058,'Perhaps you should have stayed in the mountains!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16762,1,0,0,'Tyrannus SAY_SLAY_2'),
(36658,-1658059,'Impossible! Rimefang... Warn...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16763,1,0,0,'Tyrannus SAY_DEATH'),
(36658,-1658060,'Rimefang, destroy this fool!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16764,1,0,0,'Tyrannus SAY_MARK_RIMEFANG_1'),
(36658,-1658061,'The frostwyrm Rimefang gazes at $N and readies an icy attack!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3, 0,0,'Tyrannus SAY_MARK_RIMEFANG_2'),
(36658,-1658062,'Power... overwhelming!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16765,1,0,0,'Tyrannus SAY_DARK_MIGHT_1'),
(36658,-1658063,'Scourgelord Tyrannus roars and swells with dark might!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,3, 0,0,'Tyrannus SAY_DARK_MIGHT_2'),
(37592,-1658064,'Brave champions, we owe you our lives, our freedom... Though it be a tiny gesture in the face of this enormous debt, I pledge that from this day forth, all will know of your deeds, and the blazing path of light you cut through the shadow of this dark citadel.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1, 0,0,'Gorkun SAY_GORKUN_OUTRO_1'),
(37592,-1658065,'This day will stand as a testament not only to your valor, but to the fact that no foe, not even the Lich King himself, can stand when Alliance and Horde set aside their differences and ---',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1, 0,0,'Gorkun SAY_GORKUN_OUTRO_2'),
(36993,-1658066,'Heroes, to me!', NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16614,1,0,0,'Jaina SAY_JAYNA_OUTRO_3'),
(36990,-1658067,'Take cover behind me! Quickly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17037,1,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_3'),
(36993,-1658068,'The Frost Queen is gone. We must keep moving - our objective is near.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16615, 0,0,0,'Jaina SAY_JAYNA_OUTRO_4'),
(36990,-1658069,'I thought he\'d never shut up. At last, Sindragosa silenced that long-winded fool. To the Halls of Reflection, champions! Our objective is near... I can sense it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,17036, 0,0,0,'Sylvanas SAY_SYLVANAS_OUTRO_4'),
(36993,-1658070,'I... I could not save them... Damn you, Arthas! DAMN YOU!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,16616, 0,0,0,'Jaina SAY_JAYNA_OUTRO_5');
-- Forge of Souls
REPLACE INTO `spell_script_names` VALUES (68921, 'spell_boss_bronjahm_soulstorm'), (69049, 'spell_boss_bronjahm_soulstorm');
-- Ruby sanctum
UPDATE `instance_template` SET `Script`='instance_ruby_sanctum' WHERE `map`=724;
-- Halion
UPDATE `creature_template` SET `ScriptName`='boss_halion_real', `AIName` ='' WHERE `entry`=39863;
UPDATE `creature_template` SET `ScriptName`='boss_halion_twilight', `AIName` ='' WHERE `entry`=40142;
UPDATE `creature_template` SET `ScriptName`='mob_halion_meteor', `AIName` ='' WHERE `entry` = 40029;
UPDATE `creature_template` SET `ScriptName`='mob_halion_flame', `AIName` ='' WHERE `entry` IN (40041);
UPDATE `creature_template` SET `ScriptName`='mob_halion_control', `AIName` ='' WHERE `entry` IN (40146);
UPDATE `creature_template` SET `ScriptName`='mob_halion_orb', `AIName` ='' WHERE `entry` IN (40083,40100);
UPDATE `creature_template` SET `ScriptName`='mob_orb_rotation_focus', `AIName` ='' WHERE `entry` = 40091;
UPDATE `creature_template` SET `ScriptName`='mob_orb_carrier', `AIName` ='' WHERE `entry` = 40081;
UPDATE `creature_template` SET `ScriptName`='mob_fiery_combustion', `AIName` ='' WHERE `entry` = 40001;
UPDATE `creature_template` SET `ScriptName`='mob_soul_consumption', `AIName` ='' WHERE `entry` = 40135;
UPDATE `creature_template` SET `ScriptName`='', `AIName` ='' WHERE `entry` IN (40143, 40144, 40145);

-- spell_halion_fiery_combustion 74562
DELETE FROM `spell_script_names` WHERE `spell_id`=74562 AND `ScriptName`='spell_halion_fiery_combustion';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (74562,'spell_halion_fiery_combustion');

-- spell_halion_soul_consumption 74792
DELETE FROM `spell_script_names` WHERE `spell_id`=74792 AND `ScriptName`='spell_halion_soul_consumption';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (74792,'spell_halion_soul_consumption');


UPDATE `gameobject_template` SET `data10` = 74807, `faction` = '0', `ScriptName` = 'go_halion_portal_twilight' WHERE `gameobject_template`.`entry` IN (202794,202795);
UPDATE `gameobject_template` SET `faction` = '0', `ScriptName` = 'go_halion_portal_real' WHERE `gameobject_template`.`entry` IN (202796);

-- Baltharus
UPDATE `creature_template` SET `ScriptName`='boss_baltharus', `AIName` ='', `dmg_multiplier` = 80  WHERE `entry`=39751;
UPDATE `creature_template` SET `ScriptName`='mob_baltharus_clone', `AIName` ='', `dmg_multiplier` = 80  WHERE `entry`=39899;

-- zarithrian
UPDATE `creature_template` SET `ScriptName`='boss_zarithrian', `AIName` ='' WHERE `entry`=39746;
UPDATE `creature` SET `position_x` = '3008.552734',`position_y` = '530.471680',`position_z` = '89.195290',`orientation` = '6.16' WHERE `id` = 39746;
UPDATE `creature_template` SET `ScriptName`='mob_flamecaller_ruby', `AIName` ='' WHERE `entry`=39814;

-- Saviana Ragefire
UPDATE `creature_template` SET `ScriptName`='boss_ragefire', `AIName` ='' WHERE `entry`=39747;
DELETE FROM `conditions` WHERE `SourceEntry`=74455;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,0,74455,0,18,1,39747,0,0, '', 'Ragefire - Conflagration');

-- Xerestrasza
UPDATE `creature_template` SET `ScriptName`='mob_xerestrasza', `AIName` ='' WHERE `entry`=40429;

-- sound / text
DELETE FROM `script_texts` WHERE `npc_entry` IN (40429, 39863, 39746, 39751, 39747);

-- Sanctum Guardian Xerestrasza
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(40429, '-1666000','Help! I am trapped within this tree! I require aid!','Спасите! Я под этим деревом. Мне нужна помощь!','17490','6','0','0','SAY_XERESTRASZA_YELL_1'),
(40429, '-1666001','Thank you! I could have not held out for much longer. A terrible thing has happened here.','Спасибо! Без вас я бы долго не продержалась... Здесь произошли страшные события...','17491','0','0','0','SAY_XERESTRASZA_YELL_2'),
(40429, '-1666002','We believed that the Sanctum was well fortified, but we were not prepareted for the nature of this assault.','Святилище считалось неприступным, но до сих пор оно не подвергалось такому штурму...','17492','0','0','0','SAY_XERESTRASZA_SAY_1'),
(40429, '-1666003','The Black Dragonkin materialized from thin air, and set upon us before we could react.','Черные драконы явились из ниоткуда. Мы даже не успели понять что происходит...','17493','0','0','0','SAY_XERESTRASZA_SAY_2'),
(40429, '-1666004','We did not stand a chance. As my brethren perished around me, I managed to retreat here and bar the entrance.','Силы были неравны, мои братья гибли один за другим. А я спряталась здесь и запечатала вход.','17494','0','0','0','SAY_XERESTRASZA_SAY_3'),
(40429, '-1666005','They slaughtered us with cold efficiency, but the true focus of their interest seemed to be the eggs kept here in the sanctum.','Нас убивали с расчетливой жестокостью, но основной целью врага была кладка яиц в святилище.','17495','0','0','0','SAY_XERESTRASZA_SAY_4'),
(40429, '-1666006','The commander of the forces on the ground here is a cruel brute named Zarithrian. But I fear there are greater powers at work.',' Атакой руководил кровожадный Заритриан, но, боюсь, тут замешано и более могущественное зло.','17496','0','0','0','SAY_XERESTRASZA_SAY_5'),
(40429, '-1666007','In their initial assault I caught a glimpse of their true leader, a fearsome full-grown Twilight Dragon.','В самом начале я ощутила присутствие их настоящего лидера - огромного сумеречного дракона.','17497','0','0','0','SAY_XERESTRASZA_SAY_6'),
(40429, '-1666008','I know not the extent of their plans heroes, but I know this: they cannot be allowed to succeed!','Герои, мне не ведомо чего добиваются эти захватчики. Одно я знаю точно - их нужно остановить!','17498','0','0','0','SAY_XERESTRASZA_SAY_7'),

-- Halion
(39863, '-1666100','Meddlesome insects, you\'re too late! The Ruby Sanctum is lost.','Назойливая мошкара! Вы опоздали. Рубиновое святилище пало!','17499','6','0','0','SAY_HALION_SPAWN'),
(39863, '-1666101','Your world teeters on the brink of annihilation. You will all bear witness to the coming of a new age of destruction!','Этот мир вот-вот соскользнет в бездну. Вам выпала честь узреть начало эры РАЗРУШЕНИЯ!','17500','6','0','0','SAY_HALION_AGGRO'),
(39863, '-1666102','Another hero falls.','Сколько еще таких героев?','17501','6','0','0','SAY_HALION_SLAY_1'),
(39863, '-1666103','Ha Ha Ha!','','17502','6','0','0','SAY_HALION_SLAY_2'),
(39863, '-1666104','Relish this victory mortals, for it will be your last. This world will burn with the Master\'s return!','Это ваша последняя победа. Насладитесь сполна ее вкусом. Ибо когда вернется мой господин, этот мир сгинет в огне!','17503','6','0','0','SAY_HALION_DEATH'),
(39863, '-1666105','Not good enough!','Надоело!','17504','6','0','0','SAY_HALION_BERSERK'),
(39863, '-1666106','The heavens burn!','Небеса в огне!','17505','6','0','0','SAY_HALION_SPECIAL_1'),
(39863, '-1666107','Beware the shadow!','','17506','6','0','0','SAY_HALION_SPECIAL_2'),
(39863, '-1666108','You will find only suffering within the realm of Twilight. Enter if you dare.','Вы найдете только тьму в мире Сумерек. Входите, если посмеете.','17507','6','0','0','SAY_HALION_PHASE_2'),
(39863, '-1666109','I am the light AND the darkness! Cower mortals before the Herald of Deathwing!','Я есть свет и я есть тьма! Трепещите, ничтожные, перед посланником Смертокрыла!','17508','6','0','0','SAY_HALION_PHASE_3'),
(39863, '-1666110','In rotating spheres pulsating with dark energy!','Во вращающихся сферах пульсирует темная энергия!','0','3','0','0',''),
(39863, '-1666111','Your allies pushed Halion further into the physical world!','Ваши союзники протолкнули Халиона дальше в физический мир!','0','3','0','0',''),
(39863, '-1666112','Your allies pushed Halion further into the real world!','Ваши союзники протолкнули Халиона дальше в реальный мир!','0','3','0','0',''),
(39863, '-1666113','Being alone in one of the worlds, Halion restores vitality.','Находясь в покое в одном из миров, Халион восстанавливает жизненные силы.','0','3','0','0',''),

-- General Zarithrian
(39746, '-1666200','Alexstrasza has chosen capable allies. A pity that I must end you!','Алекстраза выбрала достойных союзников... Жаль, что придется ПРИКОНЧИТЬ ВАС!','17512','6','0','0','SAY_ZARITHRIAN_AGGRO'),
(39746, '-1666201','You thought you stood a chance?','Глупо было и надеяться!','17513','6','0','0','SAY_ZARITHRIAN_SLAY_1'),
(39746, '-1666202','It\'s for the best.','Все только к лучшему!','17514','6','0','0','SAY_ZARITHRIAN_SLAY_2'),
(39746, '-1666203','Halion! I\'m...aah!','ХАЛИОН! Я...','17515','6','0','0','SAY_ZARITHRIAN_DEATH'),
(39746, '-1666204','Turn them to ash, minions!','Слуги! Обратите их в пепел!','17516','6','0','0','SAY_ZARITHRIAN_SPECIAL_1'),

-- Baltharus the Warborn
(39751, '-1666300','Ah, the entertainment has arrived...','А-а-а, цирк приехал.','17520','6','0','0','SAY_BALTHARUS_AGGRO'),
(39751, '-1666301','Baltharus leaves no survivors!','Балтар не оставляет живых!','17521','6','0','0','SAY_BALTHARUS_SLAY_1'),
(39751, '-1666302','This world has enough heroes!','В мире хватает героев и без тебя...','17522','6','0','0','SAY_BALTHARUS_SLAY_2'),
(39751, '-1666303','I...didn\'t see that coming...','Как… это могло произойти?..','17523','1','0','0','SAY_BALTHARUS_DEATH'),
(39751, '-1666304','Twice the pain and half the fun!','Вдвое сильнее страдание.','17524','6','0','0','SAY_BALTHARUS_SPECIAL_1'),
(39751, '-1666305','Your power wanes, ancient one! Soon, you will join your friends!','Твоя сила на исходе, Древнейшая! Скоро ты присоединишься к своим друзьям!','17525','6','0','0','SAY_BALTHARUS_YELL'),

-- Saviana Ragefire
(39747, '-1666400','You will suffer for this intrusion...','Ваш-ш-ши муки с-cтанут платой за это вторжение!','17528','6','0','0','SAY_SAVIANA_AGGRO'),
(39747, '-1666401','As it should be!','Так и должно быть!','17529','6','0','0','SAY_SAVIANA_SLAY_1'),
(39747, '-1666402','Halion will be pleased...','Халион будет доволен!','17530','6','0','0','SAY_SAVIANA_SLAY_2'),
(39747, '-1666403','<screaming>','О...','17531','6','0','0','SAY_SAVIANA_DEATH'),
(39747, '-1666404','Burn in the master\'s flame!','Горите в огне хозяина!','17532','6','0','0','SAY_SAVIANA_SPECIAL_1'),
(39747, '-1666405','|3-3(%s) falls into a trance!','|3-3(%s) впадает в исступление!','0','3','0','0','');

-- Trial of Champion
UPDATE `instance_template` SET `script`='instance_trial_of_the_champion' WHERE `map`=650;
UPDATE `creature_template` SET `ScriptName`='npc_announcer_toc5' WHERE `entry`IN (35004,35005);
DELETE FROM `vehicle_accessory` WHERE `guid` in (35491,33299,33418,33409,33300,33408,33301,33414,33297,33416,33298);
INSERT INTO `vehicle_accessory` (`guid`,`accessory_entry`,`seat_id`,`minion`,`description`) VALUES
(35491,35451,0,0, 'Black Knight'),
(33299,35323,0,1, 'Darkspear Raptor'),
(33418,35326,0,1, 'Silvermoon Hawkstrider'),
(33409,35314,0,1, 'Orgrimmar Wolf'),
(33300,35325,0,1, 'Thunder Bluff Kodo'),
(33408,35329,0,1, 'Ironforge Ram'),
(33301,35331,0,1, 'Gnomeregan Mechanostrider'),
(33414,35327,0,1, 'Forsaken Warhorse'),
(33297,35328,0,1, 'Stormwind Steed'),
(33416,35330,0,1, 'Exodar Elekk'),
(33298,35332,0,1, 'Darnassian Nightsaber');
DELETE FROM `creature_template_addon` WHERE `entry` IN (35309, 35310, 35305, 35306, 35307, 35308, 35119, 35518, 34928, 35517);
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES 
(35309, 1, '63501 0'),
(35310, 1, '63501 0'),
(35305, 1, '63501 0'),
(35306, 1, '63501 0'),
(35307, 1, '63501 0'),
(35308, 1, '63501 0'),
(35119, 1, '63501 0'),
(35518, 1, '63501 0'),
(34928, 1, '63501 0'),
(35517, 1, '63501 0');
DELETE FROM `creature_template_addon` WHERE `entry` IN (34701, 34657, 34705, 35570, 35569, 35332,35330,33299,35328,35327,35331,35329,35325,35314,35326,35323, 35572, 35571, 34703, 34702, 35617);
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES 
(35323, 1, '63399 0 62852 0 64723 0'),
(35570, 1, '63399 0 62852 0 64723 0'),
(35326, 1, '63403 0 62852 0 64723 0'),
(35569, 1, '63403 0 62852 0 64723 0'),
(35314, 1, '63433 0 62852 0 64723 0'),
(35572, 1, '63433 0 62852 0 64723 0'),
(35325, 1, '63436 0 62852 0 64723 0'),
(35571, 1, '63436 0 62852 0 64723 0'),
(35329, 1, '63427 0 62852 0 64723 0'),
(34703, 1, '63427 0 62852 0 64723 0'),
(35331, 1, '63396 0 62852 0 64723 0'),
(34702, 1, '63396 0 62852 0 64723 0'),
(35327, 1, '63430 0 62852 0 64723 0'),
(35617, 1, '63430 0 62852 0 64723 0'),
(35328, 1, '62594 0 62852 0 64723 0'),
(34705, 1, '62594 0 62852 0 64723 0'),
(35330, 1, '63423 0 62852 0 64723 0'),
(34701, 1, '63423 0 62852 0 64723 0'),
(35332, 1, '63406 0 62852 0 64723 0'),
(34657, 1, '63406 0 62852 0 64723 0');
DELETE FROM `script_texts` WHERE `entry` <= -1999926 and `entry` >= -1999956;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(0,-1999926, 'Coming out of the gate Grand Champions other faction.  ' ,0,0,0,1, 'SAY_START' ),
(0,-1999927, 'Good work! You can get your award from Crusader\'s Coliseum chest!.  ' ,0,1,0,1, 'Win' ),
(0,-1999928, 'You spoiled my grand entrance. Rat.' ,16256,1,0,5, 'SAY_AGGRO' ),
(0,-1999929, 'Did you honestly think an agent if the Kich King would be bested on the field of your pathetic little tournament?' ,16257,1,0,5, 'SAY_AGGRO_1' ),
(0,-1999930, 'I have come to finish my task ' ,16258,1,0,5, 'SAY_AGGRO_2' ),
(0,-1999931, 'This farce ends here!' ,16259,1,0,5, 'SAY_AGGRO_3' ),
(0,-1999932, '[Zombie]Brains.... .... ....' ,0,1,0,5, 'SAY_SLAY' ),
(0,-1999933, 'My roting flash was just getting in the way!' ,16262,1,0,5, 'SAY_DEATH_1' ),
(0,-1999934, 'I have no need for bones to best you!' ,16263,1,0,5, 'SAY_DEATH_2' ),
(0,-1999935, 'No! I must not fail...again...' ,16264,1,0,5, 'SAY_DEATH_3' ),
(0,-1999936, 'What\'s that. up near the rafters ?' ,0,1,0,5, 'detected' ),
(0,-1999937, 'Please change your weapon! Next battle will be start now!' ,0,3,0,5, 'nx' ),
(0,-1999939, 'Excellent work!' ,0,1,0,1, 'work' ),
(0,-1999940, 'Coming out of the gate Crusader\'s Coliseum Champion.' ,0,0,0,1, 'SAY_START3' ),
(0,-1999941, 'Excellent work! You are win Argent champion!' ,0,3,0,0, 'win' ),
(0,-1999942, 'The Sunreavers are proud to present their representatives in this trial by combat.' ,0,0,0,1, 'an1' ),
(0,-1999943, 'Welcome, champions. Today, before the eyes of your leeders and peers, you will prove youselves worthy combatants.' ,0,0,0,1, 'an2' ),
(0,-1999944, 'Fight well, Horde! Lok\'tar Ogar!' ,0,1,0,5, 'Thrall' ),
(0,-1999945, 'Finally, a fight worth watching.' ,0,1,0,5, 'Garrosh' ),
(0,-1999946, 'I did not come here to watch animals tear at each other senselessly, Tirion' ,0,1,0,5, 'King' ),
(0,-1999947, 'You will first be facing three of the Grand Champions of the Tournament! These fierce contenders have beaten out all others to reach the pinnacle of skill in the joust.' ,0,1,0,5, 'Hightlord' ),
(0,-1999948, 'Will tought! You next challenge comes from the Crusade\'s own ranks. You will be tested against their consederable prowess.' ,0,1,0,5, 'Hightlord2' ),
(0,-1999949, 'You may begin!' ,0,0,0,5, 'text' ),
(0,-1999950, 'Well, then. Let us begin.' ,0,1,0,5, 'pal agro' ),
(0,-1999951, 'Take this time to consider your past deeds.' ,16248,1,0,5, 'palsum' ),
(0,-1999952, 'What is the meaning of this?' ,0,1,0,5, 'dk_hightlord' ),
(0,-1999953, 'No...I\'m still too young' ,0,1,0,5, 'die' ),
(0,-1999954, 'Excellent work! You are win Argent champion!' ,0,3,0,0, 'win' );
DELETE FROM `creature_template` WHERE `entry` IN 
(33297, 33298, 33299, 33300, 33301, 33408, 33409, 33414, 33416, 33418, 34657, 34658, 34701, 34702, 34703, 34705, 34928, 34942, 35028, 35029, 
35030, 35031, 35032, 35033, 35034, 35035, 35036, 35037, 35038, 35039, 35040, 35041, 35042, 35043, 35044, 35045, 35046, 35047, 35048, 35049, 
35050, 35051, 35052, 35119, 0000, 0000, 0000, 0000, 0000, 0000, 35314, 35323, 35325, 35326, 35327, 35328, 35329, 35330, 35331, 35332, 
35451, 35490, 35517, 35518, 35519, 35520, 35521, 35522, 35523, 35524, 35525, 35527, 35528, 35529, 35530, 35531, 35532, 35533, 35534, 35535, 
35536, 35537, 35538, 35539, 35541, 35542, 35543, 35544, 35545, 35564, 35568, 35569, 35570, 35571, 35572, 35590, 35617, 35633, 35634, 35635, 
35636, 35637, 35638, 35640, 35641, 35644, 35717, 35768, 36082, 36083, 36084, 36085, 36086, 36087, 36088, 36089, 36090, 36091, 36558);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
('33297','0','0','0','0','0','28912','0','0','0','Stormwind Steed','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','1'),
('33298','0','0','0','0','0','29256','0','0','0','Darnassian Nightsaber','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11723'),
('33299','0','0','0','0','0','29261','0','0','0','Darkspear Raptor','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11159'),
('33300','0','0','0','0','0','29259','0','0','0','Thunder Bluff Kodo','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11159'),
('33301','0','0','0','0','0','28571','0','0','0','Gnomeregan Mechanostrider','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','1'),
('33408','0','0','0','0','0','29258','0','0','0','Ironforge Ram','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','1'),
('33409','0','0','0','0','0','29260','0','0','0','Orgrimmar Wolf','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11159'),
('33414','0','0','0','0','0','29257','0','0','0','Forsaken Warhorse','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11159'),
('33416','0','0','0','0','0','29255','0','0','0','Exodar Elekk','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','11403'),
('33418','0','0','0','0','0','29262','0','0','0','Silvermoon Hawkstrider','','','0','80','80','0','14','14','0','1','1.14286','1','0','20000','30000','0','24','1','2000','0','1','0','8','0','0','0','0','0','1','1','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','140','1','0','0','0','generic_vehicleAI_toc5','1'),
('34657','36086','0','0','0','0','28735','0','28735','0','Jaelyne Evensong','Grand Champion of Darnassus','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','10.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68340','66083','66081','66079','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2095','617297499','0','boss_hunter_toc5','1'),
('34658','0','0','0','0','0','9991','0','0','0','Jaelyne Evensong\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('34701','36083','0','0','0','0','28736','0','28736','0','Colosos','Grand Champion of the Exodar','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','10.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','67529','67530','67528','67534','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2096','617297499','0','boss_shaman_toc5','1'),
('34702','36082','0','0','0','0','28586','0','28586','0','Ambrose Boltspark','Grand Champion of Gnomeregan','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','10.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','64','0','0','0','0','0','0','0','0','0','66044','66042','66045','66043','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','0','617297499','0','boss_mage_toc5','1'),
('34703','36087','0','0','0','0','28564','0','28564','0','Lana Stouthammer','Grand Champion of Ironforge','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','10.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','67709','67706','67701','0','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','441','1','2093','617297499','0','boss_rouge_toc5','1'),
('34705','36088','0','0','0','0','28560','0','28560','0','Marshal Jacob Alerius','Grand Champion of Stormwind','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','10.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2092','617297499','0','boss_warrior_toc5','1'),
('34928','35517','0','0','0','0','29490','0','29490','0','Argent Confessor Paletress','','','0','82','82','2','14','14','0','1','1','1','1','452','678','0','170','14.5','2000','2000','2','0','0','0','0','0','0','0','362','542','136','7','104','0','0','0','0','0','0','0','0','0','66546','66536','66515','66537','0','0','0','0','0','0','0','0','','0','3','8','20','1','0','0','0','0','0','0','0','151','1','235','805257215','0','boss_paletress','1'),
('34942','35531','0','0','0','0','29525','0','29525','0','Memory of Hogger','','','0','82','82','2','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35028','35541','0','0','0','0','29536','0','29536','0','Memory of VanCleef','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35029','35538','0','0','0','0','29556','0','29556','0','Memory of Mutanus','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35030','35530','0','0','0','0','29537','0','29537','0','Memory of Herod','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35031','35536','0','0','0','0','29562','0','29562','0','Memory of Lucifron','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','66619','66552','0','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35032','0','0','0','0','0','14992','0','14992','0','Memory of Thunderaan','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35033','35521','0','0','0','0','14367','0','14367','0','Memory of Chromaggus','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35034','35528','0','0','0','0','29540','0','29540','0','Memory of Hakkar','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35035','0','0','0','0','0','29888','0','0','0','Barrett Ramsey','Argent Coliseum Master','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','768','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','11723'),
('35036','35543','0','0','0','0','29541','0','29541','0','Memory of Vek\'nilash','','','0','82','82','2','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35037','35535','0','0','0','0','29542','0','29542','0','Memory of Kalithresh','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66552','66620','66619','0','0','0','0','0','0','0','0','0','','0','3','29.2313','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35038','35537','0','0','0','0','29543','0','29543','0','Memory of Malchezaar','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35039','35527','0','0','0','0','18698','0','18698','0','Memory of Gruul','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35040','35542','0','0','0','0','29545','0','0','0','Memory of Vashj','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35041','35520','0','0','0','0','29546','0','29546','0','Memory of Archimonde','','','0','82','82','2','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35042','35533','0','0','0','0','29547','0','29547','0','Memory of Illidan','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35043','35523','0','0','0','0','18699','0','18699','0','Memory of Delrissa','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35044','35525','0','0','0','0','23428','0','23428','0','Memory of Entropius','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35045','35534','0','0','0','0','29558','0','29558','0','Memory of Ingvar','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','6','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35046','35522','0','0','0','0','29549','0','29549','0','Memory of Cyanigosa','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35047','35524','0','0','0','0','26644','0','26644','0','Memory of Eck','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35048','35539','0','0','0','0','21401','0','21401','0','Memory of Onyxia','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35049','35529','0','0','0','0','29557','0','29557','0','Memory of Heigan','','','0','82','82','2','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','6','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35050','35532','0','0','0','0','29185','0','29185','0','Memory of Ignis','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','5','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35051','35544','0','0','0','0','28548','0','28548','0','Memory of Vezax','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35052','35519','0','0','0','0','29553','0','29553','0','Memory of Algalon','','','0','82','82','2','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','4','72','0','0','0','0','0','0','0','0','0','67679','67678','67677','0','0','0','0','0','0','0','0','0','','0','3','29','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','npc_memory','1'),
('35119','35518','0','0','0','0','29616','0','29616','0','Eadric the Pure','Grand Champion of the Argent Crusade','','0','82','82','2','14','14','0','1','1','1','1','452','678','0','170','14.5','2000','2000','2','0','0','0','0','0','0','0','362','542','136','7','104','0','0','0','0','0','0','0','0','0','66865','66863','66867','66935','0','0','0','0','0','0','0','0','','0','3','42.5','20','1','0','0','0','0','0','0','0','151','1','834','805257215','0','boss_eadric','1'),
('35314','0','0','0','0','0','29090','0','0','0','Orgrimmar Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35323','0','0','0','0','0','28702','0','0','0','Sen\'jin Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35325','0','0','0','0','0','28864','0','0','0','Thunder Bluff Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','35325','0','0','0','0','0','0','0','0','63010','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','12340'),
('35326','0','0','0','0','0','28862','0','0','0','Silvermoon Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','35305','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35327','0','0','0','0','0','28865','0','0','0','Undercity Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35328','0','0','0','0','0','28863','0','0','0','Stormwind Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35329','0','0','0','0','0','28860','0','0','0','Ironforge Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35330','0','0','0','0','0','28858','0','0','0','Exodar Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35331','0','0','0','0','0','28859','0','0','0','Gnomeregan Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35332','0','0','0','0','0','28857','0','0','0','Darnassus Champion','','','0','80','80','2','35','35','0','1','1.14286','1','1','422','586','0','642','7.5','0','0','1','33554432','8','0','0','0','0','0','345','509','103','7','2048','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','PassiveAI','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','2049','0','0','','11723'),
('35451','35490','0','0','0','0','29837','0','29837','0','The Black Knight','','','0','80','80','2','14','14','0','1','1','1','1','420','630','0','158','11.8','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','35451','0','0','0','0','0','0','0','0','67724','67745','67718','67725','0','0','0','0','0','0','9530','9530','','0','3','5.95238','1','1','0','0','0','0','0','0','0','0','1','0','805257215','0','boss_black_knight','1'),
('35490','0','0','0','0','0','29837','0','29837','0','The Black Knight','','','0','80','80','0','14','14','0','1','1','1','1','420','630','0','158','17.6','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','35490','0','0','0','0','0','0','0','0','67884','68306','67881','67883','0','0','0','0','0','0','10700','10700','','0','3','37.7387','1','1','0','0','0','0','0','0','0','0','1','0','805257215','1','','1'),
('35517','0','0','0','0','0','29490','0','29490','0','Argent Confessor Paletress','','','0','82','82','2','14','14','0','1','1','1','1','452','678','0','170','22.4','2000','2000','2','0','0','0','0','0','0','0','362','542','136','7','104','0','0','0','0','0','0','0','0','0','66546','67674','66515','67675','0','0','0','0','0','0','0','0','','0','3','8','20','1','0','0','0','0','0','0','0','151','1','235','805257215','1','','1'),
('35518','0','0','0','0','0','29616','0','29616','0','Eadric the Pure','Grand Champion of the Argent Crusade','','0','82','82','2','14','14','0','1','1','1','1','452','678','0','170','22.4','2000','2000','2','0','0','0','0','0','0','0','362','542','136','7','104','0','0','0','0','0','0','0','0','0','66865','66863','66867','66935','0','0','0','0','0','0','0','0','','0','3','42.5','20','1','0','0','0','0','0','0','0','151','1','834','805257215','1','','1'),
('35519','0','0','0','0','0','29553','0','29553','0','Memory of Algalon','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','4','72','0','0','0','0','0','0','0','0','0','67679','67678','67677','0','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35520','0','0','0','0','0','29546','0','29546','0','Memory of Archimonde','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35521','0','0','0','0','0','14367','0','14367','0','Memory of Chromaggus','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35522','0','0','0','0','0','29549','0','29549','0','Memory of Cyanigosa','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35523','0','0','0','0','0','18699','0','18699','0','Memory of Delrissa','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35524','0','0','0','0','0','26644','0','26644','0','Memory of Eck','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35525','0','0','0','0','0','23428','0','23428','0','Memory of Entropius','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35527','0','0','0','0','0','18698','0','18698','0','Memory of Gruul','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35528','0','0','0','0','0','29540','0','29540','0','Memory of Hakkar','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35529','0','0','0','0','0','29557','0','29557','0','Memory of Heigan','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','6','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35530','0','0','0','0','0','29537','0','29537','0','Memory of Herod','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35531','0','0','0','0','0','29525','0','29525','0','Memory of Hogger','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35532','0','0','0','0','0','29185','0','29185','0','Memory of Ignis','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','5','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35533','0','0','0','0','0','29547','0','29547','0','Memory of Illidan','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35534','0','0','0','0','0','29558','0','29558','0','Memory of Ingvar','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','6','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35535','0','0','0','0','0','29542','0','29542','0','Memory of Kalithresh','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66552','66620','66619','0','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35536','0','0','0','0','0','29562','0','29562','0','Memory of Lucifron','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','66619','66552','0','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35537','0','0','0','0','0','29543','0','29543','0','Memory of Malchezaar','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','3','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35538','0','0','0','0','0','29556','0','29556','0','Memory of Mutanus','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35539','0','0','0','0','0','21401','0','21401','0','Memory of Onyxia','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','2','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35541','0','0','0','0','0','29536','0','29536','0','Memory of VanCleef','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35542','0','0','0','0','0','29545','0','29545','0','Memory of Vashj','','','0','82','82','0','14','14','0','1','1','0.5','1','452','678','0','170','15','2000','2000','1','0','0','0','0','0','0','0','362','542','136','7','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35543','0','0','0','0','0','29541','0','29541','0','Memory of Vek\'nilash','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35544','0','0','0','0','0','28548','0','28548','0','Memory of Vezax','','','0','82','82','0','14','14','0','1','1','0.5','1','330','495','0','124','20.5','2000','2000','8','0','0','0','0','0','0','0','264','396','99','10','72','0','0','0','0','0','0','0','0','0','66620','67679','66619','67678','0','0','0','0','0','0','0','0','','0','3','122.031','25','1','0','0','0','0','0','0','0','150','1','0','617297499','0','','1'),
('35545','0','0','0','0','0','25528','0','25528','0','Risen Jaeren Sunsworn','Black Knight\'s Minion','','0','80','80','2','14','14','0','1','1','1','0','420','630','0','158','1.4','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','0','0','0','0','0','0','0','0','0','67774','67879','67729','67886','0','0','0','0','0','0','0','0','','0','3','2.5','1','1','0','0','0','0','0','0','0','0','1','0','0','0','npc_risen_ghoul','1'),
('35564','35568','0','0','0','0','25528','0','25528','0','Risen Arelas Brightstar','Black Knight\'s Minion','','0','80','80','2','14','14','0','1','1','1','0','420','630','0','158','1.4','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','0','0','0','0','0','0','0','0','0','67774','67879','67729','67886','0','0','0','0','0','0','0','0','','0','3','2.5','1','1','0','0','0','0','0','0','0','0','1','0','0','0','npc_risen_ghoul','1'),
('35568','0','0','0','0','0','25528','0','25528','0','Risen Arelas Brightstar','Black Knight\'s Minion','','0','80','80','0','14','14','0','1','1','1','0','420','630','0','158','1.4','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','0','0','0','0','0','0','0','0','0','67879','67886','67880','0','0','0','0','0','0','0','0','0','','0','3','9.43467','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','1'),
('35569','36085','0','0','0','0','28637','0','28637','0','Eressea Dawnsinger','Grand Champion of Silvermoon','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','10.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','66044','66042','66045','66043','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2021','617297499','0','boss_mage_toc5','1'),
('35570','36091','0','0','0','0','28588','0','28588','0','Zul\'tore','Grand Champion of Sen\'jin','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','10.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68340','66083','66081','66079','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2019','617297499','0','boss_hunter_toc5','1'),
('35571','36090','0','0','0','0','28597','0','28597','0','Runok Wildmane','Grand Champion of the Thunder Bluff','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','10.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','67529','67530','67528','67534','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2025','617297499','0','boss_shaman_toc5','1'),
('35572','36089','0','0','0','0','28587','0','28587','0','Mokra the Skullcrusher','Grand Champion of Orgrimmar','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','10.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','441','1','2018','617297499','0','boss_warrior_toc5','1'),
('35590','35717','0','0','0','0','24996','24999','24997','0','Risen Champion','Black Knight\'s Minion','','0','80','80','2','14','14','0','1','1','1','0','420','630','0','158','1','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','0','0','0','0','0','0','0','0','0','67774','67879','67729','67886','0','0','0','0','0','0','0','0','','0','3','1.5','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','1'),
('35617','36084','0','0','0','0','28589','0','28589','0','Deathstalker Visceri','Grand Champion of Undercity','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','10.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','67709','67706','67701','0','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2020','617297499','0','boss_rouge_toc5','1'),
('35633','0','0','0','0','0','28571','0','0','0','Ambrose Boltspark\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35634','0','0','0','0','0','10718','0','0','0','Deathstalker Visceri\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35635','0','0','0','0','0','28607','0','0','0','Eressea Dawnsinger\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35636','0','0','0','0','0','2787','0','0','0','Lana Stouthammer\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35637','0','0','0','0','0','29284','0','0','0','Marshal Jacob Alerius\' Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35638','0','0','0','0','0','29879','0','0','0','Mokra the Skullcrusher\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35640','0','0','0','0','0','29880','0','0','0','Runok Wildmane\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35641','0','0','0','0','0','29261','0','0','0','Zul\'tore\'s Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('35644','0','0','0','0','0','28918','0','0','0','Argent Warhorse','','vehichleCursor','0','80','80','2','35','35','0','1','2','1','0','10000','20000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','10','0','0','0','0','0','0','0','0','0','0','62544','62575','63010','66482','0','0','0','0','0','486','0','0','','0','3','40','1','1','0','0','0','0','0','0','0','157','1','0','0','0','','11723'),
('35717','0','0','0','0','0','24996','24999','24997','0','Risen Champion','Black Knight\'s Minion','','0','80','80','0','14','14','0','1','1','1','0','420','630','0','158','1.4','2000','2000','1','0','0','0','0','0','0','0','336','504','126','6','72','0','0','0','0','0','0','0','0','0','67774','67879','67729','67886','0','0','0','0','0','0','0','0','','0','3','7.076','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','1'),
('35768','0','0','0','0','0','29255','0','0','0','Colosos\' Mount','','','0','80','80','2','14','14','0','1','1.14286','1','0','20000','30000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','486','0','0','','0','3','10','1','1','0','0','0','0','0','0','0','0','1','0','0','0','generic_vehicleAI_toc5','11723'),
('36082','0','0','0','0','0','28586','0','28586','0','Ambrose Boltspark','Grand Champion of Gnomeregan','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','15.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','64','0','0','0','0','0','0','0','0','0','68312','68310','66045','68311','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','0','617297499','1','','1'),
('36083','0','0','0','0','0','28736','0','28736','0','Colosos','Grand Champion of the Exodar','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','17','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68319','67530','68318','67534','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2096','617297499','1','','1'),
('36084','0','0','0','0','0','28589','0','28589','0','Deathstalker Visceri','Grand Champion of Undercity','','0','80','80','0','1801','1801','0','1','1','1','1','420','630','0','158','15.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','67709','67706','67701','0','0','0','0','0','0','0','0','0','','0','3','35.38','20','1','0','0','0','0','0','0','0','0','1','2020','617297499','1','','1'),
('36085','0','0','0','0','0','28637','0','28637','0','Eressea Dawnsinger','Grand Champion of Silvermoon','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','15.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68312','68310','66045','68311','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2021','617297499','1','','1'),
('36086','0','0','0','0','0','28735','0','28735','0','Jaelyne Evensong','Grand Champion of Darnassus','','0','80','80','2','1802','1802','0','1','1','1','1','420','630','0','158','15.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68340','66083','66081','66079','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2095','617297499','1','','1'),
('36087','0','0','0','0','0','28564','0','28564','0','Lana Stouthammer','Grand Champion of Ironforge','','0','80','80','0','1802','1802','0','1','1','1','1','420','630','0','158','15.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','35.38','20','1','0','0','0','0','0','0','0','441','1','2093','617297499','1','','1'),
('36088','0','0','0','0','0','28560','0','28560','0','Marshal Jacob Alerius','Grand Champion of Stormwind','','0','80','80','0','1802','1802','0','1','1','1','1','420','630','0','158','15.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','35.38','20','1','0','0','0','0','0','0','0','0','1','2092','617297499','1','','1'),
('36089','0','0','0','0','0','28587','0','28587','0','Mokra the Skullcrusher','Grand Champion of Orgrimmar','','0','80','80','0','1801','1801','0','1','1','1','1','420','630','0','158','15.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','35.38','20','1','0','0','0','0','0','0','0','441','1','2018','617297499','1','','1'),
('36090','0','0','0','0','0','28597','0','28597','0','Runok Wildmane','Grand Champion of the Thunder Bluff','','0','80','80','2','1801','1801','0','1','1','1','1','420','630','0','158','15.2','2000','2000','2','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68319','67530','67528','67534','0','0','0','0','0','0','0','0','','0','3','15','20','1','0','0','0','0','0','0','0','0','1','2025','617297499','1','','1'),
('36091','0','0','0','0','0','28588','0','28588','0','Zul\'tore','Grand Champion of Sen\'jin','','0','80','80','0','1801','1801','0','1','1','1','1','420','630','0','158','15.2','2000','2000','1','0','0','0','0','0','0','0','336','504','126','7','0','0','0','0','0','0','0','0','0','0','68340','66083','66081','66079','0','0','0','0','0','0','0','0','','0','3','35.38','20','1','0','0','0','0','0','0','0','0','1','2019','617297499','1','','1'),
('36558','0','0','0','0','0','29283','0','0','0','Argent Battleworg','','vehichleCursor','0','80','80','2','35','35','0','1','2','1','0','10000','20000','0','642','1','0','0','1','0','8','0','0','0','0','0','345','509','103','10','0','0','0','0','0','0','0','0','0','0','62544','62575','63010','66482','0','0','0','0','0','486','0','0','','0','3','40','1','1','0','0','0','0','0','0','0','157','1','0','0','0','','11723');
UPDATE `creature_template` SET `equipment_id`=2049 WHERE `entry` in (35314,35326,35327,35325,35323,35331,35330,35329,35328,35332);
UPDATE `creature_template` SET `equipment_id`=2025 WHERE `entry` in (35571,36090);
UPDATE `creature_template` SET `equipment_id`=2021 WHERE `entry` in (35569,36085);
UPDATE `creature_template` SET `equipment_id`=2018 WHERE `entry` in (35572,36089);
UPDATE `creature_template` SET `equipment_id`=2020 WHERE `entry` in (35617,36084);
UPDATE `creature_template` SET `equipment_id`=2019 WHERE `entry` in (35570,36091);
UPDATE `creature_template` SET `equipment_id`=2096 WHERE `entry` in (34701,36803);
UPDATE `creature_template` SET `equipment_id`=2093 WHERE `entry` in (34703,36087);
UPDATE `creature_template` SET `equipment_id`=2095 WHERE `entry` in (34657,36086);
UPDATE `creature_template` SET `equipment_id`=2092 WHERE `entry` in (34705,36088);
UPDATE `creature_template` SET `equipment_id`=834 WHERE `entry` in (35119,35518);
UPDATE `creature_template` SET `equipment_id`=235 WHERE `entry` in (34928,35517);
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry` in (35451,35490);
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|1073741823 WHERE `entry` IN
(35309,35310,
35305,35306,
35307,35308);
DELETE FROM `creature_template` WHERE `entry` in (35591,35592);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35591, 0, 0, 0, 0, 0, 29894, 0, 0, 0, 'Jaeren Sunsworn', '', '', 0, 75, 75, 2, 14, 14, 0, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_anstart'),
(35592, 0, 0, 0, 0, 0, 29893, 0, 0, 0, 'Arelas Brightstar', '', '', 0, 75, 75, 2, 14, 14, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_anstart');
DELETE FROM `creature_template` WHERE `entry`=35311;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35311, 0, 0, 0, 0, 0, 27769, 0, 0, 0, 'Fountain of Light', '', '', 0, 79, 80, 0, 14, 14, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');
DELETE FROM `creature_template` WHERE `entry`=35491;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35491, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight\'s Skeletal Gryphon', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 4, 15, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, 'npc_black_knight_skeletal_gryphon');
DELETE FROM `script_waypoint` WHERE `entry`=35491;
INSERT INTO `script_waypoint` VALUES
(35491,1,781.513062, 657.989624, 466.821472,0,''),
(35491,2,759.004639, 665.142029, 462.540771,0,''),
(35491,3,732.936646, 657.163879, 452.678284,0,''),
(35491,4,717.490967, 646.008545, 440.136902,0,''),
(35491,5,707.570129, 628.978455, 431.128632,0,''),
(35491,6,705.164063, 603.628418, 422.956635,0,''),
(35491,7,716.350891, 588.489746, 420.801666,0,''),
(35491,8,741.702881, 580.167725, 420.523010,0,''),
(35491,9,761.634033, 586.382690, 422.206207,0,''),
(35491,10,775.982666, 601.991943, 423.606079,0,''),
(35491,11,769.051025, 624.686157, 420.035126,0,''),
(35491,12,756.582214, 631.692322, 412.529785,0,''),
(35491,13,744.841,634.505,411.575,0,'');
DELETE FROM `creature_template` WHERE `entry` in (35492);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35492, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight\'s Skeletal Gryphon', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 15, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 0, 0, 'npc_gr');
DELETE FROM `script_waypoint` WHERE `entry`=35492;
INSERT INTO `script_waypoint` VALUES
(35492,1,741.067078, 634.471558, 411.569366,0,''),
(35492,2,735.726196, 639.247498, 414.725555,0,''),
(35492,3,730.187256, 653.250977, 418.913269,0,''),
(35492,4,734.517700, 666.071350, 426.259247,0,''),
(35492,5,739.638489, 675.339417, 438.226776,0,''),
(35492,6,741.833740, 698.797302, 456.986328,0,''),
(35492,7,734.647339, 711.084778, 467.165314,0,''),
(35492,8,715.388489, 723.820862, 470.333588,0,''),
(35492,9,687.178711, 730.140503, 470.569336,0,'');
DELETE FROM `creature` WHERE `id`=35004;
DELETE FROM `creature` WHERE `guid`=130961;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(130961, 35004, 650, 3, 1, 0, 0, 746.626, 618.54, 411.09, 4.63158, 86400, 0, 0, 10635, 0, 0, 0);
UPDATE `creature_template` SET `dmg_multiplier`= (dmg_multiplier*1.40) WHERE `entry` IN (SELECT `id` FROM creature WHERE `map`=650);
UPDATE `creature_template` SET `dmg_multiplier`= (dmg_multiplier*2) WHERE `entry`= 35451;
UPDATE `creature_template` SET `dmg_multiplier`= (dmg_multiplier*2) WHERE `entry`= 35490;
DELETE FROM `creature` WHERE `map`=650;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(130958, 36558, 650, 3, 1, 0, 0, 726.826, 661.201, 412.472, 4.66003, 86400, 0, 0, 1, 0, 0, 0),
(130960, 36558, 650, 3, 1, 0, 0, 716.665, 573.495, 412.475, 0.977384, 86400, 0, 0, 1, 0, 0, 0), 
(130962, 36558, 650, 3, 1, 0, 0, 705.497, 583.944, 412.476, 0.698132, 86400, 0, 0, 1, 0, 0, 0), 
(130964, 36558, 650, 3, 1, 0, 0, 770.486, 571.552, 412.475, 2.05949, 86400, 0, 0, 1, 0, 0, 0), 
(130966, 36558, 650, 3, 1, 0, 0, 717.443, 660.646, 412.467, 4.92183, 86400, 0, 0, 1, 0, 0, 0), 
(130968, 36558, 650, 3, 1, 0, 0, 700.531, 591.927, 412.475, 0.523599, 86400, 0, 0, 1, 0, 0, 0), 
(130970, 36558, 650, 3, 1, 0, 0, 790.177, 589.059, 412.475, 2.56563, 86400, 0, 0, 1, 0, 0, 0), 
(130972, 36558, 650, 3, 1, 0, 0, 702.165, 647.267, 412.475, 5.68977, 86400, 0, 0, 1, 0, 0, 0), 
(130974, 36558, 650, 3, 1, 0, 0, 773.097, 660.733, 412.467, 4.45059, 86400, 0, 0, 1, 0, 0, 0), 
(130976, 36558, 650, 3, 1, 0, 0, 793.052, 642.851, 412.474, 3.63029, 86400, 0, 0, 1, 0, 0, 0), 
(130978, 36558, 650, 3, 1, 0, 0, 778.741, 576.049, 412.476, 2.23402, 86400, 0, 0, 1, 0, 0, 0), 
(130980, 36558, 650, 3, 1, 0, 0, 788.016, 650.788, 412.475, 3.80482, 86400, 0, 0, 1, 0, 0, 0),
(130982, 35644, 650, 3, 1, 0, 0, 704.943, 651.33, 412.475, 5.60251, 86400, 0, 0, 1, 0, 0, 0),
(130984, 35644, 650, 3, 1, 0, 0, 774.898, 573.736, 412.475, 2.14675, 86400, 0, 0, 1, 0, 0, 0), 
(130986, 35644, 650, 3, 1, 0, 0, 699.943, 643.37, 412.474, 5.77704, 86400, 0, 0, 1, 0, 0, 0), 
(130988, 35644, 650, 3, 1, 0, 0, 712.594, 576.26, 412.476, 0.890118, 86400, 0, 0, 1, 0, 0, 0), 
(130990, 35644, 650, 3, 1, 0, 0, 793.009, 592.667, 412.475, 2.6529, 86400, 0, 0, 1, 0, 0, 0), 
(130992, 35644, 650, 3, 1, 0, 0, 702.967, 587.649, 412.475, 0.610865, 86400, 0, 0, 1, 0, 0, 0), 
(130994, 35644, 650, 3, 1, 0, 0, 768.255, 661.606, 412.47, 4.55531, 86400, 0, 0, 1, 0, 0, 0), 
(130996, 35644, 650, 3, 1, 0, 0, 720.569, 571.285, 412.475, 1.06465, 86400, 0, 0, 1, 0, 0, 0), 
(130998, 35644, 650, 3, 1, 0, 0, 787.439, 584.969, 412.476, 2.47837, 86400, 0, 0, 1, 0, 0, 0), 
(131000, 35644, 650, 3, 1, 0, 0, 722.363, 660.745, 412.468, 4.83456, 86400, 0, 0, 1, 0, 0, 0), 
(131002, 35644, 650, 3, 1, 0, 0, 790.49, 646.533, 412.474, 3.71755, 86400, 0, 0, 1, 0, 0, 0), 
(131004, 35644, 650, 3, 1, 0, 0, 777.564, 660.3, 412.467, 4.34587, 86400, 0, 0, 1, 0, 0, 0),
(130961, 35591, 650, 3, 1, 0, 0, 746.626, 618.54, 411.09, 4.63158, 86400, 0, 0, 10635, 0, 0, 0),
(115948, 35016, 650, 3, 1, 0, 0, 746.524, 615.868, 411.172, 0, 180, 0, 0, 1, 0, 0, 0),
(115949, 35016, 650, 3, 1, 0, 0, 795.549, 618.25, 412.477, 0, 180, 0, 0, 1, 0, 0, 0),
(115950, 35016, 650, 3, 1, 0, 0, 782.12, 583.21, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(115951, 35016, 650, 3, 1, 0, 0, 791.972, 638.01, 412.47, 0, 180, 0, 0, 1, 0, 0, 0),
(115952, 35016, 650, 3, 1, 0, 0, 780.436, 654.406, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(115953, 35016, 650, 3, 1, 0, 0, 697.285, 618.253, 412.476, 0, 180, 0, 0, 1, 0, 0, 0),
(115954, 35016, 650, 3, 1, 0, 0, 714.486, 581.722, 412.476, 0, 180, 0, 0, 1, 0, 0, 0),
(115955, 35016, 650, 3, 1, 0, 0, 703.884, 596.601, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(115956, 35016, 650, 3, 1, 0, 0, 746.977, 618.793, 411.971, 0, 180, 0, 0, 1, 0, 0, 0),
(115957, 35016, 650, 3, 1, 0, 0, 748.884, 616.462, 411.174, 0, 180, 0, 0, 1, 0, 0, 0),
(115958, 35016, 650, 3, 1, 0, 0, 702.274, 638.76, 412.47, 0, 180, 0, 0, 1, 0, 0, 0),
(115959, 35016, 650, 3, 1, 0, 0, 792.259, 598.224, 412.47, 0, 180, 0, 0, 1, 0, 0, 0),
(115960, 35016, 650, 3, 1, 0, 0, 712.413, 653.931, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(115961, 35016, 650, 3, 1, 0, 0, 747.375, 619.109, 411.971, 0, 180, 0, 0, 1, 0, 0, 0),
(131040, 34856, 650, 3, 65535, 0, 0, 810.378, 600.961, 438.781, 2.85266, 300, 0, 0, 1, 0, 0, 0), 
(131041, 34856, 650, 3, 65535, 0, 0, 803.7, 601.271, 435.419, 2.93905, 300, 0, 0, 1, 0, 0, 0),
(131042, 34856, 650, 3, 65535, 0, 0, 803.254, 599.097, 435.419, 2.93512, 300, 0, 0, 1, 0, 0, 0),
(131043, 34856, 650, 3, 65535, 0, 0, 801.833, 592.214, 435.419, 2.66809, 300, 0, 0, 1, 0, 0, 0),
(131044, 34856, 650, 3, 65535, 0, 0, 803.01, 588.849, 436.921, 2.53849, 300, 0, 0, 1, 0, 0, 0),
(131045, 34856, 650, 3, 65535, 0, 0, 808.849, 591.522, 438.762, 2.78589, 300, 0, 0, 1, 0, 0, 0),
(131080, 34857, 650, 3, 65535, 0, 0, 691.338, 593.985, 435.421, 0.463489, 300, 0, 0, 1, 0, 0, 0),
(131081, 34857, 650, 3, 65535, 0, 0, 686.892, 594.635, 436.913, 0.310337, 300, 0, 0, 1, 0, 0, 0),
(131082, 34857, 650, 3, 65535, 0, 0, 682.889, 596.325, 438.744, 0.212162, 300, 0, 0, 1, 0, 0, 0),
(131083, 34857, 650, 3, 65535, 0, 0, 689.73, 599.11, 435.42, 0.341752, 300, 0, 0, 1, 0, 0, 0),
(131084, 34857, 650, 3, 65535, 0, 0, 678.56, 600.035, 440.169, 0.141476, 300, 0, 0, 1, 0, 0, 0),
(131075, 34858, 650, 3, 65535, 0, 0, 697.235, 584.177, 435.421, 0.58129, 300, 0, 0, 1, 0, 0, 0),
(131076, 34858, 650, 3, 65535, 0, 0, 697.667, 578.208, 436.925, 0.600927, 300, 0, 0, 1, 0, 0, 0),
(131077, 34858, 650, 3, 65535, 0, 0, 689.247, 585.204, 438.779, 0.467415, 300, 0, 0, 1, 0, 0, 0),
(131078, 34858, 650, 3, 65535, 0, 0, 690.431, 576.641, 440.185, 0.565586, 300, 0, 0, 1, 0, 0, 0),
(131079, 34858, 650, 3, 65535, 0, 0, 686.422, 588.876, 438.766, 0.479192, 300, 0, 0, 1, 0, 0, 0),
(131085, 34859, 650, 3, 65535, 0, 0, 689.458, 604.899, 435.417, 0.180746, 300, 0, 0, 1, 0, 0, 0),
(131086, 34859, 650, 3, 65535, 0, 0, 686.041, 601.491, 436.916, 0.255361, 300, 0, 0, 1, 0, 0, 0),
(131087, 34859, 650, 3, 65535, 0, 0, 681.72, 605.995, 438.765, 0.290703, 300, 0, 0, 1, 0, 0, 0),
(131088, 34859, 650, 3, 65535, 0, 0, 689.472, 629.279, 435.417, 6.20476, 300, 0, 0, 1, 0, 0, 0),
(131089, 34859, 650, 3, 65535, 0, 0, 686.241, 634.227, 436.924, 6.11444, 300, 0, 0, 1, 0, 0, 0),
(131090, 34859, 650, 3, 65535, 0, 0, 682.425, 633.087, 438.772, 6.01626, 300, 0, 0, 1, 0, 0, 0),
(131096, 34860, 650, 3, 65535, 0, 0, 699.635, 654.463, 435.421, 5.85133, 300, 0, 0, 1, 0, 0, 0),
(131097, 34860, 650, 3, 65535, 0, 0, 695.174, 654.18, 436.925, 5.61964, 300, 0, 0, 1, 0, 0, 0),
(131098, 34860, 650, 3, 65535, 0, 0, 689.259, 651.278, 438.771, 5.79242, 300, 0, 0, 1, 0, 0, 0),
(131099, 34860, 650, 3, 65535, 0, 0, 688.07, 655.691, 440.196, 5.7885, 300, 0, 0, 1, 0, 0, 0),
(131091, 34861, 650, 3, 65535, 0, 0, 690.616, 639.017, 435.42, 6.08695, 300, 0, 0, 1, 0, 0, 0),
(131092, 34861, 650, 3, 65535, 0, 0, 692.094, 643.788, 435.42, 5.92201, 300, 0, 0, 1, 0, 0, 0),
(131093, 34861, 650, 3, 65535, 0, 0, 687.286, 642.438, 436.921, 5.97699, 300, 0, 0, 1, 0, 0, 0),
(131094, 34861, 650, 3, 65535, 0, 0, 686.736, 647.02, 438.783, 5.78849, 300, 0, 0, 1, 0, 0, 0),
(131095, 34861, 650, 3, 65535, 0, 0, 680.065, 642.334, 440.188, 6.08302, 300, 0, 0, 1, 0, 0, 0),
(131046, 34868, 650, 3, 65535, 0, 0, 796.164, 584.956, 435.421, 2.44032, 300, 0, 0, 1, 0, 0, 0),
(131047, 34868, 650, 3, 65535, 0, 0, 798.57, 588.261, 435.421, 2.53064, 300, 0, 0, 1, 0, 0, 0),
(131048, 34868, 650, 3, 65535, 0, 0, 792.513, 579.865, 435.421, 2.43639, 300, 0, 0, 1, 0, 0, 0),
(131049, 34868, 650, 3, 65535, 0, 0, 796.131, 579.051, 436.927, 2.52671, 300, 0, 0, 1, 0, 0, 0),
(131050, 34868, 650, 3, 65535, 0, 0, 801.093, 579.5, 438.752, 2.511, 300, 0, 0, 1, 0, 0, 0),
(131029, 34869, 650, 3, 65535, 0, 0, 809.105, 643.482, 438.774, 3.50385, 300, 0, 0, 1, 0, 0, 0),
(131030, 34869, 650, 3, 65535, 0, 0, 802.657, 640.241, 435.419, 3.41353, 300, 0, 0, 1, 0, 0, 0),
(131031, 34869, 650, 3, 65535, 0, 0, 806.511, 638.859, 436.923, 3.33892, 300, 0, 0, 1, 0, 0, 0),
(131032, 34869, 650, 3, 65535, 0, 0, 803.337, 635.024, 435.419, 3.3507, 300, 0, 0, 1, 0, 0, 0),
(131033, 34869, 650, 3, 65535, 0, 0, 810.526, 635.597, 438.772, 3.37874, 300, 0, 0, 1, 0, 0, 0),
(131034, 34870, 650, 3, 65535, 0, 0, 804.269, 629.575, 435.418, 3.29627, 300, 0, 0, 1, 0, 0, 0),
(131035, 34870, 650, 3, 65535, 0, 0, 807.446, 632.568, 436.922, 3.41015, 300, 0, 0, 1, 0, 0, 0),
(131036, 34870, 650, 3, 65535, 0, 0, 811.982, 626.887, 438.773, 3.31983, 300, 0, 0, 1, 0, 0, 0),
(131037, 34870, 650, 3, 65535, 0, 0, 812.287, 608.857, 438.76, 2.92321, 300, 0, 0, 1, 0, 0, 0),
(131038, 34870, 650, 3, 65535, 0, 0, 804.13, 606.65, 435.418, 2.91143, 300, 0, 0, 1, 0, 0, 0),
(131039, 34870, 650, 3, 65535, 0, 0, 807.288, 603.803, 436.927, 2.8054, 300, 0, 0, 1, 0, 0, 0),
(131024, 34871, 650, 3, 65535, 0, 0, 795.766, 651.07, 435.421, 3.73555, 300, 0, 0, 1, 0, 0, 0),
(131025, 34871, 650, 3, 65535, 0, 0, 797.19, 655.396, 436.93, 3.89263, 300, 0, 0, 1, 0, 0, 0),
(131026, 34871, 650, 3, 65535, 0, 0, 804.537, 650.886, 438.767, 3.7434, 300, 0, 0, 1, 0, 0, 0),
(131027, 34871, 650, 3, 65535, 0, 0, 802.272, 648.233, 436.923, 3.52898, 300, 0, 0, 1, 0, 0, 0),
(131028, 34871, 650, 3, 65535, 0, 0, 800.747, 644.155, 435.421, 3.6413, 300, 0, 0, 1, 0, 0, 0),
(131067, 34966, 650, 3, 65535, 0, 0, 726.498, 554.757, 438.775, 1.33527, 300, 0, 0, 1, 0, 0, 0),
(131068, 34966, 650, 3, 65535, 0, 0, 725.875, 561.87, 435.421, 1.29992, 300, 0, 0, 1, 0, 0, 0),
(131069, 34966, 650, 3, 65535, 0, 0, 720.481, 559.718, 436.92, 1.05252, 300, 0, 0, 1, 0, 0, 0),
(131070, 34966, 650, 3, 65535, 0, 0, 720.483, 564.132, 435.421, 1.08394, 300, 0, 0, 1, 0, 0, 0),
(131060, 34970, 650, 3, 65535, 0, 0, 757.896, 560.428, 435.417, 1.73189, 300, 0, 0, 1, 0, 0, 0),
(131061, 34970, 650, 3, 65535, 0, 0, 763.526, 558.026, 436.932, 1.73189, 300, 0, 0, 1, 0, 0, 0),
(131062, 34970, 650, 3, 65535, 0, 0, 761.724, 553.669, 438.767, 1.78686, 300, 0, 0, 1, 0, 0, 0),
(131051, 34974, 650, 3, 65535, 0, 0, 785.952, 572.827, 435.421, 2.13401, 300, 0, 0, 1, 0, 0, 0),
(131052, 34974, 650, 3, 65535, 0, 0, 781.002, 569.334, 435.421, 2.09474, 300, 0, 0, 1, 0, 0, 0),
(131053, 34974, 650, 3, 65535, 0, 0, 780.854, 565.183, 436.924, 2.08296, 300, 0, 0, 1, 0, 0, 0),
(131054, 34974, 650, 3, 65535, 0, 0, 786.776, 565.04, 438.765, 2.2204, 300, 0, 0, 1, 0, 0, 0),
(131055, 34975, 650, 3, 65535, 0, 0, 775.647, 565.757, 435.421, 2.03191, 300, 0, 0, 1, 0, 0, 0),
(131056, 34975, 650, 3, 65535, 0, 0, 766.964, 561.534, 435.421, 1.81828, 300, 0, 0, 1, 0, 0, 0),
(131057, 34975, 650, 3, 65535, 0, 0, 767.925, 557.983, 436.914, 1.72796, 300, 0, 0, 1, 0, 0, 0),
(131058, 34975, 650, 3, 65535, 0, 0, 772.597, 559.445, 436.919, 2.02249, 300, 0, 0, 1, 0, 0, 0),
(131059, 34975, 650, 3, 65535, 0, 0, 777.127, 559.035, 438.781, 2.10495, 300, 0, 0, 1, 0, 0, 0),
(131063, 34977, 650, 3, 65535, 0, 0, 735.978, 560.676, 435.417, 1.4727, 300, 0, 0, 1, 0, 0, 0),
(131064, 34977, 650, 3, 65535, 0, 0, 733.086, 557.001, 436.916, 1.32347, 300, 0, 0, 1, 0, 0, 0),
(131065, 34977, 650, 3, 65535, 0, 0, 733.016, 549.424, 440.174, 1.2253, 300, 0, 0, 1, 0, 0, 0),
(131066, 34977, 650, 3, 65535, 0, 0, 728.087, 558.086, 436.927, 1.39023, 300, 0, 0, 1, 0, 0, 0),
(131071, 34979, 650, 3, 65535, 0, 0, 716.195, 558.771, 438.769, 1.02897, 300, 0, 0, 1, 0, 0, 0),
(131072, 34979, 650, 3, 65535, 0, 0, 713.858, 563.841, 436.914, 0.938649, 300, 0, 0, 1, 0, 0, 0),
(131073, 34979, 650, 3, 65535, 0, 0, 711.956, 569.633, 435.421, 1.00148, 300, 0, 0, 1, 0, 0, 0),
(131074, 34979, 650, 3, 65535, 0, 0, 702.138, 563.997, 440.192, 0.962211, 300, 0, 0, 1, 0, 0, 0),
(131106, 34883, 650, 3, 65535, 0, 0, 735.931, 560.084, 435.416, 1.3216, 300, 0, 0, 1, 0, 0, 0),
(131107, 34883, 650, 3, 65535, 0, 0, 726.508, 554.731, 438.774, 1.3805, 300, 0, 0, 1, 0, 0, 0),
(131108, 34883, 650, 3, 65535, 0, 0, 713.509, 563.346, 436.897, 1.11347, 300, 0, 0, 1, 0, 0, 0),
(131109, 34883, 650, 3, 65535, 0, 0, 701.499, 563.425, 440.137, 0.944606, 300, 0, 0, 1, 0, 0, 0),
(131116, 34901, 650, 3, 65535, 0, 0, 681.404, 606.01, 438.753, 0.186696, 300, 0, 0, 1, 0, 0, 0),
(131117, 34901, 650, 3, 65535, 0, 0, 682.044, 633.089, 438.758, 6.26568, 300, 0, 0, 1, 0, 0, 0),
(131114, 34902, 650, 3, 65535, 0, 0, 690.713, 593.896, 435.421, 0.504781, 300, 0, 0, 1, 0, 0, 0),
(131115, 34902, 650, 3, 65535, 0, 0, 678.504, 599.937, 440.17, 0.159205, 300, 0, 0, 1, 0, 0, 0),
(131110, 34903, 650, 3, 65535, 0, 0, 697.341, 577.798, 436.911, 0.665789, 300, 0, 0, 1, 0, 0, 0),
(131111, 34903, 650, 3, 65535, 0, 0, 696.432, 583.914, 435.421, 0.563687, 300, 0, 0, 1, 0, 0, 0),
(131112, 34903, 650, 3, 65535, 0, 0, 689.846, 576.178, 440.141, 0.461585, 300, 0, 0, 1, 0, 0, 0),
(131113, 34903, 650, 3, 65535, 0, 0, 688.993, 584.588, 438.755, 0.669715, 300, 0, 0, 1, 0, 0, 0),
(131118, 34904, 650, 3, 65535, 0, 0, 687.376, 642.417, 436.923, 6.03791, 300, 0, 0, 1, 0, 0, 0),
(131119, 34904, 650, 3, 65535, 0, 0, 691.9, 643.825, 435.421, 5.83764, 300, 0, 0, 1, 0, 0, 0),
(131120, 34904, 650, 3, 65535, 0, 0, 686.635, 646.976, 438.781, 5.81407, 300, 0, 0, 1, 0, 0, 0),
(131121, 34905, 650, 3, 65535, 0, 0, 688.937, 651.509, 438.754, 5.74731, 300, 0, 0, 1, 0, 0, 0),
(131122, 34905, 650, 3, 65535, 0, 0, 699.036, 654.459, 435.421, 5.67271, 300, 0, 0, 1, 0, 0, 0),
(131123, 34905, 650, 3, 65535, 0, 0, 694.682, 654.335, 436.912, 5.7748, 300, 0, 0, 1, 0, 0, 0);
DELETE FROM `gameobject_template` WHERE `entry` IN (195709, 195374, 195323);
DELETE FROM `gameobject_template` WHERE `entry` IN (195710, 195375, 195324);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES 
('195323','3','9069','Confessor\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195323','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723'),
('195324','3','9069','Confessor\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195324','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723'),
('195374','3','9069','Eadric\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195374','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723'),
('195375','3','9069','Eadric\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195375','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723'),
('195709','3','9069','Champion\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195709','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723'),
('195710','3','9069','Champion\'s Cache','','','','0','0','2','0','0','0','0','0','0','1634','195710','0','1','0','0','0','0','0','0','0','1','0','1','0','1','0','0','0','0','0','0','0','0','','11723');
DELETE FROM `gameobject` WHERE `map`=650;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
('150063','196398','650','3','1','801.663','624.806','412.344','-1.3439','0','0','0','0','0','0','0'),
('150064','196398','650','3','1','784.533','660.238','412.389','-0.715585','0','0','0','0','0','0','0'),
('150065','196398','650','3','1','710.325','660.708','412.387','0.698132','0','0','0','0','0','0','0'),
('150066','196398','650','3','1','692.127','610.575','412.347','1.85005','0','0','0','0','0','0','0'),
('150067','195477','650','3','1','813.13','617.632','413.039','0','0','0','0','0','0','0','0'),
('150068','195486','650','3','1','813.12','617.59','413.031','0','0','0','0','0','0','0','0'),
('150069','195481','650','3','1','746.156','549.464','412.881','1.5708','0','0','0','0','0','0','0'),
('150070','195480','650','3','1','746.156','549.464','412.881','1.5708','0','0','0','0','0','0','0'),
('150071','195479','650','3','1','746.156','549.464','412.881','1.5708','0','0','0','0','0','0','0'),
('150072','195478','650','3','1','746.156','549.464','412.881','1.5708','0','0','0','0','0','0','0'),
('150075','195485','650','3','1','844.685','623.408','159.109','0','0','0','0','0','0','0','0'),
('150081','195647','650','3','1','746.698','677.469','412.339','1.5708','0','0','1','0','0','0','1'),
('150074','195649','650','3','65535','685.625','617.977','412.285','6.28137','0','0','0.000909718','-1','25','0','1'),
('150078','180723','650','3','1','779.951','655.656','421.818','-2.35619','0','0','0','0','0','0','0'),
('150079','180723','650','3','1','782.309','582.892','421.546','2.25147','0','0','0','0','0','0','0'),
('150073','195648','650','3','65535','746.561','557.002','412.393','1.57292','0','0','0.707856','0.706357','25','0','1'),
('150076','195650','650','3','65535','807.66','618.091','412.394','3.12015','0','0','0.999943','0.0107224','25','0','0'),
('150082','180708','650','3','1','712.521','655.648','424.593','-0.767944','0','0','0','0','0','0','0'),
('150083','180708','650','3','1','704.793','600.736','429.519','0.436332','0','0','0','0','0','0','0'),
('150084','180708','650','3','1','704.302','636.326','425.136','-0.418879','0','0','0','0','0','0','0'),
('150085','180703','650','3','1','712.521','655.648','424.593','-0.767944','0','0','0','0','0','0','0'),
('150086','180703','650','3','1','714.158','585.533','425.579','0.715585','0','0','0','0','0','0','0'),
('150087','180703','650','3','1','704.793','600.736','429.519','0.436332','0','0','0','0','0','0','0'),
('150088','180730','650','3','1','714.158','585.533','425.579','0.715585','0','0','0','0','0','0','0'),
('150089','180730','650','3','1','704.793','600.736','429.519','0.436332','0','0','0','0','0','0','0'),
('150090','180736','650','3','1','792.309','598.457','424.636','2.70526','0','0','0','0','0','0','0'),
('150091','180736','650','3','1','794.441','638.306','425.7','-2.77507','0','0','0','0','0','0','0'),
('150092','180736','650','3','1','779.951','655.656','421.818','-2.35619','0','0','0','0','0','0','0'),
('150093','180736','650','3','1','782.309','582.892','421.546','2.25147','0','0','0','0','0','0','0'),
('150094','180720','650','3','1','779.951','655.656','421.818','-2.35619','0','0','0','0','0','0','0'),
('150095','180720','650','3','1','782.309','582.892','421.546','2.25147','0','0','0','0','0','0','0'),
('150096','180738','650','3','1','794.441','638.306','425.7','-2.77507','0','0','0','0','0','0','0'),
('150097','180738','650','3','1','782.309','582.892','421.546','2.25147','0','0','0','0','0','0','0'),
('150098','180728','650','3','1','704.302','636.326','425.136','-0.418879','0','0','0','0','0','0','0'),
('150099','180728','650','3','1','714.158','585.533','425.579','0.715585','0','0','0','0','0','0','0'),
('150100','180728','650','3','1','712.521','655.648','424.593','-0.767944','0','0','0','0','0','0','0');
DELETE FROM `gameobject` WHERE `id` IN (195709, 195374, 195323, 195710, 195375, 195324);
DELETE FROM `reference_loot_template` WHERE `entry` IN (47497, 47177);
DELETE FROM `conditions` WHERE `SourceGroup` IN (35451, 35490, 195323, 195324, 195374, 195375, 195709, 195710); 
INSERT INTO `conditions` VALUES
(1, 35451, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(1, 35490, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195323, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195324, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195374, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195375, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195709, 43228, 0, 1, 57940, 0, 0, 0, '', NULL),
(4, 195710, 43228, 0, 1, 57940, 0, 0, 0, '', NULL);
DELETE FROM `creature_loot_template` WHERE (`entry`=35451);
INSERT INTO `creature_loot_template` VALUES 
(35451, 47216, 16.666, 1, 2, 1, 1),
(35451, 47215, 16.666, 1, 2, 1, 1),
(35451, 47226, 16.666, 1, 2, 1, 1),
(35451, 47227, 16.666, 1, 2, 1, 1),
(35451, 47229, 16.666, 1, 2, 1, 1),
(35451, 47232, 16.666, 1, 2, 1, 1),
(35451, 47222, 16.666, 1, 1, 1, 1),
(35451, 47221, 16.666, 1, 1, 1, 1),
(35451, 47228, 16.666, 1, 1, 1, 1),
(35451, 47220, 16.666, 1, 1, 1, 1),
(35451, 47230, 16.666, 1, 1, 1, 1),
(35451, 47231, 16.666, 1, 1, 1, 1),
(35451, 43228, 28, 1, 0, 3, 3);
DELETE FROM `creature_loot_template` WHERE (`entry`=35490);
INSERT INTO `creature_loot_template` VALUES 
(35490, 47565, 14.285, 1, 2, 1, 1),
(35490, 47568, 14.285, 1, 2, 1, 1),
(35490, 47569, 14.285, 1, 2, 1, 1),
(35490, 47564, 14.285, 1, 2, 1, 1),
(35490, 47567, 14.285, 1, 2, 1, 1),
(35490, 47560, 14.285, 1, 2, 1, 1),
(35490, 49682, 14.285, 1, 2, 1, 1),
(35490, 47566, 16.666, 1, 1, 1, 1),
(35490, 47562, 16.666, 1, 1, 1, 1),
(35490, 47529, 16.666, 1, 1, 1, 1),
(35490, 47561, 16.666, 1, 1, 1, 1),
(35490, 47563, 16.666, 1, 1, 1, 1),
(35490, 47527, 16.666, 1, 1, 1, 1),
(35490, 43228, 2, 1, 0, 4, 4),
(35490, 43102, 100, 1, 0, 1, 1),
(35490, 48418, -100, 1, 0, 1, 1),
(35490, 47241, 100, 1, 0, 1, 1),
(35490, 44990, 47, 1, 0, 1, 1),
(35490, 34057, 1.3, 1, 0, 1, 2);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195323);
INSERT INTO `gameobject_loot_template` VALUES 
(195323, 43228, 100, 1, 0, 3, 3),
(195323, 47176, 8.333, 1, 1, 1, 1),
(195323, 47177, 8.333, 1, 1, 1, 1),
(195323, 47178, 8.333, 1, 1, 1, 1),
(195323, 47181, 8.333, 1, 1, 1, 1),
(195323, 47185, 8.333, 1, 1, 1, 1),
(195323, 47211, 8.333, 1, 1, 1, 1),
(195323, 47212, 8.333, 1, 1, 1, 1),
(195323, 47213, 8.333, 1, 1, 1, 1),
(195323, 47214, 8.333, 1, 1, 1, 1),
(195323, 47217, 8.333, 1, 1, 1, 1),
(195323, 47218, 8.333, 1, 1, 1, 1),
(195323, 47219, 8.333, 1, 1, 1, 1);
UPDATE `gameobject_template` SET `data1`='195324' WHERE entry='195324';
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195324);
INSERT INTO `gameobject_loot_template` VALUES 
(195324, 47514, 8.333, 1, 1, 1, 1),
(195324, 47512, 8.333, 1, 1, 1, 1),
(195324, 47511, 8.333, 1, 1, 1, 1),
(195324, 47510, 8.333, 1, 1, 1, 1),
(195324, 47500, 8.333, 1, 1, 1, 1),
(195324, 47245, 8.333, 1, 1, 1, 1),
(195324, 47522, 8.333, 1, 1, 1, 1),
(195324, 47498, 8.333, 1, 1, 1, 1),
(195324, 47497, 8.333, 1, 1, 1, 1),
(195324, 47496, 8.333, 1, 1, 1, 1),
(195324, 47495, 8.333, 1, 1, 1, 1),
(195324, 47494, 8.333, 1, 1, 1, 1),
(195324, 47241, 100, 1, 0, 1, 1),
(195324, 44990, 40, 1, 0, 1, 1),
(195324, 43228, 23, 1, 0, 4, 4),
(195324, 34057, 1.3, 1, 0, 1, 2);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195374);
INSERT INTO `gameobject_loot_template` VALUES 
(195374, 47176, 8.333, 1, 1, 1, 1),
(195374, 47200, 8.333, 1, 1, 1, 1),
(195374, 47178, 8.333, 1, 1, 1, 1),
(195374, 47201, 8.333, 1, 1, 1, 1),
(195374, 47213, 8.333, 1, 1, 1, 1),
(195374, 47181, 8.333, 1, 1, 1, 1),
(195374, 47197, 8.333, 1, 1, 1, 1),
(195374, 47177, 8.333, 1, 1, 1, 1),
(195374, 47202, 8.333, 1, 1, 1, 1),
(195374, 47199, 8.333, 1, 1, 1, 1),
(195374, 47185, 8.333, 1, 1, 1, 1),
(195374, 43228, 21, 1, 0, 3, 3),
(195374, 47210, 8.333, 1, 1, 1, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195375);
INSERT INTO `gameobject_loot_template` VALUES 
(195375, 47509, 8.333, 1, 1, 1, 1),
(195375, 47508, 8.333, 1, 1, 1, 1),
(195375, 47504, 8.333, 1, 1, 1, 1),
(195375, 47503, 8.333, 1, 1, 1, 1),
(195375, 47502, 8.333, 1, 1, 1, 1),
(195375, 47501, 8.333, 1, 1, 1, 1),
(195375, 47500, 8.333, 1, 1, 1, 1),
(195375, 47498, 8.333, 1, 1, 1, 1),
(195375, 47497, 8.333, 1, 1, 1, 1),
(195375, 47496, 8.333, 1, 1, 1, 1),
(195375, 47495, 8.333, 1, 1, 1, 1),
(195375, 47494, 8.333, 1, 1, 1, 1),
(195375, 47241, 100, 1, 0, 1, 1),
(195375, 44990, 40, 1, 0, 1, 1),
(195375, 43228, 23, 1, 0, 4, 4),
(195375, 34057, 1.3, 1, 0, 1, 2);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195709);
INSERT INTO `gameobject_loot_template` VALUES 
(195709, 43228, 24, 1, 0, 3, 3),
(195709, 47172, 16.666, 1, 1, 1, 1),
(195709, 47171, 16.666, 1, 1, 1, 1),
(195709, 47170, 16.666, 1, 1, 1, 1),
(195709, 47174, 16.666, 1, 1, 1, 1),
(195709, 47173, 16.666, 1, 1, 1, 1),
(195709, 47175, 16.666, 1, 1, 1, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=195710);
INSERT INTO `gameobject_loot_template` VALUES 
(195710, 44990, 43, 1, 0, 1, 1),
(195710, 47241, 100, 1, 0, 1, 1),
(195710, 34057, 1.3, 1, 0, 1, 1),
(195710, 43228, 24, 1, 0, 4, 4),
(195710, 47243, 16.666, 1, 1, 1, 1),
(195710, 47244, 16.666, 1, 1, 1, 1),
(195710, 47493, 16.666, 1, 1, 1, 1),
(195710, 47248, 16.666, 1, 1, 1, 1),
(195710, 47249, 16.666, 1, 1, 1, 1),
(195710, 47250, 16.666, 1, 1, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=35305);
INSERT INTO `creature_loot_template` VALUES 
(35305, 47172, 20, 1, 0, 1, 7),
(35305, 47170, 14, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=35325);
INSERT INTO `creature_loot_template` VALUES 
(35325, 47172, 33, 1, 0, 1, 2),
(35325, 47170, 25, 1, 0, 1, 1);

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (36774, 0, 0, 0, 0, 0, 30310, 30311, 0, 0, 'Silver Covenant Agent', '', '', 0, 80, 80, 2, 310, 310, 0, 1, 1.14286, 1, 0, 420, 630, 0, 157, 1, 2000, 2000, 1, 0, 8, 0, 0, 0, 0, 0, 336, 504, 126, 7, 0, 36774, 0, 0, 0, 0, 0, 0, 0, 0, 71410, 15691, 60195, 71400, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1.35, 1, 1, 0, 49872, 0, 0, 0, 0, 0, 0, 1, 1989, 0, 2, 'generic_creature', 12340);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (33300, 0, 0, 0, 0, 0, 29259, 0, 0, 0, 'Thunder Bluff Kodo', '', '', 0, 80, 80, 0, 14, 14, 0, 1, 1.14286, 1, 0, 1000, 2000, 0, 24, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 0, 'generic_vehicleAI_toc5', 11159);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (33409, 0, 0, 0, 0, 0, 29260, 0, 0, 0, 'Orgrimmar Wolf', '', '', 0, 80, 80, 0, 14, 14, 0, 1, 1.14286, 1, 0, 1000, 3000, 0, 24, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 0, 'generic_vehicleAI_toc5', 11159);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (33414, 0, 0, 0, 0, 0, 29257, 0, 0, 0, 'Forsaken Warhorse', '', '', 0, 80, 80, 0, 14, 14, 0, 1, 1.14286, 1, 0, 2000, 3000, 0, 24, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 0, 'generic_vehicleAI_toc5', 11159);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (35634, 0, 0, 0, 0, 0, 10718, 0, 0, 0, 'Deathstalker Visceri\'s Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.14286, 1, 0, 2000, 3000, 0, 642, 1, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'generic_vehicleAI_toc5', 11723);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (33418, 0, 0, 0, 0, 0, 29262, 0, 0, 0, 'Silvermoon Hawkstrider', '', '', 0, 80, 80, 0, 14, 14, 0, 1, 1.14286, 1, 0, 2000, 3000, 0, 24, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 140, 1, 0, 0, 0, 'generic_vehicleAI_toc5', 1);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (35633, 0, 0, 0, 0, 0, 28571, 0, 0, 0, 'Ambrose Boltspark\'s Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.14286, 1, 0, 2000, 3000, 0, 642, 1, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'generic_vehicleAI_toc5', 11723);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (35637, 0, 0, 0, 0, 0, 29284, 0, 0, 0, 'Marshal Jacob Alerius\' Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.14286, 1, 0, 2000, 3000, 0, 642, 1, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'generic_vehicleAI_toc5', 11723);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (34658, 0, 0, 0, 0, 0, 9991, 0, 0, 0, 'Jaelyne Evensong\'s Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.14286, 1, 0, 2000, 3000, 0, 642, 1, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'generic_vehicleAI_toc5', 11723);

-- Utgarde Keep
UPDATE `creature_template` SET `ScriptName` = 'npc_dark_ranger_marrah' WHERE `entry` = 24137;
UPDATE `creature_template` SET `ScriptName` = 'npc_savage_worg' WHERE `entry` = 29735;

-- Dalaran
UPDATE `creature_template` SET `ScriptName` = 'npc_steampowered_auctioneer' WHERE `entry` IN (35594, 35607);
UPDATE `creature_template` SET `ScriptName` = 'npc_arcanist_hathorel' WHERE `entry` = 36670;

-- Argent Tournament
UPDATE `creature_template` SET `ScriptName` = 'npc_variant' WHERE `entry` IN (33771, 33770);

-- Quests
UPDATE `creature_template` SET `ScriptName` = 'npc_captive_child' WHERE `entry` = 22314;
UPDATE `gameobject_template` SET `ScriptName` = 'go_veil_skith_cage' WHERE `entry` IN (185202, 185203, 185204, 185205);
UPDATE `gameobject_template` SET `ScriptName`='npc_mana_bomb' WHERE `entry`=184725;
UPDATE `creature_template` SET `ScriptName`='npc_skyguard_prisoner' WHERE `entry`=23383;
DELETE FROM `script_texts` WHERE `entry` IN (-1000716,-1000717,-1000718) AND `npc_entry`=23383; 
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(23383,-1000716,'Thanks for your help. Let\'s get out of here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_START'),
(23383,-1000717,'Let\'s keep moving. I don\'t like this place.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_DONT_LIKE'),
(23383,-1000718,'Thanks again. Sergeant Doryn will be glad to hear he has one less scout to replace this week.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'SAY_COMPLETE');
UPDATE `creature_template` SET `ScriptName`='npc_letoll' WHERE `entry`=22458;
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1000531 AND -1000525 AND `npc_entry`=22458; 
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(22458,-1000526,'Shut yer yaps! I\'m gonna bang on this drum and that\'s that!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'letoll SAY_LE_SHUT'),
(22458,-1000527,'Say, do you guys hear that?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'letoll SAY_LE_REPLY_HEAR'),
(22458,-1000528,'IN YOUR FACE! I told you there was somethin\' here!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'letoll SAY_LE_IN_YOUR_FACE'),
(22458,-1000529,'Don\'t just stand there! Help him out!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'letoll SAY_LE_HELP_HIM'),
(22458,-1000530,'%s picks up the drum.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'letoll EMOTE_LE_PICK_UP'),
(22458,-1000531,'You\'ve been a tremendous help, $r! Let\'s get out of here before more of those things show up! I\'ll let Dwarfowitz know you did the job asked of ya\' admirably.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'letoll SAY_LE_THANKS');
DELETE FROM `script_waypoint` WHERE `entry`=22458;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) 
VALUES
(22458,0,-3739.907959,5393.691895,-4.213,5000, 'SAY_LE_KEEP_SAFE'),
(22458,1,-3733.334229,5389.243164,-5.331,0,''),
(22458,2,-3728.771729,5385.649414,-3.704,0,''),
(22458,3,-3717.267090,5379.179199,-4.400,0,''),
(22458,4,-3705.626465,5379.261719,-7.711,0,''),
(22458,5,-3688.279541,5379.716309,-9.400,0,''),
(22458,6,-3649.186523,5389.111816,-11.917,0,''),
(22458,7,-3612.791504,5392.812500,-13.655,0,''),
(22458,8,-3574.865479,5412.704590,-16.543,0,''),
(22458,9,-3564.438232,5422.615723,-16.104,0,''),
(22458,10,-3553.387695,5444.732910,-12.184,2500,'arivve dig site SAY_LE_ARRIVE'),
(22458,11,-3557.291016,5465.319336,-9.282,7500,'dig 1'),
(22458,12,-3548.102051,5453.417969,-12.282,10000,'dig 2 SAY_LE_BURIED pause'),
(22458,13,-3556.580322,5446.475098,-11.920,0,'start returning'),
(22458,14,-3564.438232,5422.615723,-16.104,0,''),
(22458,15,-3574.865479,5412.704590,-16.543,0,''),
(22458,16,-3612.791504,5392.812500,-13.655,0,''),
(22458,17,-3649.186523,5389.111816,-11.917,0,''),
(22458,18,-3688.279541,5379.716309,-9.400,0,''),
(22458,19,-3705.626465,5379.261719,-7.711,0,''),
(22458,20,-3717.267090,5379.179199,-4.400,0,''),
(22458,21,-3728.771729,5385.649414,-3.704,0,''),
(22458,22,-3733.334229,5389.243164,-5.331,0,''),
(22458,23,-3739.907959,5393.691895,-4.213,0,'');
UPDATE `creature_template` SET `ScriptName`='npc_high_oracle_soo_say' WHERE `entry`='28027';
UPDATE `creature_template` SET `ScriptName`='npc_invisible_oracle_treasure_trigger' WHERE `entry`='19656';
UPDATE `creature_template` SET `ScriptName`='npc_generic_oracle_treasure_seeker' WHERE `entry` IN (28120, 28121, 28122);
UPDATE `creature_template` SET `ScriptName`='npc_oracle_frenzyheart_switch' WHERE `entry` IN (28667, 28668);
UPDATE `creature_template` SET `ScriptName`= 'npc_frenzyheart_zepik' WHERE `entry` = 28216;
UPDATE `creature_template` SET `ScriptName`= 'npc_mosswalker_victim' WHERE `entry` = 28113;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` =29598; 
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(29598, 54768, 12851, 1, 12851, 1, 0, 0, 0);
UPDATE `creature_template` SET `spell1` = '54897' , `spell2` =  '54907' WHERE `entry` = 29602;
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` IN (29358,29351);
UPDATE `creature_template` SET `ScriptName` = 'npc_icefang' WHERE `entry` IN (29358,29351);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 54798;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) 
VALUES
(13,54798,18,1,29351),
(13,54798,18,1,29358);
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` = 29708;
UPDATE `creature_template` SET `spell1` = 55046, `faction_A` = 35, `faction_H` = 35, `InhabitType` = 4 WHERE `entry` = 29709;
UPDATE `creature_template` SET `ScriptName` = 'npc_freed_protodrake' WHERE `entry` = 29709;
UPDATE `creature_template` SET `ScriptName` = 'npc_captive_protodrake' WHERE `entry` = 29708;
UPDATE `creature_template` SET `ScriptName` = 'npc_brunnhildar_prisoner' WHERE `entry` = 29639; 
UPDATE `creature_template` SET `ScriptName` = 'npc_freed_protodrake' WHERE `entry` = 29709;
UPDATE `spell_area` SET `quest_end` = 12983 WHERE `area` = 4437 AND `quest_end` = 13063;
UPDATE `creature_template` SET `InhabitType` = 4, `ScriptName` = 'npc_hyldsmeet_protodrake' WHERE `entry` = 29679;
UPDATE `creature_template` SET
 `spell4` = 54459,
 `spell5` = 54458,
 `spell6` = 54460,
 `speed_run` = 3
WHERE `entry` = 29918;
REPLACE INTO `creature_ai_scripts` VALUES (
2935201, 29352,
2, 0, 100, 1,
10, 1, 1, 1,
33, 30221, 1, 0,
24, 0, 0, 0,
0, 0, 0, 0,
'Storm Peaks: The Warm-Up - KillCredit for Kirgaraak at 10% HP');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 29352;
UPDATE `quest_template` SET `NextQuestId` = 12924, `ExclusiveGroup` = -12915 WHERE `entry` IN (12915, 12956);
UPDATE `quest_template` SET `StartScript` = 12886 WHERE `entry` = 12886;
DELETE FROM `quest_start_scripts` WHERE `id` = 12886;
INSERT INTO `quest_start_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`)
VALUES
(12886,0,15,55253,0,0,0,0,0,0);
UPDATE `creature_template` SET `ScriptName` = 'npc_injured_icemaw' WHERE `entry` = 29563;
UPDATE `creature_template` SET `ScriptName` = 'npc_harnessed_icemaw' WHERE `entry` = 30468;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 29592;
DELETE FROM `gameobject` WHERE `id` = 192060;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES
(192060, 571, 1, 1, 7220.96, -3650.65, 819.39, 2.59262, 0, 0, 0.962565, 0.271053, 300, 0, 1);
DELETE FROM `spell_area` WHERE `spell` = 55858 AND `area` = 4438;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`)
VALUES 
(55858, 4438, 12924, 1, 0, 0, 0, 2, 1);
UPDATE `gossip_menu_option` SET `option_id` = 3 WHERE `menu_id` = 10281;
DELETE FROM `creature` WHERE `id`=29563;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(29563, 571, 1, 1, 0, 0, 7315.48, -2050.65, 761.353, 4.04369, 300, 0, 0, 12600, 0, 0, 0, 0, 0, 0);
UPDATE `conditions` SET `ConditionTypeOrReference` = 8, `ConditionValue1` = 13064 WHERE `SourceEntry` = 41556 AND `SourceGroup` = 29375;
UPDATE `creature_template` SET `faction_A` = 2109, `faction_H` = 2109 WHERE `entry` IN (30012, 30154);
UPDATE `creature_template` SET `flags_extra` = 2, `unit_flags` = `unit_flags`|2|256|512 WHERE `entry` = 30175;
UPDATE `creature` SET `spawntimesecs` = 60 WHERE `id` = 29518;
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `id` IN (29427, 30146, 30147);
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` IN (30012, 30154, 30174, 29352);
UPDATE `creature_template` SET `spell1` = 56750, `spell2` = 56753, `VehicleId` = 181 WHERE `entry` = 30124;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `flags_extra` = 268435456 WHERE `entry` = 30120;
DELETE FROM `creature_ai_scripts` WHERE `id` = 3012002;
INSERT INTO `creature_ai_scripts` 
VALUES (3012002,30120,6,0,100,0,0,0,0,0,33,30125,6,0,41,5000,0,0,0,0,0,0,'Seething Revenant - Kill Credit');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND `SourceEntry` = 56753;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) 
VALUES
(17, 56753, 19, 30120, 0);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 56753;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) 
VALUES (56753, -56750, 0, 'Snorri - Remove Gather Snow');
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 30123;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) 
VALUES (30123, 55957, 12967, 1, 12967, 3, 0, 55962, 0);
DELETE FROM `spell_area` WHERE `spell` = 55858 AND `area` IN (4439,4495);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`)
VALUES 
(55858, 4439, 12924, 1, 12924, 0, 0, 2, 1),
(55858, 4495, 12924, 1, 12924, 0, 0, 2, 1);
DELETE FROM `spell_area` WHERE `spell` = 55952 AND `area` IN (4439,4495);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`)
VALUES 
(55952, 4439, 12924, 0, 0, 0, 0, 2, 1),
(55952, 4495, 12924, 0, 0, 0, 0, 2, 1);
UPDATE `creature` SET `phaseMask` = 13 WHERE `id` = 29958;
DELETE FROM `creature` WHERE `id` IN (30099, 30120, 30123);
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES
(30099, 571, 1, 4, 0, 0, 7175.17, -3514.41, 832.257, 6.16378, 30,  0, 0, 50400, 0, 0, 0, 0, 0, 0),
(30120, 571, 1, 4, 0, 0, 7211.01, -3663.32, 822.932, 1.06182, 30, 10, 0, 12600, 0, 0, 1, 0, 0, 0),
(30120, 571, 1, 4, 0, 0, 7234.67, -3649.07, 823.685, 2.62084, 30, 10, 0, 12600, 0, 0, 1, 0, 0, 0),
(30120, 571, 1, 4, 0, 0, 7240.39, -3678.53, 822.731, 1.94933, 30, 10, 0, 12600, 0, 0, 1, 0, 0, 0),
(30120, 571, 1, 4, 0, 0, 7258.67, -3641.53, 823.251, 3.15098, 30, 10, 0, 12600, 0, 0, 1, 0, 0, 0),
(30120, 571, 1, 4, 0, 0, 7215.29, -3623.86, 823.263, 2.5855,  30, 10, 0, 12600, 0, 0, 1, 0, 0, 0),
(30120, 571, 1, 4, 0, 0, 7199.37, -3638.62, 823.401, 4.25839, 30, 10, 0, 12600, 0, 0, 1, 0, 0, 0),
(30123, 571, 1, 4, 0, 0, 7167.15, -3543.37, 827.69,  6.25175, 30,  0, 0, 50400, 0, 0, 0, 0, 0, 0);
DELETE FROM `gameobject` WHERE `id` = 192071;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES
(192071, 571, 1, 4, 7218.02, -2644.12, 809.814, 5.65174, 0, 0, 0.310502, -0.950573, 300, 0, 1);
INSERT IGNORE INTO `gameobject_questrelation` VALUES (192071, 12981);
INSERT IGNORE INTO `gameobject_involvedrelation` VALUES (192071, 12981);
UPDATE `quest_template` SET `PrevQuestId` = 12967, `NextQuestInChain` = 0 WHERE `entry` = 12981;
UPDATE `quest_template` SET `NextQuestId` = 13047, `ExclusiveGroup` = -13005 WHERE `entry` IN (13005, 13035);
UPDATE `quest_template` SET `PrevQuestId` = 13047, `NextQuestInChain` = 0 WHERE `entry` = 13109;
INSERT IGNORE INTO `creature_template_addon` VALUES (29914, 0, 0, 7, 0, 0, NULL);
UPDATE `creature` SET `spawntimesecs` = 120, `phaseMask` = 13 WHERE `guid` IN (116761, 116762, 116763);
UPDATE `creature_template` SET `flags_extra` = 268435458, `unit_flags` = `unit_flags`|2|256|512 WHERE `entry` = 29914;
DELETE FROM `creature` WHERE `id` = 29914 AND `phaseMask` = 12;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES 
('29914','571','1','12','0','0','7429.23','-3187.91','837.452','0.19249','120','0','0','50400','0','0','0','0','0','0'),
('29914','571','1','12','0','0','7359.28','-3176.45','837.452','1.31954','120','0','0','50400','0','0','0','0','0','0'),
('29914','571','1','12','0','0','7280.03','-3142.9','837.452','4.41243','120','0','0','50400','0','0','0','0','0','0'),
('29914','571','1','12','0','0','7515.58','-3137.05','837.452','5.47429','120','0','0','50400','0','0','0','0','0','0'),
('29914','571','1','12','0','0','7509.03','-3225.78','837.432','2.03661','120','0','0','50400','0','0','0','0','0','0'),
('29914','571','1','12','0','0','7259.32','-3221.84','837.452','1.06349','120','0','0','50400','0','0','0','0','0','0');
DELETE FROM `spell_scripts` WHERE `id` = 56099;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`)
VALUES (56099, 0, 2, 15, 56101, 1, 0, 0, 0, 0, 0);
DELETE FROM `gameobject` WHERE `id` = 192124;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES 
('192124','571','1','8','7209.07','-3596.18','825.86','1.74533','0','0','0.766046','0.642786','300','0','1'),
('192124','571','1','8','7157.87','-3556.37','828.47','0.45728','0','0','0.226653','0.973976','300','0','1'),
('192124','571','1','8','7190.29','-3485.87','834.72','0.45728','0','0','0.226653','0.973976','300','0','1'),
('192124','571','1','8','7226.67','-3441.92','837.543','1.91341','0','0','0.817297','0.576217','300','0','1'),
('192124','571','1','8','7199.65','-3553.19','828.189','4.97657','0','0','0.607814','-0.794079','300','0','1');
DELETE FROM `creature` WHERE `id` = 30160;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) 
VALUES
('30160','571','1','8','0','1831','7220.05','-3272.88','837.452','0.750886','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7452.03','-3081.92','837.452','5.68555','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7278.57','-3198.8','837.452','1.48602','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7266.87','-3109.61','837.451','3.05446','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7325.03','-3154.05','837.453','2.89895','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7385.27','-3100.49','837.457','4.75406','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7380.8','-3160.7','837.452','2.14418','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7432.12','-3202.25','837.452','2.19209','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7429.5','-3137.99','837.452','2.52197','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7493.77','-3132.1','837.465','4.20979','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7478.17','-3179.73','837.471','1.57163','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7528.51','-3189.26','837.448','2.75237','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7333.29','-3114.06','837.452','3.77953','90','10','0','12600','0','0','1','0','0','0'),
('30160','571','1','8','0','1831','7260.9','-3159.63','837.452','6.06896','90','10','0','12600','0','0','1','0','0','0');
DELETE FROM `creature` WHERE `id` = 30387;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`)
VALUES
('30387','571','1','8','0','0','7228.41','-3681.01','823.549','1.27883','180','7','0','12600','0','0','1','0','0','0'),
('30387','571','1','8','0','0','7223.79','-3653.33','823.259','2.24487','180','7','0','12600','0','0','1','0','0','0'),
('30387','571','1','8','0','0','7247.47','-3651.63','822.965','3.68215','180','7','0','12600','0','0','1','0','0','0'),
('30387','571','1','8','0','0','7231.88','-3623.4','823.628','5.62444','180','7','0','12600','0','0','1','0','0','0'),
('30387','571','1','8','0','0','7201.15','-3623.22','823.489','5.63229','180','7','0','12600','0','0','1','0','0','0'),
('30387','571','1','8','0','0','7186.92','-3537.98','826.927','1.20658','180','7','0','12600','0','0','1','0','0','0'),
('30387','571','1','8','0','0','7201.47','-3487.47','832.464','4.3843','180','7','0','12600','0','0','1','0','0','0'),
('30387','571','1','8','0','0','7207.03','-3375.13','845.052','4.94489','180','7','0','12600','0','0','1','0','0','0'),
('30387','571','1','8','0','0','7218.05','-3434.39','837.901','1.38016','180','7','0','12600','0','0','1','0','0','0');
UPDATE `creature_template` SET `unit_flags` = `unit_flags` &~2, `ScriptName` = 'npc_dead_irongiant' WHERE `entry` = 29914;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 56227;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) 
VALUES
(13,56227,18,1,29914);
DELETE FROM `creature_loot_template` WHERE `entry` = 30208;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`)
VALUES
(30208, 42423, -50, 1, 0, 1, 1),
(30208, 42105, -33, 1, 0, 1, 1),
(30208, 42780,  40, 1, 0, 1, 1),
(30208, 33470,  30, 1, 0, 1, 4),
(30208, 43851,  20, 1, 0, 1, 1);
DELETE FROM `spell_scripts` WHERE `id` = 56278;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) 
VALUES
(56278, 0, 3, 8, 30210, 0, 0, 0, 0, 0, 0);
UPDATE `gameobject` SET `phaseMask` = 4 WHERE `guid` = 99731;
UPDATE `spell_area` SET `quest_end` = 0 WHERE `area` = 4437 AND `quest_end` = 12983;
DELETE FROM `spell_area` WHERE `spell` = 55858 AND `area` = 4455;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`)
VALUES 
(55858, 4455, 12915, 0, 0, 0, 0, 2, 1);
UPDATE `quest_template` SET `PrevQuestId` = 12987 WHERE `entry` = 13006;
INSERT IGNORE INTO `gameobject_questrelation` VALUES (192080, 13006);
INSERT IGNORE INTO `gameobject_involvedrelation` VALUES (192080, 13006);

DELETE FROM `gameobject` WHERE `id` = 192080;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`)
VALUES (192080, 571, 1, 4, 7389.34, -2726.2, 875.227, 2.82985, 0, 0, 0.987876, 0.155243, 300, 0, 1);
UPDATE `creature` SET `phaseMask` = 4, `spawntimesecs` = 60 WHERE `id` = 30325;
UPDATE `creature_template` SET `lootid` = 30325 WHERE `entry` = 30325;
DELETE FROM `creature_loot_template` WHERE `entry` = 30325;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`)
VALUES
(30325, 42640, -100, 1, 0, 1, 1),
(30325, 39551,   80, 1, 0, 1, 1),
(30325, 39552,   20, 1, 0, 1, 1);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceEntry` = 42732;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) 
VALUES
(18, 42732, 24, 1, 30292);
DELETE FROM `spell_scripts` WHERE `id` = 56562;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) 
VALUES
(56562, 0, 0, 18,     0, 0, 0, 0, 0, 0, 0),
(56562, 0, 0, 15, 56566, 1, 0, 0, 0, 0, 0);
UPDATE `gameobject` SET `phaseMask` = 4 WHERE `guid` = 99730;
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 30366;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 30366;
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`)
VALUES
('3036601','30366','1','0','100','0','5000','10000','0','0','12','30340','0','120000','41','1000','0','0','0','0','0','0','Lure Jormuttar');
DELETE FROM `creature` WHERE `id` = 29975;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(29975, 571, 1, 1, 0, 0, 6925.96, -1533.25, 836.426, 4.56475, 300, 0, 0, 12175, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature_ai_scripts` WHERE creature_id = 25841;
UPDATE `creature_template` SET IconName = 'Speak', npcflag = 1, gossip_menu_id = 0, AIName = '', ScriptName = 'npc_fizzcrank_recon_pilot', unit_flags = 0x00000000, flags_extra = 2, dynamicflags = 36  WHERE entry = 25841;
DELETE FROM `creature_template_addon` WHERE entry = 25841;
INSERT INTO `creature_template_addon` VALUES (25841, 0, 0, 7, 0, 65, '');
UPDATE `creature` SET DeathState = 0 WHERE id = 25841;
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`IN(26073,26076);
UPDATE `creature_template` SET `unit_flags` = 0, `flags_extra` = 0 WHERE `entry` = 19055;
DELETE FROM `script_texts` WHERE `npc_entry`=20812 AND `entry`=-1850071;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('20812','-1850071','This is the last time I get caughht! I promise! Bye!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','');
UPDATE `gameobject_template` SET `Scriptname`='go_corki_cage' WHERE `entry`=182350;
DELETE FROM `script_texts` WHERE `npc_entry`=18445;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('18445','-1850070','Thanks,$R Im sure my dad will reward you greatly,bye',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','');
UPDATE `gameobject_template` SET `Scriptname`='go_help_cage' WHERE `entry`=182349;
UPDATE `creature_template` SET `ScriptName`='mob_Talbuk' WHERE entry IN (20610,20777);
UPDATE `quest_template` SET `SpecialFlags` = 0, `ReqCreatureOrGOCount1` = 1, `ReqCreatureOrGOId1` = 20132 WHERE `entry` = 10409;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = -185156, `ObjectiveText1` = 'Karynaku freed', `ReqCreatureOrGOId2` = 11980 , `ObjectiveText2` = 'Zuluhed the Whacked slain'  WHERE entry = 10866;
DELETE FROM `creature_involvedrelation` WHERE `quest` IN  (10870, 10871);
DELETE FROM `creature_questrelation` WHERE `quest` IN (10870, 10871);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES(22113,10870);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES(22112,10870);
UPDATE `quest_template` SET `RewChoiceItemId1` = 31492, `RewChoiceItemId2` = 31491, `RewChoiceItemId3` = 31490, `RewChoiceItemId4` = 31494, `RewChoiceItemId5` = 31493, `RewChoiceItemCount1` = 1, `RewChoiceItemCount2` = 1, `RewChoiceItemCount3` = 1, `RewChoiceItemCount4` = 1, `RewChoiceItemCount5` = 1 WHERE `entry` = 10870;
REPLACE INTO `quest_template` VALUES
(6001, 2, -263, 0, 10, 0, 10, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 5931, 0, 0, 0, 5, 15208, 1, 0, 'Body and Heart', 'Directly east of Auberdine lay many moonkin caves.  The one closest to Auberdine has a Moonkin Stone inside it.  Lunaclaw, the defender of the stone, will face you only when Cenarion Moondust is applied to it.  Lunaclaw possesses within it a strength that you must use as one of the Claw.$B$BYou''ve earned the right to use this Cenarion Moondust, $N... now show me that you''ve earned the right to possess the strength of body and the strength of heart needed as a druid!', 'Use the Cenarion Moondust on the Moonkin Stone of Auberdine to bring forth Lunaclaw.  From there, you must face Lunaclaw and earn the strength of body and heart it possesses.$B$BSpeak with Mathrengyl Bearwalker in Darnassus when you are done.', 'You have finally taken your large step into a much larger world, $N. I sense the teaching of the Great Bear Spirit within you, and I sense that you have received the strength that Lunaclaw possessed.$B$BThere are no further obstacles in your way... let me now teach you what it means to be a $C of the Claw!', NULL, 'Face Lunaclaw and earn the strength of body and heart it possesses.', 'Return to Mathrengyl Bearwalker at Cenarion Enclave in Darnassus.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12138, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 609, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132300, 0, 19179, 112, 21600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '12138',`ReqCreatureOrGOCount1` = '1' WHERE `entry` =6002;
REPLACE INTO `creature_template` VALUES
(12138, 0, 0, 0, 12138, 0, 9389, 0, 0, 0, 'Lunaclaw', '', '', 0, 12, 12, 0, 14, 14, 0, 1.14, 1.14286, 1, 0, 13, 19, 0, 5, 1.2, 2000, 2000, 1, 32768, 0, 0, 0, 0, 0, 0, 10, 15, 4, 7, 0, 12138, 0, 0, 0, 0, 0, 0, 0, 0, 3391, 18986, 0, 0, 0, 0, 0, 0, 0, 0, 16, 16, 'EventAI', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 11723);
REPLACE INTO `creature_template_addon` VALUES(12138, 0, 0, 0, 4097, 0, NULL);
UPDATE `quest_template` SET `SrcItemId` = '40971',
`SrcItemCount` = '1' WHERE `entry` =12926;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '25814' WHERE `entry` =11712;
UPDATE `quest_template` SET `ReqSpellCast1` = '45980' WHERE `entry` =11712;
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` =25351;
REPLACE INTO `creature_ai_scripts` VALUES (2535100, 25351, 8, 0, 100, 0, 45474, -1, 0, 0, 33, 25351, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'q11593 The Honored Dead');
REPLACE INTO `conditions` VALUES (13, 0, 45474, 0, 18, 1, 25351, 0, 0, '', NULL);
UPDATE `quest_template` SET `ReqSpellCast1`=45474 WHERE `entry`=11593;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '25351' WHERE `entry` =11593;
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='34956', `ReqSpellCast1`='0', `ReqCreatureOrGOId2`='34716' WHERE `entry`='14096';
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='34956', `ReqSpellCast1`='0', `ReqCreatureOrGOId2`='34716' WHERE `entry`='14142'; 
DELETE FROM `script_texts` WHERE `entry` IN (-1850000,-1850001,-1850002,-1850003,-1850004,-1850005,-1850006,-1850007,-1850008,-1850009,-1850010,-1850011,-1850012);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc2`,`comment`) VALUES
(0, -1850004, 'Stand ready !', 'Stand ready !',''),
(0, -1850005, 'Let the battle begin!', 'Let the battle begin!',''),
(0, -1850006, 'Prepare your self !', 'Prepare your self! !',''),
(0, -1850007, 'You think you have the courage?  We shall see.', 'You think you have the courage in you? Will see.',''),
(0, -1850008, 'Impressive demonstration. I think you\'re able to join the ranks of the valiants.', 'Impressive demonstration. I think you\'re able to join the ranks of the valiants.',''),
(0, -1850009, 'I\ve won. Youll probably have more luck next time.', 'Ive won. Youll probably have more luck next time.',''),
(0, -1850010, 'I stand defeated. Nice battle !', 'I stand defeated. Nice battle !',''),
(0, -1850011, 'It seems that I\'ve underestimated your skills. Well done.', 'It seems that I\'ve underestimated your skills. Well done.',''),
(0, -1850012, 'You\'ll probably have more luck next time.', 'You\'ll probably have more luck next time.','');
UPDATE `creature_template` SET `ScriptName`='quest_givers_argent_tournament' WHERE `entry` IN (33593, 33592, 33225, 33312, 33335, 33379, 33373, 33361, 33403, 33372);
UPDATE `creature_template` SET `ScriptName`='npc_quest_givers_for_crusaders' WHERE `entry` IN (34882, 35094);
UPDATE `creature_template` SET `ScriptName`='npc_crusader_rhydalla' WHERE `entry`= 33417;
UPDATE `creature_template` SET `ScriptName`='npc_eadric_the_pure' WHERE `entry`= 33759;
UPDATE `creature_template` SET `ScriptName`='npc_crok_scourgebane' WHERE `entry`= 33762;
UPDATE `creature_template` SET `ScriptName`='npc_valis_windchaser' WHERE `entry`= 33974;
UPDATE `creature_template` SET `ScriptName`='npc_rugan_steelbelly' WHERE `entry`= 33972;
UPDATE `creature_template` SET `ScriptName`='npc_jeran_lockwood' WHERE `entry`= 33973;
UPDATE `creature_template` SET `ScriptName`='npc_training_dummy_argent' WHERE `entry` IN (33272,33243,33229);
UPDATE `creature_template` SET `ScriptName` = 'npc_variant', `npcflag`='3' WHERE `entry` IN (33739, 33749, 33745, 33744, 33748,  33746, 33740, 33743, 33747, 33738); 
UPDATE `creature_template` SET `ScriptName` = 'npc_keritose', `npcflag`='3' WHERE `entry`= 30946;
UPDATE `creature_template` SET `ScriptName`='npc_vendor_argent_tournament' WHERE `entry` IN (33553, 33554, 33556, 33555, 33557, 33307, 33310, 33653, 33650, 33657);
UPDATE `creature_template` SET `ScriptName`='npc_justicar_mariel_trueheart' WHERE `entry`=33817;
DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (33842,33796,33798,33791,33792,33799,33843,33800,33795,33790,33793,33794);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES
(33842, 63791, 13668, 1, 13680, 1, 0, 0, 0),
(33799, 62783, 13726, 0, 0, 1, 0, 0, 0),
(33799, 62783, 13691, 0, 0, 1, 0, 0, 0),
(33799, 62783, 13707, 0, 0, 1, 0, 0, 0),
(33796, 62784, 13727, 0, 0, 1, 0, 0, 0),
(33796, 62784, 13693, 0, 0, 1, 0, 0, 0),
(33796, 62784, 13708, 0, 0, 1, 0, 0, 0),
(33792, 62785, 13728, 0, 0, 1, 0, 0, 0),
(33792, 62785, 13694, 0, 0, 1, 0, 0, 0),
(33792, 62785, 13709, 0, 0, 1, 0, 0, 0),
(33798, 62787, 13729, 0, 0, 1, 0, 0, 0),
(33798, 62787, 13695, 0, 0, 1, 0, 0, 0),
(33798, 62787, 13710, 0, 0, 1, 0, 0, 0),
(33791, 62786, 13731, 0, 0, 1, 0, 0, 0),
(33791, 62786, 13696, 0, 0, 1, 0, 0, 0),
(33791, 62786, 13711, 0, 0, 1, 0, 0, 0),
(33843, 63792, 13667, 1, 13679, 1, 0, 0, 0),
(33794, 62782, 13725, 0, 0, 1, 0, 0, 0),
(33794, 62782, 13689, 0, 0, 1, 0, 0, 0),
(33794, 62782, 13706, 0, 0, 1, 0, 0, 0),
(33800, 62774, 13699, 0, 0, 1, 0, 0, 0),
(33800, 62774, 13593, 0, 0, 1, 0, 0, 0),
(33800, 62774, 13684, 0, 0, 1, 0, 0, 0),
(33793, 62780, 13723, 0, 0, 1, 0, 0, 0),
(33793, 62780, 13688, 0, 0, 1, 0, 0, 0),
(33793, 62780, 13704, 0, 0, 1, 0, 0, 0),
(33795, 62779, 13713, 0, 0, 1, 0, 0, 0),
(33795, 62779, 13685, 0, 0, 1, 0, 0, 0),
(33795, 62779, 13703, 0, 0, 1, 0, 0, 0),
(33790, 62781, 13724, 0, 0, 1, 0, 0, 0),
(33790, 62781, 13690, 0, 0, 1, 0, 0, 0),
(33790, 62781, 13705, 0, 0, 1, 0, 0, 0);
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask` | 2 WHERE `entry` IN (33845, 33319, 33317, 33318, 33217, 33316);
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask` | 2 WHERE `entry` IN (33844, 33320, 33321, 33322, 33323, 33324);
UPDATE `creature_template` SET `speed_run`= 1.571429 WHERE `entry` IN (33845, 33319, 33317, 33318, 33217, 33316);
UPDATE `creature_template` SET `speed_run` = 1.571429 WHERE `entry` IN (33844, 33320, 33321, 33322, 33323, 33324);
UPDATE `creature_template` SET `Armor_mod`=0 WHERE `entry` IN (33243, 33272, 33229);
DELETE FROM `spell_target_position` WHERE `id` IN (63986,63987);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(63986,571,8574.87,700.595,547.29,5.48),
(63987,571,8460,700,547.4,3.839);
UPDATE `creature_template` SET `spell1`=62544, `spell2`=62575, `spell3`=62960, `spell4`=62552, `spell5`=64077 WHERE `entry` IN (33844, 33320, 33321, 33322, 33323, 33324);
UPDATE `creature_template` SET `spell1`=62544, `spell2`=62575, `spell3`=62960, `spell4`=62552, `spell5`=64077 WHERE `entry` IN (33845, 33319, 33317, 33318, 33217, 33316);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13668;
UPDATE `quest_template` SET `PrevQuestId`=13668, `NextQuestId`=13678, `ExclusiveGroup`=-13829, `NextQuestInChain`=0 WHERE `entry` IN (13829, 13839, 13838);
UPDATE `quest_template` SET `PrevQuestId`=-13678, `NextQuestId`=0, `ExclusiveGroup`=13673, `NextQuestInChain`=0 WHERE `entry`=13673;
UPDATE `quest_template` SET `PrevQuestId`=-13678, `NextQuestId`=0, `ExclusiveGroup`=13673, `NextQuestInChain`=0 WHERE `entry`=13675;
UPDATE `quest_template` SET `PrevQuestId`=-13678, `NextQuestId`=0, `ExclusiveGroup`=13673, `NextQuestInChain`=0 WHERE `entry`=13674;
UPDATE `quest_template` SET `PrevQuestId`=-13678, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13676;
UPDATE `quest_template` SET `PrevQuestId`=-13678, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13677;
UPDATE `quest_template` SET `PrevQuestId`=13678, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13680;
UPDATE `quest_template` SET `PrevQuestId`=13680 WHERE `entry` IN (13691, 13693, 13694, 13695, 13696);
UPDATE `quest_template` SET `RequiredRaces`=2, `NextQuestId`=13697, `NextQuestInChain`=13697, `ExclusiveGroup`=13691 WHERE `entry`=13691;
UPDATE `quest_template` SET `RequiredRaces`=128, `NextQuestId`=13719, `NextQuestInChain`=13719, `ExclusiveGroup`=13693 WHERE `entry`=13693;
UPDATE `quest_template` SET `RequiredRaces`=32, `NextQuestId`=13720, `NextQuestInChain`=13720, `ExclusiveGroup`=13694 WHERE `entry`=13694;
UPDATE `quest_template` SET `RequiredRaces`=16, `NextQuestId`=13721, `NextQuestInChain`=13721, `ExclusiveGroup`=13695 WHERE `entry`=13695;
UPDATE `quest_template` SET `RequiredRaces`=512, `NextQuestId`=13722, `NextQuestInChain`=13722, `ExclusiveGroup`=13696 WHERE `entry`=13696;
UPDATE `quest_template` SET `PrevQuestId`=13701 WHERE `entry` IN (13707, 13708, 13709, 13710, 13711);
UPDATE `quest_template` SET `NextQuestId`=13697, `NextQuestInChain`=13697, `ExclusiveGroup`=13691 WHERE `entry`=13707;
UPDATE `quest_template` SET `NextQuestId`=13719, `NextQuestInChain`=13719, `ExclusiveGroup`=13693 WHERE `entry`=13708;
UPDATE `quest_template` SET `NextQuestId`=13720, `NextQuestInChain`=13720, `ExclusiveGroup`=13694 WHERE `entry`=13709;
UPDATE `quest_template` SET `NextQuestId`=13721, `NextQuestInChain`=13721, `ExclusiveGroup`=13695 WHERE `entry`=13710;
UPDATE `quest_template` SET `NextQuestId`=13722, `NextQuestInChain`=13722, `ExclusiveGroup`=13696 WHERE `entry`=13711;
UPDATE `quest_template` SET `PrevQuestId`=0, `ExclusiveGroup`=0 WHERE `entry` IN (13697, 13719, 13720, 13721, 13722);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13680 WHERE `entry`=13678;
UPDATE `quest_template` SET `NextQuestId`=13726, `NextQuestInChain`=13726 WHERE `entry`=13697;
UPDATE `quest_template` SET `NextQuestId`=13727, `NextQuestInChain`=13727  WHERE `entry`=13719;
UPDATE `quest_template` SET `NextQuestId`=13728, `NextQuestInChain`=13728  WHERE `entry`=13720;
UPDATE `quest_template` SET `NextQuestId`=13729, `NextQuestInChain`=13729  WHERE `entry`=13721;
UPDATE `quest_template` SET `NextQuestId`=13731, `NextQuestInChain`=13731  WHERE `entry`=13722;
UPDATE `quest_template` SET `PrevQuestId`=-13697, `NextQuestId`=0, `ExclusiveGroup`=13762, `NextQuestInChain`=0 WHERE `entry` IN (13762, 13763, 13764);
UPDATE `quest_template` SET `PrevQuestId`=-13719, `NextQuestId`=0, `ExclusiveGroup`=13768, `NextQuestInChain`=0 WHERE `entry` IN (13768, 13769, 13770);
UPDATE `quest_template` SET `PrevQuestId`=-13720, `NextQuestId`=0, `ExclusiveGroup`=13773, `NextQuestInChain`=0 WHERE `entry` IN (13773, 13774, 13775);
UPDATE `quest_template` SET `PrevQuestId`=-13721, `NextQuestId`=0, `ExclusiveGroup`=13778, `NextQuestInChain`=0 WHERE `entry` IN (13778, 13779, 13780);
UPDATE `quest_template` SET `PrevQuestId`=-13722, `NextQuestId`=0, `ExclusiveGroup`=13783, `NextQuestInChain`=0 WHERE `entry` IN (13783, 13784, 13785);
UPDATE `quest_template` SET `PrevQuestId`=-13697, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13765, 13767, 13856);
UPDATE `quest_template` SET `PrevQuestId`=-13719, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13771, 13772, 13857);
UPDATE `quest_template` SET `PrevQuestId`=-13720, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13776, 13777, 13858);
UPDATE `quest_template` SET `PrevQuestId`=-13721, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13781, 13782, 13860);
UPDATE `quest_template` SET `PrevQuestId`=-13722, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13786, 13787, 13859);
UPDATE `quest_template` SET `PrevQuestId`=13697, `NextQuestId`=13736, `ExclusiveGroup`=0, `NextQuestInChain`=13736 WHERE `entry`=13726;
UPDATE `quest_template` SET `PrevQuestId`=13719, `NextQuestId`=13737, `ExclusiveGroup`=0, `NextQuestInChain`=13737 WHERE `entry`=13727;
UPDATE `quest_template` SET `PrevQuestId`=13720, `NextQuestId`=13738, `ExclusiveGroup`=0, `NextQuestInChain`=13738 WHERE `entry`=13728;
UPDATE `quest_template` SET `PrevQuestId`=13721, `NextQuestId`=13739, `ExclusiveGroup`=0, `NextQuestInChain`=13739 WHERE `entry`=13729;
UPDATE `quest_template` SET `PrevQuestId`=13722, `NextQuestId`=13740, `ExclusiveGroup`=0, `NextQuestInChain`=13740 WHERE `entry`=13731;
UPDATE `quest_template` SET `PrevQuestId`=13726, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13736;
UPDATE `quest_template` SET `PrevQuestId`=13727, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13737;
UPDATE `quest_template` SET `PrevQuestId`=13728, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13738;
UPDATE `quest_template` SET `PrevQuestId`=13729, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13739;
UPDATE `quest_template` SET `PrevQuestId`=13740, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13740;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN (13697, 13719, 13720, 13721, 13722);
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN (13726, 13727, 13728, 13729, 13731);
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN (13736, 13737, 13738, 13739, 13740);
DELETE FROM `creature_questrelation` WHERE `quest` IN (13691, 13693, 13694, 13695, 13696, 13829, 13680, 13678);
INSERT `creature_questrelation` (`id`, `quest`) VALUES 
(33542, 13691), 
(33542, 13693), 
(33542, 13694), 
(33542, 13695), 
(33542, 13696), 
(33542,13829), 
(33542, 13680), 
(33542, 13678);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13667;
UPDATE `quest_template` SET `PrevQuestId`=13667, `NextQuestId`=13672, `ExclusiveGroup`=-13828, `NextQuestInChain`=0 WHERE `entry` IN (13828, 13837, 13835);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13679 WHERE `entry`=13672;
UPDATE `quest_template` SET `PrevQuestId`=-13672, `NextQuestId`=0, `ExclusiveGroup`=13666, `NextQuestInChain`=0 WHERE `entry`=13666;
UPDATE `quest_template` SET `PrevQuestId`=-13672, `NextQuestId`=0, `ExclusiveGroup`=13666, `NextQuestInChain`=0 WHERE `entry`=13670;
UPDATE `quest_template` SET `PrevQuestId`=-13672, `NextQuestId`=0, `ExclusiveGroup`=13666, `NextQuestInChain`=0 WHERE `entry`=13669;
UPDATE `quest_template` SET `PrevQuestId`=-13672, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13671;
UPDATE `quest_template` SET `PrevQuestId`=-13672, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13625;
UPDATE `quest_template` SET `PrevQuestId`=13672, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13679;
UPDATE `quest_template` SET `PrevQuestId`=13679 WHERE `entry` IN (13684, 13685, 13689, 13688, 13690);
UPDATE `quest_template` SET `RequiredRaces`=1, `NextQuestId`=13718, `NextQuestInChain`=13718, `ExclusiveGroup`=13684 WHERE `entry`=13684;
UPDATE `quest_template` SET `RequiredRaces`=4, `NextQuestId`=13714, `NextQuestInChain`=13714, `ExclusiveGroup`=13685 WHERE `entry`=13685;
UPDATE `quest_template` SET `RequiredRaces`=8, `NextQuestId`=13717, `NextQuestInChain`=13717, `ExclusiveGroup`=13689 WHERE `entry`=13689;
UPDATE `quest_template` SET `RequiredRaces`=64, `NextQuestId`=13715, `NextQuestInChain`=13715, `ExclusiveGroup`=13688 WHERE `entry`=13688;
UPDATE `quest_template` SET `RequiredRaces`=1024, `NextQuestId`=13716, `NextQuestInChain`=13716, `ExclusiveGroup`=13690 WHERE `entry`=13690;
UPDATE `quest_template` SET `PrevQuestId`=13700 WHERE `entry` IN (13593, 13703, 13706, 13704, 13705);
UPDATE `quest_template` SET `NextQuestId`=13718, `NextQuestInChain`=13718, `ExclusiveGroup`=13718 WHERE `entry`=13593;
UPDATE `quest_template` SET `NextQuestId`=13714, `NextQuestInChain`=13714, `ExclusiveGroup`=13714 WHERE `entry`=13703;
UPDATE `quest_template` SET `NextQuestId`=13717, `NextQuestInChain`=13717, `ExclusiveGroup`=13717 WHERE `entry`=13706;
UPDATE `quest_template` SET `NextQuestId`=13715, `NextQuestInChain`=13715, `ExclusiveGroup`=13715 WHERE `entry`=13704;
UPDATE `quest_template` SET `NextQuestId`=13716, `NextQuestInChain`=13716, `ExclusiveGroup`=13716 WHERE `entry`=13705;
UPDATE `quest_template` SET `PrevQuestId`=0, `ExclusiveGroup`=0 WHERE `entry` IN (13718, 13714, 13717, 13715, 13716);
UPDATE `quest_template` SET `NextQuestId`=13699, `NextQuestInChain`=13699 WHERE `entry`=13718;
UPDATE `quest_template` SET `NextQuestId`=13713, `NextQuestInChain`=13713  WHERE `entry`=13714;
UPDATE `quest_template` SET `NextQuestId`=13725, `NextQuestInChain`=13725  WHERE `entry`=13717;
UPDATE `quest_template` SET `NextQuestId`=13723, `NextQuestInChain`=13723  WHERE `entry`=13715;
UPDATE `quest_template` SET `NextQuestId`=13724, `NextQuestInChain`=13724  WHERE `entry`=13716;
UPDATE `quest_template` SET `PrevQuestId`=-13718, `NextQuestId`=0, `ExclusiveGroup`=13603, `NextQuestInChain`=0 WHERE `entry` IN (13603, 13600, 13616);
UPDATE `quest_template` SET `PrevQuestId`=-13714, `NextQuestId`=0, `ExclusiveGroup`=13741, `NextQuestInChain`=0 WHERE `entry` IN (13741, 13742, 13743);
UPDATE `quest_template` SET `PrevQuestId`=-13717, `NextQuestId`=0, `ExclusiveGroup`=13757, `NextQuestInChain`=0 WHERE `entry` IN (13757, 13758, 13759);
UPDATE `quest_template` SET `PrevQuestId`=-13715, `NextQuestId`=0, `ExclusiveGroup`=13746, `NextQuestInChain`=0 WHERE `entry` IN (13746, 13747, 13748);
UPDATE `quest_template` SET `PrevQuestId`=-13716, `NextQuestId`=0, `ExclusiveGroup`=13752, `NextQuestInChain`=0 WHERE `entry` IN (13752, 13753, 13754);
UPDATE `quest_template` SET `PrevQuestId`=-13718, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13592, 13665, 13847);
UPDATE `quest_template` SET `PrevQuestId`=-13714, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13744, 13745, 13851);
UPDATE `quest_template` SET `PrevQuestId`=-13717, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13760, 13761, 13855);
UPDATE `quest_template` SET `PrevQuestId`=-13715, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13749, 13750, 13852);
UPDATE `quest_template` SET `PrevQuestId`=-13716, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry` IN (13755, 13756, 13854);
UPDATE `quest_template` SET `PrevQuestId`=13718, `NextQuestId`=13702, `ExclusiveGroup`=0, `NextQuestInChain`=13702 WHERE `entry`=13699;
UPDATE `quest_template` SET `PrevQuestId`=13714, `NextQuestId`=13732, `ExclusiveGroup`=0, `NextQuestInChain`=13732 WHERE `entry`=13713;
UPDATE `quest_template` SET `PrevQuestId`=13717, `NextQuestId`=13735, `ExclusiveGroup`=0, `NextQuestInChain`=13735 WHERE `entry`=13725;
UPDATE `quest_template` SET `PrevQuestId`=13715, `NextQuestId`=13733, `ExclusiveGroup`=0, `NextQuestInChain`=13733 WHERE `entry`=13723;
UPDATE `quest_template` SET `PrevQuestId`=13716, `NextQuestId`=13734, `ExclusiveGroup`=0, `NextQuestInChain`=13734 WHERE `entry`=13724;
UPDATE `quest_template` SET `PrevQuestId`=13699, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13702;
UPDATE `quest_template` SET `PrevQuestId`=13713, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13732;
UPDATE `quest_template` SET `PrevQuestId`=13725, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13735;
UPDATE `quest_template` SET `PrevQuestId`=13723, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13733;
UPDATE `quest_template` SET `PrevQuestId`=13734, `NextQuestId`=13794, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13734;
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry` IN (13718, 13714, 13717, 13715, 13716);
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry` IN (13699, 13713, 13725, 13723, 13724);
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry` IN (13702, 13732, 13735, 13733, 13734);
DELETE FROM `creature_questrelation` WHERE `quest` IN (13828, 13672, 13679, 13684, 13685, 13689, 13688, 13690);
INSERT `creature_questrelation` (`id`, `quest`) VALUES 
(33625, 13828), 
(33625, 13672), 
(33625, 13679), 
(33625, 13684), 
(33625, 13685), 
(33625,13689), 
(33625, 13688), 
(33625, 13690);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=13641, `ExclusiveGroup`=13633, `NextQuestInChain`=13641 WHERE `entry` IN (13633, 13634);
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13643 WHERE `entry`=13641;
UPDATE `quest_template` SET `PrevQuestId`=13641, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13654 WHERE `entry`=13643;
UPDATE `quest_template` SET `PrevQuestId`=13643, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13663 WHERE `entry`=13654;
UPDATE `quest_template` SET `PrevQuestId`=13654, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=13664 WHERE `entry`=13663;
UPDATE `quest_template` SET `PrevQuestId`=13663, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=14016 WHERE `entry`=13664;
UPDATE `quest_template` SET `PrevQuestId`=13664, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=14017 WHERE `entry`=14016;
UPDATE `quest_template` SET `PrevQuestId`=14016, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=14017;
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13794;
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13795;
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13790;
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13793;
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13811;
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13814;
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13861;
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13864;
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13862;
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13863;
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13789;
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13791;
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13810;
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13813;
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13682;
UPDATE `quest_template` SET `RequiredRaces`=1101, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13788;
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13794, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13809;
UPDATE `quest_template` SET `RequiredRaces`=690, `PrevQuestId`=13795, `NextQuestId`=0, `ExclusiveGroup`=0, `NextQuestInChain`=0 WHERE `entry`=13812;
UPDATE `quest_template` SET `ExclusiveGroup`=14102, `NextQuestId`=0, `NextQuestInChain`=0 WHERE `entry` IN (14102, 14101, 14104, 14105);
UPDATE `quest_template` SET `ExclusiveGroup`=14107, `NextQuestId`=0, `NextQuestInChain`=0 WHERE `entry` IN (14107, 14108, 14095);
UPDATE `quest_template` SET `PrevQuestId`=13700, `RequiredMinRepFaction`=1094, `RequiredMinRepValue`=42000, `NextQuestId`=0, `NextQuestInChain`=0 WHERE `entry` IN (14112, 14076, 14090, 14096, 14152, 14080, 14077, 14074);
UPDATE `quest_template` SET `PrevQuestId`=13701, `RequiredMinRepFaction`=1124, `RequiredMinRepValue`=42000, `NextQuestId`=0, `NextQuestInChain`=0 WHERE `entry` IN (14145, 14092, 14141, 14142, 14136, 14140, 14144, 14143);
UPDATE `quest_template` SET `ExclusiveGroup`=14112 WHERE `entry` IN (14112, 14145, 14076, 14092, 14090, 14141);
UPDATE `quest_template` SET `ExclusiveGroup`=14152 WHERE `entry` IN (14152, 14136, 14080, 14140, 14077, 14144, 14074, 14143);
UPDATE `quest_template` SET `NextQuestId`=13846, `ExclusiveGroup`=13700 WHERE `entry` IN (13700, 13701);
UPDATE `quest_template` SET `RequiredMaxRepFaction`=1106, `RequiredMaxRepValue`=42000 WHERE `entry`=13846;
DELETE FROM `creature_questrelation` WHERE `quest` IN (13820, 13681, 13627);
UPDATE `quest_template` SET `SkillOrClassMask`=-32 WHERE `entry` IN (13795, 13791, 13813, 13788, 13812, 13793, 13814, 13864, 13863);
UPDATE `quest_template` SET `SkillOrClassMask`=-1503 WHERE `entry` IN (13794, 13788, 13789, 13810, 13682, 13809, 13790, 13811, 13861, 13862);
UPDATE `creature_template` SET `ScriptName` = 'npc_lake_frog' WHERE `entry` =33211;
UPDATE `creature_template` SET `npcflag` = `npcflag` | 1, `ScriptName` = 'npc_maiden_of_ashwood_lake' WHERE `creature_template`.`entry` =33220;
DELETE FROM `creature` WHERE `id` =33211;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
('33211','571','1','1','0','0','3725.43','-4311.13','180.978','2.05551','300','0','0','40','120','0','0');
DELETE FROM `script_texts` WHERE `entry` = -1850015;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
('0','-1850015','Can it really be? Free after all these years?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','');
UPDATE `creature_template` SET `speed_run` = 1 WHERE `entry` = 33211;
UPDATE `creature_template` SET `speed_walk` = 1.6 WHERE `entry` = 33211;
DELETE FROM `creature` WHERE `guid` = '336364';
INSERT INTO `creature` (`guid`,`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES  
(336364,33289,571,1,1,0,0,5136.74,-83.3769,347.326,1.44434,300,0,0,12600,3994,0,0);
DELETE FROM `creature_loot_template` WHERE `entry`=33289 AND `item`=45005;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (33289, 45005, -100);
DELETE FROM `script_texts` WHERE `entry` IN (-1850000,-1850001,-1850002,-1850003);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc2`,`comment`) VALUES
(0, -1850000, 'Oh, these are winter hyacinths? For me ?', 'Oh, these are hyacinth\'s winter? For me  ?',''),
(0, -1850001, 'We had not had brought flowers here for so long.', 'We had not had brought flowers here for so long.',''),
(0, -1850002, 'The lake is a lonely spot for some years. Travelers have stopped coming over, and evil has invaded the waters.', 'The lake is a lonely spot some years. Travelers to come over, and evil has invaded the waters.',''),
(0, -1850003, 'Your gift shows a rare kindness, traveler. Please, take this blade as a token of my gratitude. Long ago, there was another traveler who had left it here, but I do not need it. ',' Your gift shows a rare kindness, traveler. Please, take this blade as a token of my gratitude. Long ago, there was another traveler who had left it here, but I do not need it.','');
DELETE FROM `event_scripts` WHERE `id`=20990;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) 
VALUES (20990, 0, 10, 33273, 42000, 4602.977, -1600.141, 156.7834, 0.7504916);
UPDATE `creature_template` SET `InhabitType`=5, `ScriptName`='npc_maiden_of_drak_mar' WHERE `entry`=33273;
DELETE FROM `creature_template_addon` WHERE `entry`=33273;
INSERT INTO `creature_template_addon` (`entry`, `emote`) VALUES (33273, 13);
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (29720,29719,29722);
DELETE FROM `creature` WHERE `id` IN (29720,29719,29722);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(NULL, 29720, 571, 1, 1, 0, 0, 8562.48, 2771.93, 759.958, 6.10672, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29720, 571, 1, 1, 0, 0, 8584.64, 2760.8, 759.958, 2.59599, 300, 15, 0, 12600, 0, 0, 1),
(NULL, 29720, 571, 1, 1, 0, 0, 8617.49, 2735.11, 759.958, 2.32895, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29720, 571, 1, 1, 0, 0, 8420.8, 2688.71, 759.957, 1.33806, 300, 15, 0, 12600, 0, 0, 1),
(NULL, 29719, 571, 1, 1, 0, 0, 8417.11, 2641.07, 759.957, 1.57604, 300, 15, 0, 12600, 0, 0, 1),
(NULL, 29719, 571, 1, 1, 0, 0, 8435.89, 2596.91, 759.957, 2.30577, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29720, 571, 1, 1, 0, 0, 8477.25, 2565.16, 759.957, 2.51783, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29719, 571, 1, 1, 0, 0, 8522.14, 2556.99, 759.957, 3.11709, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29720, 571, 1, 1, 0, 0, 8571.58, 2559.95, 759.957, 4.05564, 300, 0, 0, 12600, 0, 0, 0),
(NULL, 29720, 571, 1, 1, 0, 0, 8609.24, 2589.19, 759.958, 0.155352, 300, 15, 0, 12175, 0, 0, 1),
(NULL, 29719, 571, 1, 1, 0, 0, 8637.35, 2651.77, 759.958, 4.15303, 300, 15, 0, 12600, 0, 0, 1),
(NULL, 29719, 571, 1, 1, 0, 0, 8636.85, 2679.47, 759.958, 4.93842, 300, 15, 0, 12175, 0, 0, 1);
UPDATE `creature_template` SET `ScriptName`='npc_valiant', `dmg_multiplier`=2 WHERE `entry` IN (33285,33306,33384,33383,33382,33739,33749,33745,33744,33748,33740,33743,33747,33738,33746,33561,33558,33559,33562);
UPDATE `creature_template` SET `lootid`=33422,`mingold`=1584,`maxgold`=2640 WHERE `entry`=33422;
DELETE FROM `creature_loot_template` WHERE `entry`=33422;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES 
(33422,45064,-17,1,0,1,1);
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-7033,-7035,-7034);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=29618;
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry` =29618;
INSERT INTO `creature_ai_scripts`(`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(77770084,29618,8,0,100,1,66474,-1,6000,6000,33,34899,6,0,22,1,0,0,0,0,0,0,'Snowblind Follower Proxy credit - q14141 q14090'),
(77770085,29618,0,1,100,1,4000,4000,6000,6000,23,-1,0,0,41,0,0,0,0,0,0,0,'Snowblind Follower Proxy credit - q14141 q14090'),
(77770086,29618,1,1,100,1,4000,4000,6000,6000,23,-1,0,0,41,0,0,0,0,0,0,0,'Snowblind Follower Proxy credit - q14141 q14090'),
(77770087,29618,0,1,100,1,2000,2000,6000,6000,1,-7033,-7034,-7035,0,0,0,0,0,0,0,0,'Snowblind Follower say - q14141 q14090'),
(77770088,29618,1,1,100,1,2000,2000,6000,6000,1,-7033,-7034,-7035,0,0,0,0,0,0,0,0,'Snowblind Follower say - q14141 q14090');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(-7033,'You no take... me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,5,'c29618 Snowblind Follower - q14141 q14090'),
(-7034,'No! Me not afraid! Grrrrr! No kill me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,5,'c29618 Snowblind Follower - q14141 q14090'),
(-7035,'Net not stop me! No... net stop me',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,5,'c29618 Snowblind Follower - q14141 q14090');
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-7012,-7011);
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=33273;
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry` = 33273;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(77770019,33273,1,0,100,1,17000,17000,60000,60000,1,-7011,0,0,0,0,0,0,0,0,0,0,'Maiden of Drak\'Mar - all quest named \&quot;A Worthy Weapon\&quot;'),
(77770020,33273,1,0,100,1,9000,9000,60000,60000,1,-7012,0,0,0,0,0,0,0,0,0,0,'Maiden of Drak\'Mar - all quest named \&quot;A Worthy Weapon\&quot;');
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(-7012,'It\'s been so long since a traveler has come here bearing flowers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'c33273 Maiden of Drak\'Mar - all quest named \&quot;A Worthy Weapon\&quot;'),
(-7011,'The lake has been too lonely these past years. The travelers stopped coming and evil came to these waters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,1,'c33273 Maiden of Drak\'Mar - all quest named \&quot;A Worthy Weapon\&quot;');
DELETE FROM `gameobject` WHERE `id` =300009;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)VALUES 
('300009','571','1','1','4601.68','-1601.91','156.659','1.0243','0','0','0.490051','0.871694','1','0','1');
UPDATE `creature_template` SET `ScriptName`='npc_ValiantGrandMelee' WHERE `entry` IN (33561,33564,33558,33559,33562);
UPDATE `creature_template` SET `ScriptName`='npc_squire_danny' WHERE `entry` = 33518;
UPDATE `creature_template` SET `faction_a`=14,`faction_h`=14,`movementId`=48,`ScriptName`='npc_argent_champion' WHERE `entry` = 33707;
DELETE FROM `creature_template_addon` WHERE `entry`=33707;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
('33707','0','28918','0','0','0',NULL);
DELETE FROM `script_texts` WHERE `entry` IN (-1850013,-1850014);
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
('0','-1850013','You believe you are ready to be a champion? Defend yourself!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',''),
('0','-1850014','Most impressive. You are worthy to gain the rank of champion!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','');
UPDATE `creature_template` SET `scriptname`='npc_maloric' WHERE `entry`=33498;
UPDATE creature_template SET scriptname='npc_maloric' WHERE entry=33498;
DELETE FROM `conditions` WHERE `SourceEntry` = 63124 AND `ConditionValue1` = 33498;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ErrorTextId`,`Comment`) VALUES 
(17,63124,1,19,33498,447,'Item Large Femur - Npc Maloric');
UPDATE `creature_template` SET lootid = 33499 WHERE `entry` = 33499;
DELETE FROM `creature_loot_template` WHERE `item` = 45080;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('33499','45080','-100','1','0','1','1');
UPDATE `creature_template` SET MovementType = 1 WHERE `entry` = '33499';
DELETE FROM `creature` WHERE `id` = '33499';
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('33499','571','1','1','0','1858','5470.29','400.611','160.27','5.40927','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5478.44','369.635','152.741','5.60091','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5456.16','335.95','154.495','5.24198','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5380.89','373.719','173.494','5.53258','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5417.8','337.264','161.858','4.87128','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5450.22','317.678','153.375','5.7957','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5427.31','285.311','155.185','5.34723','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5446.45','250','151.935','6.22845','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5379','238.12','166.777','5.09198','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5419.02','200.04','153.596','5.89073','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5365.49','173.051','163.403','5.81062','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5421.02','149.316','150.516','0.0583642','300','5','0','12175','0','0','1'),
('33499','571','1','1','0','1858','5443.25','371.767','163.366','4.35449','300','5','0','12175','0','0','1');
DELETE FROM `gameobject` WHERE `id`= 300008;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(150394, 300008, 571, 1, 1, 8432, 702.216, 547.315, 0.900956, 0, 0, 0.435396, 0.900239, 600, 0, 1),
(150395, 300008, 571, 1, 1, 8480.85, 924.364, 547.293, -1.5708, 0, 0, 0, 0, 180, 100, 1),
(150396, 300008, 571, 1, 1, 8481.15, 900.138, 547.293, -1.5708, 0, 0, 0, 0, 180, 100, 1),
(150397, 300008, 571, 1, 1, 8481.56, 903.669, 547.293, 1.70287, 0, 0, 0.752227, 0.658904, 600, 0, 1),
(150398, 300008, 571, 1, 1, 8482.38, 943.012, 547.293, -1.58825, 0, 0, 0, 0, 180, 100, 1),
(150399, 300008, 571, 1, 1, 8490.46, 882.45, 547.293, -0.0349063, 0, 0, 0, 0, 180, 100, 1),
(150400, 300008, 571, 1, 1, 8575.6, 677.852, 547.374, 1.92826, 0, 0, 0.821552, 0.570133, 600, 0, 1),
(150401, 300008, 571, 1, 1, 8589.45, 937.076, 548.657, 3.0332, 0, 0, 0.998532, 0.0541679, 600, 0, 1),
(150402, 300008, 571, 1, 1, 8592.27, 675.204, 550.098, 0.767944, 0, 0, 0, 0, 180, 100, 1),
(150403, 300008, 571, 1, 1, 8597.99, 936.333, 548.751, 1.51844, 0, 0, 0, 0, 180, 100, 1),
(150404, 300008, 571, 1, 1, 8599, 681.084, 550.094, 0.750491, 0, 0, 0, 0, 180, 100, 1),
(511669, 300008, 571, 1, 1, 8574.65, 665.397, 547.374, 2.95377, 0, 0, 0.995593, 0.0937743, 300, 0, 1),
(511692, 300008, 571, 1, 1, 8574.78, 659.323, 547.373, 2.95377, 0, 0, 0.995593, 0.0937743, 300, 0, 1),
(511713, 300008, 571, 1, 1, 8576.76, 674.795, 547.425, 2.95377, 0, 0, 0.995593, 0.0937743, 300, 0, 1),
(511973, 300008, 571, 1, 1, 8485.6, 904.768, 547.293, 5.32262, 0, 0, 0.462032, -0.886863, 300, 0, 1),
(512021, 300008, 571, 1, 1, 8486.95, 920.745, 547.293, 0.158404, 0, 0, 0.079119, 0.996865, 300, 0, 1),
(512073, 300008, 571, 1, 1, 8487.44, 937.72, 547.293, 0.0680826, 0, 0, 0.0340347, 0.999421, 300, 0, 1),
(512079, 300008, 571, 1, 1, 8490.57, 953.348, 547.293, 1.55838, 0, 0, 0.702702, 0.711484, 300, 0, 1);
UPDATE `creature_template` SET `ScriptName`= 'npc_leaper' WHERE `entry`= '29840';
UPDATE `creature_template` SET `ScriptName`= 'npc_vile' WHERE `entry`= '29769';
UPDATE `creature_template` SET `ScriptName`= 'npc_lady_nightswood' WHERE `entry`= '29770';
UPDATE `creature_template` SET `ScriptName` = 'npc_Scarlet_Onslaught', `AIName` = '' WHERE entry IN (29330, 29338, 29333, 29329);
DELETE FROM `script_texts` WHERE `entry` IN (-1603500,-1603501);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(30409,-1603500,'You\'ve come for the doctor\'s plans! You\'ll only find death!','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Apprentice Osterkilgr - SAY_QUEST1'),
(30409,-1603501,'The doctor entrusted me with the plans to Nergeld! I will not fail!','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Apprentice Osterkilgr - SAY_QUEST2');
UPDATE `creature_template` SET `ScriptName`='npc_apprentice_osterkilgr',`AIName`='' WHERE `entry`=30409;
DELETE FROM `script_texts` WHERE `entry` BETWEEN ('-1603530') AND ('-1603516');
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(31304,-1603516,'Uhnhh.... It is too late for me, $Gsister:brother;.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING SOLDIER - SAY1'),
(31304,-1603517,'I am... finished...','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING SOLDIER - SAY2'),
(31304,-1603518,'Stay with me, friend. I must know what happened here.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING SOLDIER - SAY3 (Player\'s say)'),
(31304,-1603519,'We attacked under cover of a blizzard....','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING SOLDIER - SAY4'),
(31304,-1603520,'The Scourge were caught off guard... our victory was certain....','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING SOLDIER - SAY5'),
(31304,-1603521,'Then... from behind us... the Horde came from nowhere.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING SOLDIER - SAY6'),
(31304,-1603522,'They cost us... everything...','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING SOLDIER - SAY7'),
(31273,-1603523,'Uhnhh... Don\'t.... bother with me.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING BERSERKER - SAY1'),
(31273,-1603524,'I am... finished...','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING BERSERKER - SAY2'),
(31273,-1603525,'Hold on friend. Tell me what happened here.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING BERSERKER - SAY3'),
(31273,-1603526,'Gathering... information.... on the Scourge.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING BERSERKER - SAY4 (Player\'s say)'),
(31273,-1603527,'Alliance forces appeared...','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING BERSERKER - SAY5'),
(31273,-1603528,'We took cover - waited until they attacked the gate, then we hit them from the rear.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING BERSERKER - SAY6'),
(31273,-1603529,'Pinched between us... and the Scourge... it was too much for them...','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING BERSERKER - SAY7'),
(31273,-1603530,'Brother... it was... glorious.','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'DYING BERSERKER - SAY8');
UPDATE `creature_template` SET `ScriptName`='npc_dying_berserker' WHERE `entry`=31273;
DELETE FROM `script_texts` WHERE `entry` BETWEEN (-1603515) AND (-1603511);
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(30658,-1603511,'Please $R... Release me...','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Dying NPC - SAY1'),
(30658,-1603512,'Don\'t think $C...Just..do it...','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Dying NPC - SAY2'),
(30658,-1603513,'Send me on my way...I beg you...','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Dying NPC - SAY3'),
(30658,-1603514,'Do it $C...then...avenge me!','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Dying NPC - SAY4'),
(30658,-1603515,'Tell my family...my last thoughts were of them...','NULL','NULL','NULL','NULL','NULL','NULL','NULL','NULL',0,0,0,0,'Dying NPC - SAY5');
UPDATE `creature_template` SET `ScriptName`='npc_dying_soldier' WHERE `entry`=31304;
DELETE FROM `creature_questrelation` WHERE `quest` = 13625;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13625;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13625;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33647, 13625);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33647;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13625;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13625;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33647, 13625);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33647;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 33229, `ReqCreatureOrGOId2` = 33243, `ReqCreatureOrGOId3` = 33272, `ReqSpellCast1` = 62544, `ReqSpellCast2` = 62575, `ReqSpellCast3` = 63010 WHERE `entry` = 13625;
DELETE FROM `creature_questrelation` WHERE `quest` = 13677;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13677;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13677;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33659, 13677);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33659;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13677;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13677;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33659, 13677);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33659;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 33229, `ReqCreatureOrGOId2` = 33243, `ReqCreatureOrGOId3` = 33272, `ReqSpellCast1` = 62544, `ReqSpellCast2` = 62575, `ReqSpellCast3` = 63010 WHERE `entry` = 13677;
DELETE FROM `creature_questrelation` WHERE `quest` = 13828;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13828;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13828;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33625, 13828);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33625;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13828;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13828;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33625, 13828);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33625;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33229, `ReqSpellCast2` = 62544 WHERE `entry` = 13828;
DELETE FROM `creature_questrelation` WHERE `quest` = 13829;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13829;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13829;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33542, 13829);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33542;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13829;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13829;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33542, 13829);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33542;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33229, `ReqSpellCast2` = 62544 WHERE `entry` = 13829;
DELETE FROM `creature_questrelation` WHERE `quest` = 13835;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13835;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13835;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33647, 13835);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33647;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13835;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13835;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33647, 13835);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33647;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33243, `ReqSpellCast2` = 62575 WHERE `entry` = 13835;
DELETE FROM `creature_questrelation` WHERE `quest` = 13837;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13837;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13837;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33646, 13837);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33646;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13837;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13837;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33646, 13837);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33646;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33272, `ReqSpellCast2` = 63010 WHERE `entry` = 13837;
DELETE FROM `creature_questrelation` WHERE `quest` = 13838;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13838;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13838;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33659, 13838);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33659;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13838;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13838;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33659, 13838);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33659;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33243, `ReqSpellCast2` = 62575 WHERE `entry` = 13838;
DELETE FROM `creature_questrelation` WHERE `quest` = 13839;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13839;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13839;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (33658, 13839);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 33658;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13839;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13839;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (33658, 13839);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=33658;
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = 33272, `ReqSpellCast2` = 63010 WHERE `entry` = 13839;
DELETE FROM `script_texts`  WHERE entry IN (-1000356,-1000357,-1000358);
INSERT INTO `script_texts` (entry,content_default,sound,type,language,emote,comment) VALUES
(-1000356, 'Let the Fishing Tournament BEGIN!', 0, 6, 0, 0, 'riggle SAY_START'),
(-1000357, 'We have a winner! $N is the Master Angler!', 0, 6, 0, 0, 'riggle SAY_WINNER'),
(-1000358, 'And the Tastyfish have gone for the week! I will remain for another hour to allow you to turn in your fish!', 0, 6, 0, 0, 'riggle SAY_END');
UPDATE creature_template SET ScriptName='npc_riggle_bassbait' WHERE entry=15077;
UPDATE `game_event` SET `start_time`='2009-06-14 14:00:00', `occurence`=10080, `length`=120 where eventEntry=15;
DELETE FROM `creature` WHERE `id`IN (15078,15079,15077);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(546810, 15078, 0, 1, 1, 0, 1711, -14438, 473.661, 15.3137, 3.65362, 25, 0, 0, 3200, 0, 0, 0),
(546811, 15079, 0, 1, 1, 0, 0, -14440, 477.446, 15.25, 3.71802, 25, 0, 0, 2600, 0, 0, 0),
(3849539, 15077, 0, 1, 1, 0, 13, -14439.3, 475.42, 15.892, 3.68503, 25, 0, 0, 3700, 0, 0, 0);
DELETE FROM `gameobject` WHERE `id`=180403;
DELETE FROM `gameobject` WHERE `guid`=100391;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(100391, 180403, 0, 1, 1, -14439.3, 475.42, 15.2791, 3.68503, 0, 0, 0.963311, -0.268388, 25, 0, 1);
DELETE FROM `game_event_creature` WHERE `guid` IN (54687,54688,3849539);
DELETE FROM `game_event_gameobject`WHERE `guid`=100391;
DELETE FROM `game_event` WHERE `eventEntry`=35;
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES 
(35, '2009-03-29 14:00:00', '2020-12-31 00:00:00', 10080, 180, 0, 'Fishing Extravaganza Questgivers');
DELETE FROM `game_event_creature` WHERE abs(`eventEntry`) = 35;
DELETE FROM `game_event_gameobject` WHERE abs(`eventEntry`) = 35;
INSERT INTO `game_event_creature` (`guid`, `eventEntry`) VALUES 
(54687,35), 
(54688,35), 
(3849539,35);
INSERT INTO `game_event_gameobject` (`guid`, `eventEntry`) VALUES (100391,35);
DELETE FROM `creature_questrelation` WHERE `quest` IN (8193,8194,8225,8224,8221);
DELETE FROM `game_event_creature_quest` WHERE `eventEntry` IN (15,35);
INSERT INTO `game_event_creature_quest` (`id`,`quest`,`eventEntry`) VALUES 
(15077,8193,35), 
(15078,8194,35), 
(15079,8225,35), 
(15079,8224,35), 
(15079,8221,35);
UPDATE `quest_template` SET `ReqSpellCast1`=51962, `ReqSpellCast2`=51962, `ReqSpellCast3`=51962 WHERE `entry`=12645;
UPDATE `creature_template` SET `speed_walk`='2',`spell1`='57403',`VehicleId`='200',`RegenHealth`='0',`ScriptName`='vehicle_knight_gryphon' WHERE (`entry`='33519'); 
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(1178, 0, 1, 1, 1122, 0, -4879.88, -3884.42, 303.659, 2.4162, 300, 0, 0, 417, 0, 0, 0),
(1178, 0, 1, 1, 1122, 0, -4884.67, -3813.78, 304.126, 1.87155, 300, 5, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4902.35, -3910.26, 300.735, 1.74533, 300, 0, 0, 417, 0, 0, 0),
(1178, 0, 1, 1, 1122, 0, -4948.55, -3748.52, 318.755, 0.36412, 300, 5, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4874.72, -3906.17, 302.602, 3.10669, 300, 0, 0, 417, 0, 0, 0),
(1178, 0, 1, 1, 1122, 0, -4880.8, -3747.4, 312.49, 0.888788, 300, 10, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4915.2, -3986.09, 296.665, 0.226805, 300, 3, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4963.93, -4022.95, 301.358, 3.79229, 300, 3, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -5082.26, -4080.96, 311.608, 1.07957, 300, 10, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4981.38, -3914.15, 305.894, 4.63279, 300, 3, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4958.24, -3946.78, 301.179, 3.28957, 300, 5, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -4957.42, -3915.39, 305.241, 1.86585, 300, 10, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -5111, -3845.37, 320.988, 4.76514, 300, 5, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -5009.46, -3890.06, 309.664, 2.09648, 300, 10, 0, 417, 0, 0, 1),
(1178, 0, 1, 1, 1122, 0, -5072.94, -3885.23, 321.944, 0.028778, 300, 5, 0, 417, 0, 0, 1);
UPDATE `creature_ai_scripts` SET `action1_param1` = 33900 WHERE `id` = 1697800 AND `creature_id` = 16978;

-- Items
UPDATE `item_template` SET `ScriptName`='' WHERE `ScriptName`='item_harvesters_gift';
UPDATE `item_template` SET `ScriptName`='' WHERE `ScriptName`='item_flying_machine';

-- Spells
DELETE FROM `playercreateinfo_spell` WHERE `Spell` IN ('71761');
INSERT INTO `playercreateinfo_spell` (`race`, `class`, `Spell`, `Note`) VALUES
('1','8','71761','Deep Freeze Immunity State'),
('5','8','71761','Deep Freeze Immunity State'),
('7','8','71761','Deep Freeze Immunity State'),
('8','8','71761','Deep Freeze Immunity State'),
('10','8','71761','Deep Freeze Immunity State'),
('11','8','71761','Deep Freeze Immunity State');
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('71757');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('71757','2.143','0','0','0','Mage - Deep Freeze');
DELETE FROM `spell_proc_event` WHERE `entry` IN ('71761');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('71761','0','3','0','1048576','0','0','256','0','0','0');
DELETE FROM `spell_proc_event` WHERE `entry` IN ('66799','66814','66815','66816','66817');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('66799','0','15','4194304','0','0','0','0','0','0','0'),
('66814','0','15','4194304','0','0','0','0','0','0','0'),
('66815','0','15','4194304','0','0','0','0','0','0','0'),
('66816','0','15','4194304','0','0','0','0','0','0','0'),
('66817','0','15','4194304','0','0','0','0','0','0','0');
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('54172');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('54172','0','0','0','0','Paladin - Divine Storm');
DELETE FROM `spell_proc_event` WHERE `entry` IN ('199997');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('199997','0','10','0','131072','0','16','0','0','100','0');
DELETE FROM `spell_dbc` WHERE `Id` IN ('199997');
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
('199997','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','-1','0','0','6','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','10','0','0','0','0','0','0','0','0','0','0','0','Divine Storm Helper (SERVERSIDE)');
DELETE FROM spell_bonus_data WHERE entry = 64801;
INSERT INTO spell_bonus_data VALUES 
(64801, 0.47, 0, 0, 0, "Druid - T8 Restoration 4P Bonus");
DELETE FROM `spell_dbc` WHERE `Id` IN ('199999');
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
('199999','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','-1','0','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','Earthen Power Helper (SERVERSIDE)');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN ('3600');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
('3600','199999','0','Earthbind');
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('32645');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('32645','0','0','0','0','Rogue - Envenom');
DELETE FROM `spell_proc_event` WHERE `entry` IN ('44544','74396');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('44544','0','3','685904631','1151048','0','65536','0','0','0','0');
DELETE FROM `spell_proc_event` WHERE `entry` IN (71865);
INSERT INTO `spell_proc_event` VALUES (71865, 0x01, 0x0A, 0x00000000, 0x00000000, 0x00000000, 0x00044000, 0x00000018, 0, 1, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (71868); 
INSERT INTO `spell_proc_event` VALUES (71868, 0x01, 0x0A, 0x00000000, 0x00000000, 0x00000000, 0x00044000, 0x00000018, 0, 1, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (71871); 
INSERT INTO `spell_proc_event` VALUES (71871, 0x01, 0x0A, 0x00000000, 0x00000000, 0x00000000, 0x00000014, 0x00000018, 0, 37, 30);
DELETE FROM `spell_proc_event` WHERE `entry` IN (71873); 
INSERT INTO `spell_proc_event` VALUES (71873, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000014, 0x00000018, 0, 37, 35);
DELETE FROM `spell_proc_event` WHERE `entry` IN (71845); 
INSERT INTO `spell_proc_event` VALUES (71845, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0, 2, 40);
DELETE FROM `spell_proc_event` WHERE `entry` IN (71845); 
INSERT INTO `spell_proc_event` VALUES (71845, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0, 2, 45);
DELETE FROM `spell_proc_event` WHERE `entry` IN (56614);
INSERT INTO `spell_proc_event` VALUES (56614, 0x01, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000014, 0x00000000, 0, 100, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (16689);
INSERT INTO `spell_proc_event` VALUES (16689, 0x08, 0x07, 0x00000000, 0x00000000, 0x00000000, 0x00000028, 0x00000000, 0, 100, 0);
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=65005;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=65013;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=60442;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=60493;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=60487;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=60529;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=60436;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=60537;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=67670;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=33953;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=62115;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=67672;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=33648;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=57352;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=57345;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=60490;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=62114;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=59818;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=49622;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=33648;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=60063;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=59787;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=60063;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=58901;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=67667;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=67653;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=33953;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=64786;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=64714;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=64738;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71404;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=64792;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=65025;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=65020;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=64742;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=65002;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=64764;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71642;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71640;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71562;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71637;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71545;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71611;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71634;
UPDATE `spell_proc_event` SET Cooldown=105 WHERE entry=71519;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71606;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71585;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71406;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=41540;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=67771;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71402;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=67702;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71645;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71602;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71573;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71571;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71578;
UPDATE `spell_proc_event` SET Cooldown=45 WHERE entry=71576;
UPDATE `spell_proc_event` SET Cooldown=60 WHERE entry=72415;
UPDATE `spell_proc_event` SET Cooldown=60 WHERE entry=72417;
UPDATE `spell_proc_event` SET Cooldown=60 WHERE entry=72413;
DELETE FROM `spell_proc_event` WHERE `entry` IN (75455,75474,75465,75481,75475);
INSERT INTO `spell_proc_event` VALUES
(75455, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45),
(75474, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45),
(75465, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  45),
(75481, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30),
(75475, 0x00,   0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,   0,   0,  30);
DELETE FROM `spell_proc_event` WHERE `entry` IN ('67712'); INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES ( 67712, 0x00, 0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0, 0, 2);
DELETE FROM `spell_script_names` WHERE `spell_id`=71905 AND `ScriptName`='spell_item_shadowmourne';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(71905,'spell_item_shadowmourne');
UPDATE `creature_template` SET `unit_flags`='2' WHERE (`entry`='22112');
DELETE FROM spell_script_names WHERE spell_id=-47540 AND ScriptName='spell_pri_penance';
DELETE FROM spell_script_names WHERE spell_id=53005 AND ScriptName='spell_pri_penance';
DELETE FROM spell_script_names WHERE spell_id=53006 AND ScriptName='spell_pri_penance';
DELETE FROM spell_script_names WHERE spell_id=53007 AND ScriptName='spell_pri_penance';
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(-47540,'spell_pri_penance'),
(53005,'spell_pri_penance'),
(53006,'spell_pri_penance'),
(53007,'spell_pri_penance');
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('44457','44461');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('44457','0','0.2','0','0','Mage - Living Bomb'),
('44461','0.4','0','0','0','Mage - Living Bomb');

DELETE FROM `spell_proc_event` WHERE `entry` IN ('44449','44469','44470','44471','44472','44445','44446','44448');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('44449','0','3','551686903','233544','0','0','2','0','0','0'),
('44469','0','3','551686903','233544','0','0','2','0','0','0'),
('44470','0','3','551686903','233544','0','0','2','0','0','0'),
('44471','0','3','551686903','233544','0','0','2','0','0','0'),
('44472','0','3','551686903','233544','0','0','2','0','0','0'),
('44445','0','3','19','69632','0','0','0','0','0','0'),
('44446','0','3','19','69632','0','0','0','0','0','0'),
('44448','0','3','19','69632','0','0','0','0','0','0');
DELETE FROM `spell_proc_event` WHERE `entry` IN (70748);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(70748,0x00,3,0x00000000,0x00200000,0x00000000,0x00000400,0x00000000,0,0,0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (70755);
INSERT INTO `spell_proc_event` VALUES (70755, 0x00, 0x0A, 0x00000000, 0x80000000, 0x00000000, 0x00004000, 0x00010000, 0, 101, 0);
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('53600');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('53600','0','0','0','0','Paladin - Shield of Righteousness');
DELETE FROM `spell_script_names` WHERE `spell_id` IN ('-2818');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('-2818','spell_rog_deadly_poison');
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('2818');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('2818','0','0','0','0.03','Rogue - Deadly Poison Rank 1($AP*0.12 / number of ticks)');
DELETE FROM `spell_bonus_data` WHERE `entry` = 64891;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('64891','0','0','0','0','Paladin T8 Holy 2P Bonus');
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('50536');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('50536','0','0','0','0','Death Knight - Unholy Blight');
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('34914', '64085');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('34914','0','0.4','0','0','Priest - Vampiric Touch'),
('64085','1.2','0','0','0','Priest - Vampiric Touch');
DELETE FROM `spell_proc_event` WHERE `entry` IN (51696);
INSERT INTO `spell_proc_event` VALUES (51696, 0x00, 8, 0x00000204, 0x00000000, 
0x00000000, 0x00000000, 0x00000000, 0.000000, 100.000000, 0);
DELETE FROM `spell_proc_event` WHERE `entry` IN (51692);
INSERT INTO `spell_proc_event` VALUES (51692, 0x00, 8, 0x00000204, 0x00000000, 
0x00000000, 0x00000000, 0x00000000, 0.000000, 50.000000, 0);
UPDATE item_template SET ScriptName = 'item_zuluheds_key' WHERE entry = 31664;
DELETE FROM `spell_script_names` WHERE `spell_id` IN ('-48721');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('-48721','spell_dk_blood_boil');
UPDATE `instance_template` SET `script`='instance_blackrock_spire' WHERE `map`=229;
UPDATE `creature_template` SET `ScriptName`='npc_rookey_whelp' WHERE entry=10161;
UPDATE `gameobject_template` SET `ScriptName`='go_rookey_egg' WHERE entry=175124;

-- Other
DELETE FROM db_script_string WHERE entry=2000000348;
DELETE FROM creature WHERE id = 11980;
INSERT INTO creature VALUE (NULL,11980,530,1,1,0,0,-4155.49,386.408,141.412,4.48379,900,0,0,85560,0,0,0,0,0,0);
DROP TABLE IF EXISTS `custom_npc_tele_destination`;
create table `custom_npc_tele_destination` (
    `id` double ,
    `name` varchar (300),
    `type` tinyint (3),
    `pos_x` float ,
    `pos_y` float ,
    `pos_z` float ,
    `map` int ,
    `orientation` float ,
    `level` tinyint (3),
    `faction` double 
); 
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('1','Stormwind City','1','-8828.57226562','631.69653320','94.18654633','0','0.83349502','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('2','Elwyn Forest (Goldshire)','2','-9494.59765625','69.07965851','56.26654053','0','2.96209192','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('3','Redridge Mountains (Lakeshire)','2','-9283.24511719','-2285.82739258','67.51363373','0','3.03297901','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('4','Westfall (Sentinel Hill)','2','-10659.38964844','1004.39031982','32.86300659','0','3.32493997','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('5','Duskwood (Darkshire)','2','-10566.14160156','-1178.61669922','28.17659760','0','1.34908402','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('6','Duskwood (Unkillable Test Dummy)','2','-10895.93554688','-371.48370361','39.34798050','0','6.08246088','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('7','Stranglethorn Vale (Grom\'gol Base Camp)','2','-12388.96484375','180.91143799','2.28793907','0','0.02000700','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('8','Stranglethorn Vale (Rebel Camp)','2','-11308.29296875','-196.98452759','75.37601471','0','0.58861500','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('9','Stranglethorn Vale (Booty Bay)','2','-14291.39355469','533.08325195','8.93358326','0','5.82899809','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('10','Karazhan (Deadwind Pass)','10','-11113.94921875','-2017.89477539','47.07579041','0','0.80219698','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('11','Swamp of Sorrows (Deadwind Entrance)','2','-10565.74023438','-2359.71557617','86.24407196','0','3.58415008','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('12','Swamp of Sorrows (Stonard)','2','-10457.87890625','-3251.75512695','20.93043709','0','3.37203097','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('13','Blasted Lands (Nethergarde Keep)','2','-11003.44921875','-3432.43652344','61.85697556','0','3.74751496','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('14','Burning Steppes (Morgan\'s Vigil)','2','-8377.16406250','-2763.56298828','189.11248779','0','4.68445206','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('15','Blasted Lands (Dark Portal)','2','-11848.87792969','-3201.53710938','-28.88366699','0','3.24718404','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('16','Burning Steppes (Flame Crest)','2','-7491.90332031','-2173.41430664','165.50785828','0','1.89389706','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('17','Searing Gorge (Thorium Point)','2','-6443.79248047','-1120.90649414','311.11254883','0','5.60098410','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('18','Badlands (Kargath)','2','-6682.85888672','-2167.53295898','244.14407349','0','0.56578600','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('19','Uldaman (Badlands)','6','-6117.45703125','-3307.02783203','257.06024170','0','2.77666402','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('20','Loch Modan (Thelsamar)','2','-5427.26318359','-2924.76708984','347.29934692','0','3.21569800','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('21','Gnomeregan (Dun Morogh)','6','-5197.72119141','510.53930664','387.71450806','0','3.98744893','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('22','Ironforge','1','-4828.97753906','-1158.66271973','502.20907593','0','1.77340400','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('23','Dun Morogh (Kharanos)','2','-5616.09472656','-502.46533203','402.84902954','0','4.19242811','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('24','Wetlands (Menethil Harbor)','2','-3777.31103516','-735.74267578','8.07902145','0','2.21158600','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('25','Wetlands (Dun Modr)','2','-2694.07080078','-2501.54565430','77.99232483','0','5.66735601','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('26','Arathi Highlands (Refuge Pointe)','2','-1221.69665527','-2538.75634766','21.69177818','0','6.01685190','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('27','Arathi Highlands (Hammerfall)','2','-975.93316650','-3478.78076172','56.83513641','0','1.55262899','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('28','Hillsbrad Foothills (Tarren Mill)','2','-43.06374359','-919.76837158','54.63567352','0','3.37553906','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('29','Hillsbrad Foothills (Southshore)','2','-720.11560059','-511.92706299','26.17308044','0','1.52199304','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('30','Silverpine Forest (Pyrewood Village)','2','-365.35324097','1187.91516113','65.36923218','0','4.79316807','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('31','Silverpine Forest (The Sepulcher)','2','485.35299683','1602.64001465','126.57599640','0','2.75425005','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('32','Undercity','1','1562.75415039','273.79873657','-43.10251236','0','2.32852292','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('33','Tirisfal Glades (Brill)','2','2276.34643555','294.99261475','35.08965302','0','6.03245878','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('34','Scarlet Monastery (Tirisfal Glades)','6','2663.09277344','-676.53979492','112.71053314','0','4.39489317','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('35','The Deadmines (Westfall)','6','-11082.38183594','1560.58581543','48.56832123','0','2.40838695','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('36','Alterac Mountains','2','616.08068848','-1131.35205078','160.85835266','0','3.03966594','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('37','Hinterlands (Aerie Peak)','2','291.06448364','-2011.55505371','194.12651062','0','5.42962503','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('38','Hinterlands (Revantusk Village)','2','-587.08624268','-4622.84570312','9.58056641','0','5.24271107','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('39','Hinterlands (Agol\'watha)','2','313.19308472','-3408.53540039','117.73816681','0','0.71881300','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('40','Scholomance (Western Plaguelands)','6','1226.53430176','-2574.82299805','90.55430603','0','1.90086102','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('41','Tirisfal Glades (Bulwark)','2','1726.60351562','-740.46612549','58.98772812','0','5.17361498','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('42','Western Plaguelands (Signpost)','2','1752.20300293','-1731.02111816','60.04861450','0','6.04851818','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('43','Eastern Plaguelands (Light\'s Hope)','2','2317.06542969','-5296.98583984','81.99664307','0','5.83726597','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('44','Stratholme (Eastern Plaguelands)','6','3371.53491211','-3386.94189453','144.78137207','0','0.15728700','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('45','Zul\'Aman (Ghostlands)','10','6824.62695312','-7785.41015625','130.42987061','0','3.63965297','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('46','Ghostlands (Zul\'Aman)','2','6824.62695312','-7785.41015625','130.42987061','0','3.63965297','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('47','Zul\'Gurub (Stranglethorn Vale)','9','-11916.32714844','-878.75128174','32.26947021','0','4.70334387','0','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('48','Ghostlands (Tranquillien)','2','7585.23144531','-6809.49462891','86.93355560','0','1.58346999','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('49','Eversong Woods (Fairbreeze)','2','8704.09179688','-6677.38720703','70.56478119','0','3.26891899','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('50','Silvermoon','1','9699.24707031','-7365.33398438','12.17919159','0','6.01651001','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('51','Durotar (Razor Hill)','3','303.00292969','-4737.95458984','9.33482361','1','5.48935890','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('52','Orgrimmar','1','1601.79650879','-4380.71191406','9.77274990','1','2.47632289','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('53','Barrens (Ratchet)','3','-958.98065186','-3678.73046875','8.47044373','1','4.65107107','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('54','Barrens (Crossroads)','3','-453.33712769','-2659.82006836','95.73587799','1','4.94794798','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('55','Barrens (Camp Taurajo)','3','-2351.66918945','-1911.63427734','95.78307343','1','0.10125900','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('56','Thunderbluff','1','-1271.57922363','78.52238464','128.18632507','1','6.27517891','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('57','Thousand Needles (Freewind)','3','-5439.05273438','-2421.03881836','90.27252197','1','4.88970995','1','2');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('58','Thousand Needles','3','-5218.27343750','-1847.01489258','61.41076660','1','1.80049896','1','1');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('59','Tanaris (Gadgetzan)','3','-7169.42822266','-3794.30859375','8.61723423','1','1.65185797','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('60','Caverns of Time (Tanaris)','10','-8175.34082031','-4693.36572266','18.20398903','1','4.50267887','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('61','Culling of Stratholme','7','-8761.07910156','-4445.22265625','-199.99925232','1','2.66095090','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('62','Black Morass','7','-8725.64843750','-4248.66064453','-205.86802673','1','3.51231098','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('63','Old Hillsbrad Foothills','7','-8397.98535156','-4078.30273438','-208.58526611','1','4.46395493','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('64','Mount Hyjal','7','-8183.64257812','-4188.00732422','-169.40417480','1','4.48358202','1','0');
insert into `custom_npc_tele_destination` (`id`, `name`, `type`, `pos_x`, `pos_y`, `pos_z`, `map`, `orientation`, `level`, `faction`) values('65','Zul\'Farrak','6','-6816.28271484','-2881.89306641','9.36143398','1','1.17399597','1','0');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100002, 0, 0, 0, 0, 0, 27153, 0, 0, 0, 'Aspirine', 'cool npc', '', 0, 80, 80, 0, 35, 35, 1, 0.75, 2, 1755, 1755, 0, 1504, 1000, 1500, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_aspirine');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100002, 0, 0, 0, 0, 0, 27153, 0, 0, 0, 'Mounts', 'Transport Service', '', 0, 80, 80, 0, 35, 35, 1, 0.75, 2, 1755, 1755, 0, 1504, 1000, 1500, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'npc_mount');
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE IF NOT EXISTS `reserved_name` (
  `name` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';
LOCK TABLES `reserved_name` WRITE;
/*!40000 ALTER TABLE `reserved_name` DISABLE KEYS */;
REPLACE INTO `reserved_name` VALUES ('eilo'),('eiilo'),('eiloo'),('eeilo'),('reisa'),('reiisa'),('reisaa'),('anubis'),('anubiis'),('anuubis'),('winnie'),('winie'),('wiinie'),('winni');
/*!40000 ALTER TABLE `reserved_name` ENABLE KEYS */;
UNLOCK TABLES;
DELETE FROM `trinity_string` WHERE ( `entry` >= 20000 ) AND ( `entry` <= 20008 );
INSERT INTO `trinity_string` VALUES ('20000', '|cffff0000[Ban Announcement]: The character|r |cffffffff[%s]|r |cffff0000was banned for|r %s |cffff0000by the GM|r |cffffffff[%s]|r|cffff0000. The reason is:|r %s', '', '', '', '', '', '', '', '|cffff0000[Объявление Бана]: Персонаж|r |cffffffff[%s]|r |cffff0000был забанен на|r %s |cffff0000ГМом|r |cffffffff[%s]|r|cffff0000. Причина:|r %s');
INSERT INTO `trinity_string` VALUES ('20001', '|cffff0000[Ban Announcement]: The IP|r |cffffffff[%s]|r |cffff0000was banned for|r %s |cffff0000by the GM|r |cffffffff[%s]|r|cffff0000. The reason is:|r %s', '', '', '', '', '', '', '', '|cffff0000[Объявление Бана]: IP адресс|r |cffffffff[%s]|r |cffff0000был забанен на|r %s |cffff0000ГМом|r |cffffffff[%s]|r|cffff0000. Причина:|r %s');
INSERT INTO `trinity_string` VALUES ('20002', '|cffff0000[Ban Announcement]: Account|r |cffffffff[%s]|r |cffff0000was banned for|r %s |cffff0000by the GM|r |cffffffff[%s]|r|cffff0000. The reason is:|r %s', '', '', '', '', '', '', '', '|cffff0000[Объявление Бана]: Аккаунт|r |cffffffff[%s]|r |cffff0000был забанен на|r %s |cffff0000ГМом|r |cffffffff[%s]|r|cffff0000. Причина:|r %s');
INSERT INTO `trinity_string` VALUES ('20003', '|cffff0000[Mute Announcement]: The character|r |cffffffff[%s]|r |cffff0000was muted for|r %s  |cffff0000minutes by the GM|r |cffffffff[%s]|r|cffff0000. The reason is:|r %s', '', '', '', '', '', '', '', '|cffff0000[Объявление Молчи]: Персонаж|r |cffffffff[%s]|r |cffff0000получил молчанку на|r %s  |cffff0000минут от ГМа|r |cffffffff[%s]|r|cffff0000. Причина:|r %s');
INSERT INTO `trinity_string` VALUES ('20004', '|cffff0000[Kick Announcement]: The character|r |cffffffff[%s]|r |cffff0000was kicked by the GM|r |cffffffff [%s]|r|cffff0000.|r', '', '', '', '', '', '', '', '|cffff0000[Объявление Кика]: Персонаж|r |cffffffff[%s]|r |cffff0000был кикнут ГМом|r |cffffffff [%s]|r|cffff0000.|r');
INSERT INTO `trinity_string` VALUES ('20005', 'No reason', '', '', '', '', '', '', '', 'Никакая причина');
INSERT INTO `trinity_string` VALUES ('20006', '|cffff0000[Announcement]: Account deleted:|r |cffff0000%s|r', '', '', '', '', '', '', '', '|cffff0000[Объявление]: Аккаунт удален:|r |cffff0000%s|r');
INSERT INTO `trinity_string` VALUES ('20007', '|cffff0000[Announcement]: Character deleted:|r |cffff0000%s|r |cffff0000Account:|r |cffff0000%s|r', '', '', '', '', '', '', '', '|cffff0000[Объявление]: Персонаж удален:|r |cffff0000%s|r с |cffff0000Аккаунта:|r |cffff0000%s|r');
INSERT INTO `trinity_string` VALUES ('20008', 'permanent', '', '', '', '', '', '', '', 'всегда');
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10478; 
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_script_id`) VALUES 
(10478,0,0, 'I''ll take the flight.',1,1,0,1047800); 
DELETE FROM `gossip_scripts` WHERE `id`=1047800; 
INSERT INTO `gossip_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`) VALUES 
(1047800,0,15,64795,1); 
UPDATE `creature_template` SET `gossip_menu_id`=10478 WHERE `entry`=34244;
DELETE FROM gossip_scripts WHERE id=10478;
SET @TELENPC := 100000;
SET @GOPTION := 30000;
SET @GMENU := @GOPTION;
SET @GSCRIPT := 30000;
SET @NPCTXT := 300000;
DELETE FROM creature_template WHERE entry=@TELENPC;
DELETE FROM gossip_menu WHERE entry=@GMENU OR entry=@GMENU+1 OR entry=@GMENU+2 OR entry=@GMENU+3 OR entry=@GMENU+4 OR entry=@GMENU+5 OR entry=@GMENU+6 OR entry=@GMENU+7 OR entry=@GMENU+8;
DELETE FROM gossip_menu_option WHERE menu_id=@GOPTION OR menu_id=@GOPTION+1 OR menu_id=@GOPTION+2 OR menu_id=@GOPTION+3 OR menu_id=@GOPTION+4 OR menu_id=@GOPTION+5 OR menu_id=@GOPTION+6 OR menu_id=@GOPTION+7 OR menu_id=@GOPTION+8;
DELETE FROM gossip_scripts WHERE id>@GSCRIPT-1 AND id<@GSCRIPT+135;
DELETE FROM npc_text WHERE ID=@NPCTXT OR ID=@NPCTXT+1 OR ID=@NPCTXT+2 OR ID=@NPCTXT+3 OR ID=@NPCTXT+4;
DELETE FROM conditions WHERE SourceTypeOrReferenceId=15 AND SourceGroup>=@GOPTION AND SourceGroup<=@GOPTION+6 AND ConditionTypeOrReference=6 AND (ConditionValue1=469 OR ConditionValue1=67);
DELETE FROM conditions WHERE SourceTypeOrReferenceId=14 AND SourceGroup=@GMENU AND (SourceEntry=@NPCTXT+1 OR SourceEntry=@NPCTXT) AND ConditionTypeOrReference=6 AND (ConditionValue1=469 OR ConditionValue1=67);
INSERT INTO creature_template (entry,modelid1,modelid2,name,IconName,gossip_menu_id,minlevel,maxlevel,Health_mod,Mana_mod,Armor_mod,faction_A,faction_H,npcflag,speed_walk,speed_run,scale,rank,dmg_multiplier,unit_class,unit_flags,type,type_flags,InhabitType,RegenHealth,flags_extra) 
VALUES (@TELENPC,21572,21572,'Мастер Телепортации','Directions',@GMENU,71,71,1.56,1.56,1.56,35,35,3,1,1.14286,1.25,1,1,1,2,7,138936390,3,1,2);
INSERT INTO gossip_menu (entry, text_id) 
VALUES (@GMENU+4, @NPCTXT+3),
(@GMENU+3, @NPCTXT+2),
(@GMENU+2, @NPCTXT+2),
(@GMENU+1, @NPCTXT+2),
(@GMENU+8, @NPCTXT+4),
(@GMENU+7, @NPCTXT+4),
(@GMENU+6, @NPCTXT+4),
(@GMENU+5, @NPCTXT+4),
(@GMENU, @NPCTXT+1),
(@GMENU, @NPCTXT);
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ConditionTypeOrReference, ConditionValue1, Comment) 
VALUES (15, @GOPTION, 1, 6, 469, 'Stormwind'),
(15, @GOPTION+5, 2, 6, 469, 'Dun Morogh'),
(15, @GOPTION+5, 3, 6, 67, 'Tirisfal Glades'),
(15, @GOPTION+5, 4, 6, 67, 'Ghostlands'),
(15, @GOPTION+5, 5, 6, 469, 'Loch modan'),
(15, @GOPTION+5, 6, 6, 67, 'Silverpine Forest'),
(15, @GOPTION+5, 7, 6, 469, 'Westfall'),
(15, @GOPTION+5, 8, 6, 469, 'Redridge mountains'),
(15, @GOPTION+5, 9, 6, 469, 'Duskwood'),
(15, @GOPTION+5, 11, 6, 469, 'Wetlands'),
(15, @GOPTION+6, 0, 6, 469, 'Azuremyst Isle'),
(15, @GOPTION+6, 1, 6, 469, 'Teldrassil'),
(15, @GOPTION+6, 2, 6, 67, 'Durotar'),
(15, @GOPTION+6, 3, 6, 67, 'Mulgore'),
(15, @GOPTION+6, 4, 6, 469, 'Bloodmyst Isle'),
(15, @GOPTION+6, 5, 6, 469, 'Darkshore'),
(15, @GOPTION+6, 6, 6, 67, 'The Barrens'),
(15, @GOPTION+5, 1, 6, 67, 'Eversong Woods'),
(15, @GOPTION+5, 0, 6, 469, 'Elwynn Forest'),
(15, @GOPTION, 2, 6, 67, 'Orgrimmar'),
(15, @GOPTION, 3, 6, 469, 'Darnassus'),
(15, @GOPTION, 4, 6, 469, 'Ironforge'),
(15, @GOPTION, 5, 6, 469, 'Exodar'),
(15, @GOPTION, 6, 6, 67, 'Thunder bluff'),
(15, @GOPTION, 7, 6, 67, 'Undercity'),
(15, @GOPTION, 8, 6, 67, 'Silvermoon city'),
(15, @GOPTION+1, 2, 6, 469, 'The Stockade'),
(15, @GOPTION+1, 3, 6, 67, 'Ragefire Chasm'),
(15, @GOPTION+6, 9, 6, 67, 'Thousand Needles'),
(14, @GMENU, @NPCTXT+1, 6, 469, 'For the Alliance'),
(14, @GMENU, @NPCTXT, 6, 67, 'For ы Horde');
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text) 
VALUES (@GOPTION, 1, 2, 'Штормград', 1, 1, @GOPTION, 0, @GSCRIPT, 0, 0, 'Вы уверены, что вы хотите попасть в Штормград?'),
(@GOPTION, 2, 2, 'Оргриммар', 1, 1, @GOPTION, 0, @GSCRIPT+1, 0, 0, 'Вы уверены, что вы хотите попасть в Оргриммар?'),
(@GOPTION, 3, 2, 'Дарнас', 1, 1, @GOPTION, 0, @GSCRIPT+8, 0, 0, 'Вы уверены, что вы хотите попасть в Дарнас?'),
(@GOPTION, 4, 2, 'Стальгорн', 1, 1, @GOPTION, 0, @GSCRIPT+9, 0, 0, 'Вы уверены, что вы хотите попасть в Стальгорн?'),
(@GOPTION, 5, 2, 'Эксодар', 1, 1, @GOPTION, 0, @GSCRIPT+10, 0, 0, 'Вы уверены, что вы хотите попасть в Эксодар?'),
(@GOPTION, 6, 2, 'Громовой утес', 1, 1, @GOPTION, 0, @GSCRIPT+11, 0, 0, 'Вы уверены, что вы хотите попасть на Громовой утес?'),
(@GOPTION, 7, 2, 'Подгород', 1, 1, @GOPTION, 0, @GSCRIPT+12, 0, 0, 'Вы уверены, что вы хотите попасть в Подгород?'),
(@GOPTION, 8, 2, 'Луносвет', 1, 1, @GOPTION, 0, @GSCRIPT+13, 0, 0, 'Вы уверены, что вы хотите попасть в Луносвет?'),
(@GOPTION, 9, 2, 'Даларан', 1, 1, @GOPTION, 0, @GSCRIPT+5, 0, 0, 'Вы уверены, что вы хотите попасть в Даларан?'),
(@GOPTION, 10, 2, 'Шаттрат', 1, 1, @GOPTION, 0, @GSCRIPT+3, 0, 0, 'Вы уверены, что вы хотите попасть в Шаттрат?'),
(@GOPTION, 11, 2, 'Пиратская бухта', 1, 1, @GOPTION, 0, @GSCRIPT+2, 0, 0, 'Вы уверены, что вы хотите попасть в Пиратскую бухту?'),
(@GOPTION, 12, 2, 'Арена Гурубаши', 1, 1, @GOPTION, 0, @GSCRIPT+6, 0, 0, 'Вы уверены, что вы хотите попасть на Арену Гурубаши?'),
(@GOPTION, 13, 3, 'Восточные королевства', 1, 1, @GOPTION+5, 0, 0, 0, 0, NULL),
(@GOPTION, 14, 3, 'Калимдор', 1, 1, @GOPTION+6, 0, 0, 0, 0, NULL),
(@GOPTION, 15, 3, 'Запределье', 1, 1, @GOPTION+7, 0, 0, 0, 0, NULL),
(@GOPTION, 16, 3, 'Нордскол', 1, 1, @GOPTION+8, 0, 0, 0, 0, NULL),
(@GOPTION, 17, 9, 'Классические подземелья', 1, 1, @GOPTION+1, 0, 0, 0, 0, NULL),
(@GOPTION, 18, 9, 'Подземелья BC', 1, 1, @GOPTION+2, 0, 0, 0, 0, NULL),
(@GOPTION, 19, 9, 'Подземелья WotLK', 1, 1, @GOPTION+3, 0, 0, 0, 0, NULL),
(@GOPTION, 20, 9, 'Рейдовые телепоры', 1, 1, @GOPTION+4, 0, 0, 0, 0, NULL),
(@GOPTION+1, 0, 2, 'Гномреган', 1, 1, 0, 0, @GSCRIPT+14, 0, 0, 'Вы уверены, что вы хотите попасть в Гномреган?'),
(@GOPTION+1, 1, 2, 'Мертвые копи', 1, 1, 0, 0, @GSCRIPT+15, 0, 0, 'Вы уверены, что вы хотите попасть в Мертвые копи?'),
(@GOPTION+1, 2, 2, 'Тюрьма', 1, 1, 0, 0, @GSCRIPT+16, 0, 0, 'Вы уверены, что вы хотите попасть в Тюрьму?'),
(@GOPTION+1, 3, 2, 'Огненная пропасть', 1, 1, 0, 0, @GSCRIPT+17, 0, 0, 'Вы уверены, что вы хотите попасть в Огненная пропасть?'),
(@GOPTION+1, 4, 2, 'Лабиринты Иглошкурых', 1, 1, 0, 0, @GSCRIPT+18, 0, 0, 'Вы уверены, что вы хотите попасть в Лабиринты Иглошкурых?'),
(@GOPTION+1, 5, 2, 'Курганы иглошкурых', 1, 1, 0, 0, @GSCRIPT+19, 0, 0, 'Вы уверены, что вы хотите попасть в Курганы иглошкурых?'),
(@GOPTION+1, 6, 2, 'Монастырь Алого ордена', 1, 1, 0, 0, @GSCRIPT+20, 0, 0, 'Вы уверены, что вы хотите попасть в Монастырь Алого ордена?'),
(@GOPTION+1, 7, 2, 'Крепость Темного клыка', 1, 1, 0, 0, @GSCRIPT+21, 0, 0, 'Вы уверены, что вы хотите попасть в Крепость Темного клыка?'),
(@GOPTION+1, 8, 2, 'Пещеры стенаний', 1, 1, 0, 0, @GSCRIPT+22, 0, 0, 'Вы уверены, что вы хотите попасть в Пещеры стенаний?'),
(@GOPTION+1, 9, 2, 'Непроглядная пучина', 1, 1, 0, 0, @GSCRIPT+23, 0, 0, 'Вы уверены, что вы хотите попасть в Непроглядную пучину?'),
(@GOPTION+1, 10, 2, 'Глубины Черной горы', 1, 1, 0, 0, @GSCRIPT+24, 0, 0, 'Вы уверены, что вы хотите попасть в Глубины Черной горы?'),
(@GOPTION+1, 11, 2, 'Пик Черной горы', 1, 1, 0, 0, @GSCRIPT+25, 0, 0, 'Вы уверены, что вы хотите попасть на Пик Черной горы?'),
(@GOPTION+1, 12, 2, 'Забытый Город', 1, 1, 0, 0, @GSCRIPT+26, 0, 0, 'Вы уверены, что вы хотите попасть в Забытый город?'),
(@GOPTION+1, 13, 2, 'Мародон', 1, 1, 0, 0, @GSCRIPT+27, 0, 0, 'Вы уверены, что вы хотите попасть в Мародон?'),
(@GOPTION+1, 14, 2, 'Некроситет', 1, 1, 0, 0, @GSCRIPT+28, 0, 0, 'Вы уверены, что вы хотите попасть в Некроситет?'),
(@GOPTION+1, 15, 2, 'Стратхольм', 1, 1, 0, 0, @GSCRIPT+29, 0, 0, 'Вы уверены, что вы хотите попасть в Стратхольм?'),
(@GOPTION+1, 16, 2, 'Храм Атал\'Хаккара', 1, 1, 0, 0, @GSCRIPT+30, 0, 0, 'Вы уверены, что вы хотите попасть в Храм Атал\'Хаккара?'),
(@GOPTION+1, 17, 2, 'Ульдаман', 1, 1, 0, 0, @GSCRIPT+31, 0, 0, 'Вы уверены, что вы хотите попасть в Ульдаман?'),
(@GOPTION+1, 18, 2, 'Зуль\'Фаррак', 1, 1, 0, 0, @GSCRIPT+32, 0, 0, 'Вы уверены, что вы хотите попасть в Зуль\'Фаррак?'),
(@GOPTION+1, 19, 7, 'Назад...', 1, 1, @GOPTION, 0, 0, 0, 0, NULL),
(@GOPTION+2, 0, 2, 'Аункидоин', 1, 1, 0, 0, @GSCRIPT+33, 0, 0, 'Вы уверены, что вы хотите попасть в Аункидоин?'),
(@GOPTION+2, 1, 2, 'Пещеры времени', 1, 1, 0, 0, @GSCRIPT+34, 0, 0, 'Вы уверены, что вы хотите попасть в Пещеры времени?'),
(@GOPTION+2, 2, 2, 'Резервуар Кривого клыка', 1, 1, 0, 0, @GSCRIPT+35, 0, 0, 'Вы уверены, что вы хотите попасть в Резервуар Кривого клыка?'),
(@GOPTION+2, 3, 2, 'Цитадель Адского Пламени', 1, 1, 0, 0, @GSCRIPT+36, 0, 0, 'Вы уверены, что вы хотите попасть в Цитадель Адского Пламени?'),
(@GOPTION+2, 4, 2, 'Терраса Магистров', 1, 1, 0, 0, @GSCRIPT+37, 0, 0, 'Вы уверены, что вы хотите попасть на Террасу Магистров?'),
(@GOPTION+2, 5, 2, 'Крепость Бурь', 1, 1, 0, 0, @GSCRIPT+38, 0, 0, 'Вы уверены, что вы хотите попасть в Крепость Бурь?'),
(@GOPTION+2, 6, 7, 'Назад...', 1, 1, @GOPTION, 0, 0, 0, 0, NULL),
(@GOPTION+3, 0, 2, 'Азжол-Неруб', 1, 1, 0, 0, @GSCRIPT+39, 0, 0, 'Вы уверены, что вы хотите попасть в Азжол-Неруб?'),
(@GOPTION+3, 1, 2, 'Пещеры времени: Очищение Стратхольма', 1, 1, 0, 0, @GSCRIPT+40, 0, 0, 'Вы уверены, что вы хотите попасть в Пещеры времени: Очищение Стратхольма?'),
(@GOPTION+3, 2, 2, 'Испытание Чемпиона', 1, 1, 0, 0, @GSCRIPT+41, 0, 0, 'Вы уверены, что вы хотите попасть на Испытание Чемпиона?'),
(@GOPTION+3, 3, 2, 'Крепость Драк\'Тарон', 1, 1, 0, 0, @GSCRIPT+42, 0, 0, 'Вы уверены, что вы хотите попасть в Крепость Драк\'Тарон?'),
(@GOPTION+3, 4, 2, 'Гундрак', 1, 1, 0, 0, @GSCRIPT+43, 0, 0, 'Вы уверены, что вы хотите попасть в Гундрак?'),
(@GOPTION+3, 5, 2, 'Подземелья Ледяной Короны', 1, 1, 0, 0, @GSCRIPT+44, 0, 0, 'Вы уверены, что вы хотите попасть в Подземелья Ледяной Короны?'),
(@GOPTION+3, 6, 2, 'Нексус', 1, 1, 0, 0, @GSCRIPT+45, 0, 0, 'Вы уверены, что вы хотите попасть в Нексус?'),
(@GOPTION+3, 7, 2, 'Аметистовая крепость', 1, 1, 0, 0, @GSCRIPT+46, 0, 0, 'Вы уверены, что вы хотите попасть в Аметистовую крепость?'),
(@GOPTION+3, 8, 2, 'Чертоги молний', 1, 1, 0, 0, @GSCRIPT+47, 0, 0, 'Вы уверены, что вы хотите попасть в Чертоги молний?'),
(@GOPTION+3, 9, 2, 'Чертоги камня', 1, 1, 0, 0, @GSCRIPT+48, 0, 0, 'Вы уверены, что вы хотите попасть в Чертоги камня?'),
(@GOPTION+3, 10, 2, 'Крепость Утгард', 1, 1, 0, 0, @GSCRIPT+49, 0, 0, 'Вы уверены, что вы хотите попасть в Крепость Утгард?'),
(@GOPTION+3, 11, 2, 'Вершина Утгард', 1, 1, 0, 0, @GSCRIPT+50, 0, 0, 'Вы уверены, что вы хотите попасть на Вершину Утгард?'),
(@GOPTION+3, 12, 7, 'Назад...', 1, 1, @GOPTION, 0, 0, 0, 0, NULL),
(@GOPTION+4, 0, 2, 'Черный храм', 1, 1, 0, 0, @GSCRIPT+51, 0, 0, 'Вы уверены, что вы хотите попасть в Черный храм?'),
(@GOPTION+4, 1, 2, 'Логово крыла тьмы', 1, 1, 0, 0, @GSCRIPT+52, 0, 0, 'Вы уверены, что вы хотите попасть в Логово крыла тьмы?'),
(@GOPTION+4, 2, 2, 'Вершина Хиджала', 1, 1, 0, 0, @GSCRIPT+53, 0, 0, 'Вы уверены, что вы хотите попасть на Вершину Хиджала?'),
(@GOPTION+4, 3, 2, 'Змеиное святилище', 1, 1, 0, 0, @GSCRIPT+54, 0, 0, 'Вы уверены, что вы хотите попасть в Змеиное святилище?'),
(@GOPTION+4, 4, 2, 'Испытание крестоносца', 1, 1, 0, 0, @GSCRIPT+55, 0, 0, 'Вы уверены, что вы хотите попасть на Испытание крестоносца?'),
(@GOPTION+4, 5, 2, 'Логово Груула', 1, 1, 0, 0, @GSCRIPT+56, 0, 0, 'Вы уверены, что вы хотите попасть в Логово Груула?'),
(@GOPTION+4, 6, 2, 'Логово Матгеридона', 1, 1, 0, 0, @GSCRIPT+57, 0, 0, 'Вы уверены, что вы хотите попасть в Логово Матгеридона?'),
(@GOPTION+4, 7, 2, 'Цитадель Ледяной Короны', 1, 1, 0, 0, @GSCRIPT+58, 0, 0, 'Вы уверены, что вы хотите попасть в Цитадель Ледяной Короны?'),
(@GOPTION+4, 8, 2, 'Каражан', 1, 1, 0, 0, @GSCRIPT+59, 0, 0, 'Вы уверены, что вы хотите попасть в Каражан?'),
(@GOPTION+4, 9, 2, 'Огненные недра', 1, 1, 0, 0, @GSCRIPT+60, 0, 0, 'Вы уверены, что вы хотите попасть в Огненные недра?'),
(@GOPTION+4, 10, 2, 'Наксрамас', 1, 1, 0, 0, @GSCRIPT+61, 0, 0, 'Вы уверены, что вы хотите попасть в Наксрамас?'),
(@GOPTION+4, 11, 2, 'Логово Ониксии', 1, 1, 0, 0, @GSCRIPT+62, 0, 0, 'Вы уверены, что вы хотите попасть в Логово Ониксии?'),
(@GOPTION+4, 12, 2, 'Руины Ан\'Киража', 1, 1, 0, 0, @GSCRIPT+63, 0, 0, 'Вы уверены, что вы хотите попасть в Руины Ан\'Киража'),
(@GOPTION+4, 13, 2, 'Плато солнечного колодца', 1, 1, 0, 0, @GSCRIPT+64, 0, 0, 'Вы уверены, что вы хотите попасть на Плато солнечного колодца?'),
(@GOPTION+4, 14, 2, 'Око', 1, 1, 0, 0, @GSCRIPT+65, 0, 0, 'Вы уверены, что вы хотите попасть в Око?'),
(@GOPTION+4, 15, 2, 'Храм Ан\'Кираж', 1, 1, 0, 0, @GSCRIPT+66, 0, 0, 'Вы уверены, что вы хотите попасть в Храм Ан\'Кираж?'),
(@GOPTION+4, 16, 2, 'Око вечности', 1, 1, 0, 0, @GSCRIPT+67, 0, 0, 'Вы уверены, что вы хотите попасть в Око вечности?'),
(@GOPTION+4, 17, 2, 'Обсидиановое святилище', 1, 1, 0, 0, @GSCRIPT+68, 0, 0, 'Вы уверены, что вы хотите попасть в Обсидиановое святилище?'),
(@GOPTION+4, 18, 2, 'Ульдуар', 1, 1, 0, 0, @GSCRIPT+69, 0, 0, 'Вы уверены, что вы хотите попасть в Ульдуар?'),
(@GOPTION+4, 19, 2, 'Склеп Аркавона', 1, 1, 0, 0, @GSCRIPT+70, 0, 0, 'Вы уверены, что вы хотите попасть в Склеп Аркавона?'),
(@GOPTION+4, 21, 2, 'Зул\'Гуруб', 1, 1, 0, 0, @GSCRIPT+72, 0, 0, 'Вы уверены, что вы хотите попасть в Зул\'Гуруб?'),
(@GOPTION+4, 22, 2, 'Зул\'Аман', 1, 1, 0, 0, @GSCRIPT+73, 0, 0, 'Вы уверены, что вы хотите попасть в Зул\'Аман?'),
(@GOPTION+4, 23, 7, 'Назад...', 1, 1, @GOPTION, 0, 0, 0, 0, NULL),
(@GOPTION+5, 0, 2, 'Элвиннский Лес', 1, 1, 0, 0, @GSCRIPT+74, 0, 0, 'Вы уверены, что вы хотите попасть в Элвиннский Лес?'),
(@GOPTION+5, 1, 2, 'Леса Вечной Песни', 1, 1, 0, 0, @GSCRIPT+75, 0, 0, 'Вы уверены, что вы хотите попасть в Леса Вечной Песни?'),
(@GOPTION+5, 2, 2, 'Дун Морог', 1, 1, 0, 0, @GSCRIPT+76, 0, 0, 'Вы уверены, что вы хотите попасть в Дун Морог?'),
(@GOPTION+5, 3, 2, 'Тирисфальские Леса', 1, 1, 0, 0, @GSCRIPT+77, 0, 0, 'Вы уверены, что вы хотите попасть в Тирисфальские Леса?'),
(@GOPTION+5, 4, 2, 'Призрачные Земли', 1, 1, 0, 0, @GSCRIPT+78, 0, 0, 'Вы уверены, что вы хотите попасть в Призрачные Земли?'),
(@GOPTION+5, 5, 2, 'Лок Модан', 1, 1, 0, 0, @GSCRIPT+79, 0, 0, 'Вы уверены, что вы хотите попасть в Лок Модан?'),
(@GOPTION+5, 6, 2, 'Серебрянный Бор', 1, 1, 0, 0, @GSCRIPT+80, 0, 0, 'Вы уверены, что вы хотите попасть в Серебрянный Бор?'),
(@GOPTION+5, 7, 2, 'Западный край', 1, 1, 0, 0, @GSCRIPT+81, 0, 0, 'Вы уверены, что вы хотите попасть в Западный край?'),
(@GOPTION+5, 8, 2, 'Красногорье', 1, 1, 0, 0, @GSCRIPT+82, 0, 0, 'Вы уверены, что вы хотите попасть в Красногорье?'),
(@GOPTION+5, 9, 2, 'Темнолесье', 1, 1, 0, 0, @GSCRIPT+83, 0, 0, 'Вы уверены, что вы хотите попасть в Темнолесье?'),
(@GOPTION+5, 10, 2, 'Предгорья Хилсбрада', 1, 1, 0, 0, @GSCRIPT+84, 0, 0, 'Вы уверены, что вы хотите попасть в Предгорья Хилсбрада?'),
(@GOPTION+5, 11, 2, 'Болотина', 1, 1, 0, 0, @GSCRIPT+85, 0, 0, 'Вы уверены, что вы хотите попасть в Болотину?'),
(@GOPTION+5, 12, 2, 'Альтеракские горы', 1, 1, 0, 0, @GSCRIPT+86, 0, 0, 'Вы уверены, что вы хотите попасть в Альтеракские горы?'),
(@GOPTION+5, 13, 2, 'Нагорье Арати', 1, 1, 0, 0, @GSCRIPT+87, 0, 0, 'Вы уверены, что вы хотите попасть на Нагорье Арати?'),
(@GOPTION+5, 14, 2, 'Тернистая долина', 1, 1, 0, 0, @GSCRIPT+88, 0, 0, 'Вы уверены, что вы хотите попасть в Тернистую долину?'),
(@GOPTION+5, 15, 2, 'Бесплодные земли', 1, 1, 0, 0, @GSCRIPT+89, 0, 0, 'Вы уверены, что вы хотите попасть в Бесплодные земли?'),
(@GOPTION+5, 16, 2, 'Болото печали', 1, 1, 0, 0, @GSCRIPT+90, 0, 0, 'Вы уверены, что вы хотите попасть на Болото печали?'),
(@GOPTION+5, 17, 2, 'Внутренние земли', 1, 1, 0, 0, @GSCRIPT+91, 0, 0, 'Вы уверены, что вы хотите попасть во Внутренние земли?'),
(@GOPTION+5, 18, 2, 'Тлеющее ущелье', 1, 1, 0, 0, @GSCRIPT+92, 0, 0, 'Вы уверены, что вы хотите попасть в Тлеющее ущелье?'),
(@GOPTION+5, 19, 2, 'Выжженные земли', 1, 1, 0, 0, @GSCRIPT+93, 0, 0, 'Вы уверены, что вы хотите попасть на Выжженные земли?'),
(@GOPTION+5, 20, 2, 'Пылающие степи', 1, 1, 0, 0, @GSCRIPT+94, 0, 0, 'Вы уверены, что вы хотите попасть в Пылающие степи?'),
(@GOPTION+5, 21, 2, 'Западные Чумные земли', 1, 1, 0, 0, @GSCRIPT+95, 0, 0, 'Вы уверены, что вы хотите попасть в Западные Чумные земли?'),
(@GOPTION+5, 22, 2, 'Восточные Чумные земли', 1, 1, 0, 0, @GSCRIPT+96, 0, 0, 'Вы уверены, что вы хотите попасть в Восточные Чумные земли?'),
(@GOPTION+5, 23, 2, 'Остров Кель\'Данас', 1, 1, 0, 0, @GSCRIPT+97, 0, 0, 'Вы уверены, что вы хотите попасть на Остров Кель\'Данас?'),
(@GOPTION+5, 24, 7, 'Назад...', 1, 1, @GOPTION, 0, 0, 0, 0, NULL),
(@GOPTION+6, 0, 2, 'Остров лазурной дымки', 1, 1, 0, 0, @GSCRIPT+98, 0, 0, 'Вы уверены, что вы хотите попасть на Остров лазурной дымки?'),
(@GOPTION+6, 1, 2, 'Тельдрассил', 1, 1, 0, 0, @GSCRIPT+99, 0, 0, 'Вы уверены, что вы хотите попасть в Тельдрассил?'),
(@GOPTION+6, 2, 2, 'Дуротар', 1, 1, 0, 0, @GSCRIPT+100, 0, 0, 'Вы уверены, что вы хотите попасть в Дуротар?'),
(@GOPTION+6, 3, 2, 'Мулгор', 1, 1, 0, 0, @GSCRIPT+101, 0, 0, 'Вы уверены, что вы хотите попасть в Мулгор?'),
(@GOPTION+6, 4, 2, 'Остров кровавой дымки', 1, 1, 0, 0, @GSCRIPT+102, 0, 0, 'Вы уверены, что вы хотите попасть на Остров кровавой дымки?'),
(@GOPTION+6, 5, 2, 'Темные берега', 1, 1, 0, 0, @GSCRIPT+103, 0, 0, 'Вы уверены, что вы хотите попасть на Темные берега?'),
(@GOPTION+6, 6, 2, 'Степи', 1, 1, 0, 0, @GSCRIPT+104, 0, 0, 'Вы уверены, что вы хотите попасть в Степи?'),
(@GOPTION+6, 7, 2, 'Когтистые горы', 1, 1, 0, 0, @GSCRIPT+105, 0, 0, 'Вы уверены, что вы хотите попасть на Когтистые горы?'),
(@GOPTION+6, 8, 2, 'Ясеневый лес', 1, 1, 0, 0, @GSCRIPT+106, 0, 0, 'Вы уверены, что вы хотите попасть в Ясеневый лес?'),
(@GOPTION+6, 9, 2, 'Тысяча игл', 1, 1, 0, 0, @GSCRIPT+107, 0, 0, 'Вы уверены, что вы хотите попасть в Тысяча игл?'),
(@GOPTION+6, 10, 2, 'Пустоши', 1, 1, 0, 0, @GSCRIPT+108, 0, 0, 'Вы уверены, что вы хотите попасть в Пустоши?'),
(@GOPTION+6, 11, 2, 'Пылевые топи', 1, 1, 0, 0, @GSCRIPT+109, 0, 0, 'Вы уверены, что вы хотите попасть в Пылевые топи?'),
(@GOPTION+6, 12, 2, 'Фералас', 1, 1, 0, 0, @GSCRIPT+110, 0, 0, 'Вы уверены, что вы хотите попасть в Фералас?'),
(@GOPTION+6, 13, 2, 'Танарис', 1, 1, 0, 0, @GSCRIPT+111, 0, 0, 'Вы уверены, что вы хотите попасть в Танарис?'),
(@GOPTION+6, 14, 2, 'Азшара', 1, 1, 0, 0, @GSCRIPT+112, 0, 0, 'Вы уверены, что вы хотите попасть в Азшару?'),
(@GOPTION+6, 15, 2, 'Оскверненный лес', 1, 1, 0, 0, @GSCRIPT+113, 0, 0, 'Вы уверены, что вы хотите попасть в Оскверненный лес?'),
(@GOPTION+6, 16, 2, 'Кратер Ун\'Горо', 1, 1, 0, 0, @GSCRIPT+114, 0, 0, 'Вы уверены, что вы хотите попасть в Кратер Ун\'Горо?'),
(@GOPTION+6, 17, 2, 'Силитус', 1, 1, 0, 0, @GSCRIPT+115, 0, 0, 'Вы уверены, что вы хотите попасть в Силитус?'),
(@GOPTION+6, 18, 2, 'Зимние ключи', 1, 1, 0, 0, @GSCRIPT+116, 0, 0, 'Вы уверены, что вы хотите попасть на Зимние ключи?'),
(@GOPTION+6, 19, 7, 'Назад...', 1, 1, @GOPTION, 0, 0, 0, 0, NULL),
(@GOPTION+7, 0, 2, 'Полуостров Адского пламени', 1, 1, 0, 0, @GSCRIPT+117, 0, 0, 'Вы уверены, что вы хотите попасть на Полуостров Адского пламени?'),
(@GOPTION+7, 1, 2, 'Зангартопь', 1, 1, 0, 0, @GSCRIPT+118, 0, 0, 'Вы уверены, что вы хотите попасть в Зангартопь?'),
(@GOPTION+7, 2, 2, 'Лес Тероккар', 1, 1, 0, 0, @GSCRIPT+119, 0, 0, 'Вы уверены, что вы хотите попасть в Лес Тероккар?'),
(@GOPTION+7, 3, 2, 'Награнд', 1, 1, 0, 0, @GSCRIPT+120, 0, 0, 'Вы уверены, что вы хотите попасть в Награнд?'),
(@GOPTION+7, 4, 2, 'Острогорье', 1, 1, 0, 0, @GSCRIPT+121, 0, 0, 'Вы уверены, что вы хотите попасть в Острогорье?'),
(@GOPTION+7, 5, 2, 'Пустоверть', 1, 1, 0, 0, @GSCRIPT+122, 0, 0, 'Вы уверены, что вы хотите попасть в Пустоверть?'),
(@GOPTION+7, 6, 2, 'Долина призрачной луны', 1, 1, 0, 0, @GSCRIPT+123, 0, 0, 'Вы уверены, что вы хотите попасть в Долину призрачной луны?'),
(@GOPTION+7, 7, 7, 'Назад...', 1, 1, @GOPTION, 0, 0, 0, 0, NULL),
(@GOPTION+8, 0, 2, 'Борейская тундра', 1, 1, 0, 0, @GSCRIPT+124, 0, 0, 'Вы уверены, что вы хотите попасть в Борейскую тундру?'),
(@GOPTION+8, 1, 2, 'Ревущий фьорд', 1, 1, 0, 0, @GSCRIPT+125, 0, 0, 'Вы уверены, что вы хотите попасть в Ревущий фьорд?'),
(@GOPTION+8, 2, 2, 'Драконий погост', 1, 1, 0, 0, @GSCRIPT+126, 0, 0, 'Вы уверены, что вы хотите попасть на Драконий погост?'),
(@GOPTION+8, 3, 2, 'Седые холмы', 1, 1, 0, 0, @GSCRIPT+127, 0, 0, 'Вы уверены, что вы хотите попасть на Седые холмы?'),
(@GOPTION+8, 4, 2, 'Зул\'Драк', 1, 1, 0, 0, @GSCRIPT+128, 0, 0, 'Вы уверены, что вы хотите попасть в Зул\'Драк?'),
(@GOPTION+8, 5, 2, 'Низина Шолазар', 1, 1, 0, 0, @GSCRIPT+129, 0, 0, 'Вы уверены, что вы хотите попасть в Низина Шолазар?'),
(@GOPTION+8, 6, 2, 'Хрустальная песня', 1, 1, 0, 0, @GSCRIPT+130, 0, 0, 'Вы уверены, что вы хотите попасть в Хрустальная песня?'),
(@GOPTION+8, 7, 2, 'Грозовая гряда', 1, 1, 0, 0, @GSCRIPT+132, 0, 0, 'Вы уверены, что вы хотите попасть в Грозовую гряду?'),
(@GOPTION+8, 8, 2, 'Ледяная корона', 1, 1, 0, 0, @GSCRIPT+133, 0, 0, 'Вы уверены, что вы хотите попасть в Ледяную корону?'),
(@GOPTION+8, 9, 2, 'Озеро ледяных оков', 1, 1, 0, 0, @GSCRIPT+134, 0, 0, 'Вы уверены, что вы хотите попасть на Озеро ледяных оков?'),
(@GOPTION+8, 10, 7, 'Назад...', 1, 1, @GOPTION, 0, 0, 0, 0, NULL);
INSERT INTO npc_text (ID, text0_0, em0_1) 
VALUES (@NPCTXT+4, 'Куда бы ты хотел попасть?$B', 0),
(@NPCTXT+3, 'Будь осторожен в выборе подземелья.$B', 0),
(@NPCTXT+2, 'Подземелья:?$B', 0),
(@NPCTXT+1, 'За Альянс!$B', 6),
(@NPCTXT, 'За Орду!$B', 6);
INSERT INTO gossip_scripts (id, delay, command, datalong, datalong2, dataint, x, y, z, o) 
VALUES (@GSCRIPT, 0, 6, 0, 0, 0, -8842.09, 626.358, 94.0867, 3.61363),
(@GSCRIPT+1, 0, 6, 1, 0, 0, 1601.08, -4378.69, 9.9846, 2.14362),
(@GSCRIPT+2, 0, 6, 0, 0, 0, -14281.9, 552.564, 8.90422, 0.860144),
(@GSCRIPT+3, 0, 6, 530, 0, 0, -1887.62, 5359.09, -12.4279, 4.40435),
(@GSCRIPT+5, 0, 6, 571, 0, 0, 5809.55, 503.975, 657.526, 2.38338),
(@GSCRIPT+6, 0, 6, 0, 0, 0, -13181.8, 339.356, 42.9805, 1.18013),
(@GSCRIPT+8, 0, 6, 1, 0, 0, 9869.91, 2493.58, 1315.88, 2.78897),
(@GSCRIPT+9, 0, 6, 0, 0, 0, -4919.94, -982.083, 501.46, 5.12894),
(@GSCRIPT+10, 0, 6, 530, 0, 0, -3864.92, -11643.7, -137.644, 5.50862),
(@GSCRIPT+11, 0, 6, 1, 0, 0, -1274.45, 71.8601, 128.159, 2.80623),
(@GSCRIPT+12, 0, 6, 0, 0, 0, 1633.75, 240.167, -43.1034, 6.26128),
(@GSCRIPT+13, 0, 6, 530, 0, 0, 9738.28, -7454.19, 13.5605, 0.043914),
(@GSCRIPT+14, 0, 6, 0, 0, 0, -5163.54, 925.423, 257.181, 1.57423),
(@GSCRIPT+15, 0, 6, 0, 0, 0, -11209.6, 1666.54, 24.6974, 1.42053),
(@GSCRIPT+16, 0, 6, 0, 0, 0, -8799.15, 832.718, 97.6348, 6.04085),
(@GSCRIPT+17, 0, 6, 1, 0, 0, 1811.78, -4410.5, -18.4704, 5.20165),
(@GSCRIPT+18, 0, 6, 1, 0, 0, -4657.3, -2519.35, 81.0529, 4.54808),
(@GSCRIPT+19, 0, 6, 1, 0, 0, -4470.28, -1677.77, 81.3925, 1.16302),
(@GSCRIPT+20, 0, 6, 0, 0, 0, 2873.15, -764.523, 160.332, 5.10447),
(@GSCRIPT+21, 0, 6, 0, 0, 0, -234.675, 1561.63, 76.8921, 1.24031),
(@GSCRIPT+22, 0, 6, 1, 0, 0, -731.607, -2218.39, 17.0281, 2.78486),
(@GSCRIPT+23, 0, 6, 1, 0, 0, 4249.99, 740.102, -25.671, 1.34062),
(@GSCRIPT+24, 0, 6, 0, 0, 0, -7179.34, -921.212, 165.821, 5.09599),
(@GSCRIPT+25, 0, 6, 0, 0, 0, -7527.05, -1226.77, 285.732, 5.29626),
(@GSCRIPT+26, 0, 6, 1, 0, 0, -3520.14, 1119.38, 161.025, 4.70454),
(@GSCRIPT+27, 0, 6, 1, 0, 0, -1421.42, 2907.83, 137.415, 1.70718),
(@GSCRIPT+28, 0, 6, 0, 0, 0, 1269.64, -2556.21, 93.6088, 0.620623),
(@GSCRIPT+29, 0, 6, 0, 0, 0, 3352.92, -3379.03, 144.782, 6.25978),
(@GSCRIPT+30, 0, 6, 0, 0, 0, -10177.9, -3994.9, -111.239, 6.01885),
(@GSCRIPT+31, 0, 6, 0, 0, 0, -6071.37, -2955.16, 209.782, 0.015708),
(@GSCRIPT+32, 0, 6, 1, 0, 0, -6801.19, -2893.02, 9.00388, 0.158639),
(@GSCRIPT+33, 0, 6, 530, 0, 0, -3324.49, 4943.45, -101.239, 4.63901),
(@GSCRIPT+34, 0, 6, 1, 0, 0, -8369.65, -4253.11, -204.272, -2.70526),
(@GSCRIPT+35, 0, 6, 530, 0, 0, 738.865, 6865.77, -69.4659, 6.27655),
(@GSCRIPT+36, 0, 6, 530, 0, 0, -347.29, 3089.82, 21.394, 5.68114),
(@GSCRIPT+37, 0, 6, 530, 0, 0, 12884.6, -7317.69, 65.5023, 4.799),
(@GSCRIPT+38, 0, 6, 530, 0, 0, 3100.48, 1536.49, 190.3, 4.62226),
(@GSCRIPT+39, 0, 6, 571, 0, 0, 3707.86, 2150.23, 36.76, 3.22),
(@GSCRIPT+40, 0, 6, 1, 0, 0, -8756.39, -4440.68, -199.489, 4.66289),
(@GSCRIPT+41, 0, 6, 571, 0, 0, 8590.95, 791.792, 558.235, 3.13127),
(@GSCRIPT+42, 0, 6, 571, 0, 0, 4765.59, -2038.24, 229.363, 0.887627),
(@GSCRIPT+43, 0, 6, 571, 0, 0, 6722.44, -4640.67, 450.632, 3.91123),
(@GSCRIPT+44, 0, 6, 571, 0, 0, 5643.16, 2028.81, 798.274, 4.60242),
(@GSCRIPT+45, 0, 6, 571, 0, 0, 3782.89, 6965.23, 105.088, 6.14194),
(@GSCRIPT+46, 0, 6, 571, 0, 0, 5693.08, 502.588, 652.672, 4.0229),
(@GSCRIPT+47, 0, 6, 571, 0, 0, 9136.52, -1311.81, 1066.29, 5.19113),
(@GSCRIPT+48, 0, 6, 571, 0, 0, 8922.12, -1009.16, 1039.56, 1.57044),
(@GSCRIPT+49, 0, 6, 571, 0, 0, 1203.41, -4868.59, 41.2486, 0.283237),
(@GSCRIPT+50, 0, 6, 571, 0, 0, 1267.24, -4857.3, 215.764, 3.22768),
(@GSCRIPT+51, 0, 6, 530, 0, 0, -3649.92, 317.469, 35.2827, 2.94285),
(@GSCRIPT+52, 0, 6, 229, 0, 0, 152.451, -474.881, 116.84, 0.001073),
(@GSCRIPT+53, 0, 6, 1, 0, 0, -8177.89, -4181.23, -167.552, 0.913338),
(@GSCRIPT+54, 0, 6, 530, 0, 0, 797.855, 6865.77, -65.4165, 0.005938),
(@GSCRIPT+55, 0, 6, 571, 0, 0, 8515.61, 714.153, 558.248, 1.57753),
(@GSCRIPT+56, 0, 6, 530, 0, 0, 3530.06, 5104.08, 3.50861, 5.51117),
(@GSCRIPT+57, 0, 6, 530, 0, 0, -336.411, 3130.46, -102.928, 5.20322),
(@GSCRIPT+58, 0, 6, 571, 0, 0, 5855.22, 2102.03, 635.991, 3.57899),
(@GSCRIPT+59, 0, 6, 0, 0, 0, -11118.9, -2010.33, 47.0819, 0.649895),
(@GSCRIPT+60, 0, 6, 230, 0, 0, 1126.64, -459.94, -102.535, 3.46095),
(@GSCRIPT+61, 0, 6, 571, 0, 0, 3668.72, -1262.46, 243.622, 4.785),
(@GSCRIPT+62, 0, 6, 1, 0, 0, -4708.27, -3727.64, 54.5589, 3.72786),
(@GSCRIPT+63, 0, 6, 1, 0, 0, -8409.82, 1499.06, 27.7179, 2.51868),
(@GSCRIPT+64, 0, 6, 530, 0, 0, 12574.1, -6774.81, 15.0904, 3.13788),
(@GSCRIPT+65, 0, 6, 530, 0, 0, 3088.49, 1381.57, 184.863, 4.61973),
(@GSCRIPT+66, 0, 6, 1, 0, 0, -8240.09, 1991.32, 129.072, 0.941603),
(@GSCRIPT+67, 0, 6, 571, 0, 0, 3784.17, 7028.84, 161.258, 5.79993),
(@GSCRIPT+68, 0, 6, 571, 0, 0, 3472.43, 264.923, -120.146, 3.27923),
(@GSCRIPT+69, 0, 6, 571, 0, 0, 9222.88, -1113.59, 1216.12, 6.27549),
(@GSCRIPT+70, 0, 6, 571, 0, 0, 5453.72, 2840.79, 421.28, 0),
(@GSCRIPT+72, 0, 6, 0, 0, 0, -11916.7, -1215.72, 92.289, 4.72454),
(@GSCRIPT+73, 0, 6, 530, 0, 0, 6851.78, -7972.57, 179.242, 4.64691),
(@GSCRIPT+74, 0, 6, 0, 0, 0, -9449.06, 64.8392, 56.3581, 3.07047),
(@GSCRIPT+75, 0, 6, 530, 0, 0, 9024.37, -6682.55, 16.8973, 3.14131),
(@GSCRIPT+76, 0, 6, 0, 0, 0, -5603.76, -482.704, 396.98, 5.23499),
(@GSCRIPT+77, 0, 6, 0, 0, 0, 2274.95, 323.918, 34.1137, 4.24367),
(@GSCRIPT+78, 0, 6, 530, 0, 0, 7595.73, -6819.6, 84.3718, 2.56561),
(@GSCRIPT+79, 0, 6, 0, 0, 0, -5405.85, -2894.15, 341.972, 5.48238),
(@GSCRIPT+80, 0, 6, 0, 0, 0, 505.126, 1504.63, 124.808, 1.77987),
(@GSCRIPT+81, 0, 6, 0, 0, 0, -10684.9, 1033.63, 32.5389, 6.07384),
(@GSCRIPT+82, 0, 6, 0, 0, 0, -9447.8, -2270.85, 71.8224, 0.283853),
(@GSCRIPT+83, 0, 6, 0, 0, 0, -10531.7, -1281.91, 38.8647, 1.56959),
(@GSCRIPT+84, 0, 6, 0, 0, 0, -385.805, -787.954, 54.6655, 1.03926),
(@GSCRIPT+85, 0, 6, 0, 0, 0, -3517.75, -913.401, 8.86625, 2.60705),
(@GSCRIPT+86, 0, 6, 0, 0, 0, 275.049, -652.044, 130.296, 0.502032),
(@GSCRIPT+87, 0, 6, 0, 0, 0, -1581.45, -2704.06, 35.4168, 0.490373),
(@GSCRIPT+88, 0, 6, 0, 0, 0, -11921.7, -59.544, 39.7262, 3.73574),
(@GSCRIPT+89, 0, 6, 0, 0, 0, -6782.56, -3128.14, 240.48, 5.65912),
(@GSCRIPT+90, 0, 6, 0, 0, 0, -10368.6, -2731.3, 21.6537, 5.29238),
(@GSCRIPT+91, 0, 6, 0, 0, 0, 112.406, -3929.74, 136.358, 0.981903),
(@GSCRIPT+92, 0, 6, 0, 0, 0, -6686.33, -1198.55, 240.027, 0.916887),
(@GSCRIPT+93, 0, 6, 0, 0, 0, -11184.7, -3019.31, 7.29238, 3.20542),
(@GSCRIPT+94, 0, 6, 0, 0, 0, -7979.78, -2105.72, 127.919, 5.10148),
(@GSCRIPT+95, 0, 6, 0, 0, 0, 1743.69, -1723.86, 59.6648, 5.23722),
(@GSCRIPT+96, 0, 6, 0, 0, 0, 2280.64, -5275.05, 82.0166, 4.7479),
(@GSCRIPT+97, 0, 6, 530, 0, 0, 12806.5, -6911.11, 41.1156, 2.22935),
(@GSCRIPT+98, 0, 6, 530, 0, 0, -4192.62, -12576.7, 36.7598, 1.62813),
(@GSCRIPT+99, 0, 6, 1, 0, 0, 9889.03, 915.869, 1307.43, 1.9336),
(@GSCRIPT+100, 0, 6, 1, 0, 0, 228.978, -4741.87, 10.1027, 0.416883),
(@GSCRIPT+101, 0, 6, 1, 0, 0, -2473.87, -501.225, -9.42465, 0.6525),
(@GSCRIPT+102, 0, 6, 530, 0, 0, -2095.7, -11841.1, 51.1557, 6.19288),
(@GSCRIPT+103, 0, 6, 1, 0, 0, 6463.25, 683.986, 8.92792, 4.33534),
(@GSCRIPT+104, 0, 6, 1, 0, 0, -575.772, -2652.45, 95.6384, 0.006469),
(@GSCRIPT+105, 0, 6, 1, 0, 0, 1574.89, 1031.57, 137.442, 3.8013),
(@GSCRIPT+106, 0, 6, 1, 0, 0, 1919.77, -2169.68, 94.6729, 6.14177),
(@GSCRIPT+107, 0, 6, 1, 0, 0, -5375.53, -2509.2, -40.432, 2.41885),
(@GSCRIPT+108, 0, 6, 1, 0, 0, -656.056, 1510.12, 88.3746, 3.29553),
(@GSCRIPT+109, 0, 6, 1, 0, 0, -3350.12, -3064.85, 33.0364, 5.12666),
(@GSCRIPT+110, 0, 6, 1, 0, 0, -4808.31, 1040.51, 103.769, 2.90655),
(@GSCRIPT+111, 0, 6, 1, 0, 0, -6940.91, -3725.7, 48.9381, 3.11174),
(@GSCRIPT+112, 0, 6, 1, 0, 0, 3117.12, -4387.97, 91.9059, 5.49897),
(@GSCRIPT+113, 0, 6, 1, 0, 0, 3898.8, -1283.33, 220.519, 6.24307),
(@GSCRIPT+114, 0, 6, 1, 0, 0, -6291.55, -1158.62, -258.138, 0.457099),
(@GSCRIPT+115, 0, 6, 1, 0, 0, -6815.25, 730.015, 40.9483, 2.39066),
(@GSCRIPT+116, 0, 6, 1, 0, 0, 6658.57, -4553.48, 718.019, 5.18088),
(@GSCRIPT+117, 0, 6, 530, 0, 0, -207.335, 2035.92, 96.464, 1.59676),
(@GSCRIPT+118, 0, 6, 530, 0, 0, -220.297, 5378.58, 23.3223, 1.61718),
(@GSCRIPT+119, 0, 6, 530, 0, 0, -2266.23, 4244.73, 1.47728, 3.68426),
(@GSCRIPT+120, 0, 6, 530, 0, 0, -1610.85, 7733.62, -17.2773, 1.33522),
(@GSCRIPT+121, 0, 6, 530, 0, 0, 2029.75, 6232.07, 133.495, 1.30395),
(@GSCRIPT+122, 0, 6, 530, 0, 0, 3271.2, 3811.61, 143.153, 3.44101),
(@GSCRIPT+123, 0, 6, 530, 0, 0, -3681.01, 2350.76, 76.587, 4.25995),
(@GSCRIPT+124, 0, 6, 571, 0, 0, 2954.24, 5379.13, 60.4538, 2.55544),
(@GSCRIPT+125, 0, 6, 571, 0, 0, 682.848, -3978.3, 230.161, 1.54207),
(@GSCRIPT+126, 0, 6, 571, 0, 0, 2678.17, 891.826, 4.37494, 0.101121),
(@GSCRIPT+127, 0, 6, 571, 0, 0, 4017.35, -3403.85, 290, 5.35431),
(@GSCRIPT+128, 0, 6, 571, 0, 0, 5560.23, -3211.66, 371.709, 5.55055),
(@GSCRIPT+129, 0, 6, 571, 0, 0, 5614.67, 5818.86, -69.722, 3.60807),
(@GSCRIPT+130, 0, 6, 571, 0, 0, 5411.17, -966.37, 167.082, 1.57167),
(@GSCRIPT+132, 0, 6, 571, 0, 0, 6120.46, -1013.89, 408.39, 5.12322),
(@GSCRIPT+133, 0, 6, 571, 0, 0, 8323.28, 2763.5, 655.093, 2.87223),
(@GSCRIPT+134, 0, 6, 571, 0, 0, 4522.23, 2828.01, 389.975, 0.215009);
ALTER TABLE `item_template` ADD COLUMN `Flags2` bigint(20) AFTER `Flags`;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `Flags2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `FlagsExtra`) VALUES (35690, 12, 0, 0, 'Arcane Power Focus', 48972, 1, 64, 0, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46793, 0, 0, 0, 60000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);
ALTER TABLE `item_template` DROP `Flags2`;
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (27392, 0, 0, 0, 0, 0, 169, 11686, 0, 0, 'Avenging Spirit Summoner', '', '', 0, 1, 1, 2, 114, 114, 0, 0.8, 0.285714, 1, 0, 1000, 2000, 0, 5000, 1, 2000, 2000, 1, 0, 8, 0, 0, 0, 0, 0, 1, 2, 0, 10, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 70, 1, 0, 0, 128, '', 12340);
DELETE FROM `npc_text` WHERE `ID` =40000;
INSERT INTO `npc_text` (ID,text0_0) VALUES 
(40000,'Amazing! There are passages in here that I have never seen before. This must have taken quite a while for you to track down. If you ever find anymore books like this, I would like to be notified immediately. $B$BPlease take one of my Kirin Tor Familiars with you just in case you stumble across anything.');
UPDATE `creature_template` SET `ScriptName` = 'npc_archmage_vargoth' WHERE `entry` = 19481;    

-- Fix trinket Chamber of Aspects
REPLACE INTO `spell_proc_event` VALUES
(75481, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 45, 0),
(75475, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0, 45, 0);

-- Fix quest drop http://ru.wowhead.com/quest=12754
DELETE FROM `creature_loot_template` WHERE (`entry`=29076) AND (`item`=39646);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (29076, 39646, 100, 1, 0, 1, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=29076) AND (`item`=39647);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (29076, 39647, 100, 1, 0, 1, 1);

-- Fix quest http://ru.wowhead.com/quest=10866
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '-185156' AND `ReqSpellCast1` = '38790' WHERE `entry` = '10866';

-- Fix quest http://ru.wowhead.com/quest=9600
UPDATE `quest_template` SET `ReqSpellCast1` = '8593' WHERE `entry` = '9600';

-- Fix Druid's berserk spell
REPLACE INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(50334, 'spell_dru_berserk');

-- Fix Roxi Ramrocket
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (31247, 0, 0, 0, 0, 0, 27533, 0, 0, 0, 'Roxi Ramrocket', 'Cold Weather Flying Trainer', '', 10351, 78, 78, 2, 35, 35, 209, 1, 1.14286, 1, 0, 388, 582, 0, 145, 1, 2000, 2000, 1, 32768, 8, 0, 1, 0, 0, 0, 310, 466, 116, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 29, 0, 0, 'npc_roxi_ramrocket', 12340);

-- Spell Threat Revamp
-- ----------
-- Paladin: Salvation
-- ----------
DELETE FROM playercreateinfo_spell WHERE spell = 33790;
INSERT INTO playercreateinfo_spell VALUES 
	(0, 2, 33790, 'Paladin: -50% Healing-Threat');

-- ----------
-- Tank Class Passive Threat
-- ----------
DELETE FROM spell_linked_spell WHERE spell_trigger IN (7376, 21178, 25780, 48263);
INSERT INTO spell_linked_spell VALUES
    (7376,  57339, 2, 'Defensive Stance Passive - Tank Class Passive Threat'),
    (21178, 57339, 2, 'Bear Form (Passive2) - Tank Class Passive Threat'),
    (25780, 57339, 2, 'Righteous Fury - Tank Class Passive Threat'),
    (48263, 57340, 2, 'Frost Presence - Tank Class Passive Threat');
	
-- ----------
-- Records Guildhouse Keeper
-- ----------
DELETE FROM creature_template WHERE `entry`=13;
INSERT INTO `creature_template` VALUES ('13', '0', '0', '0', '0', '0', '26789', '0', '0', '0', 'Portero', 'WoWReAn-GuildHouses', '', '0', '80', '80', '0', '35', '35', '1', '1.48', '1.14286', '0.75', '0', '181', '189', '0', '158', '1', '1400', '1900', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '1', '3', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', 'guildmaster', '0');

-- ----------------------------
-- Table structure for guildhouses
-- ----------------------------
DROP TABLE IF EXISTS `guildhouses`;
CREATE TABLE `guildhouses` (
 `id` int(8) unsigned NOT NULL auto_increment,
 `guildId` bigint(20) NOT NULL default '0',
 `x` double NOT NULL,
 `y` double NOT NULL,
 `z` double NOT NULL,
 `map` int(11) NOT NULL,
 `comment` varchar(255) NOT NULL default '',
 PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records
-- ----------------------------
INSERT INTO `guildhouses` VALUES ('2', '0', '-10711', '2483', '8', '1', 'Tauren village at Veiled Sea (Silithus)');
INSERT INTO `guildhouses` VALUES ('3', '0', '-8323', '-343', '146', '0', 'Fishing outside an Northshire Abbey (Elwynn Forest');
INSERT INTO `guildhouses` VALUES ('4', '0', '7368', '-1560', '163', '1', 'Troll Village in mountains (Darkshore)');
INSERT INTO `guildhouses` VALUES ('5', '0', '-4151', '-1400', '198', '0', 'Dwarven village outside Ironforge (Wetlands)');
INSERT INTO `guildhouses` VALUES ('6', '0', '-1840', '-4233', '2.14', '0', 'Dwarven village (Arathi Highlands, Forbidding Sea)');
INSERT INTO `guildhouses` VALUES ('8', '0', '-723', '-1076', '179', '1', 'Tauren camp (Mulgore, Red Rock)');
INSERT INTO `guildhouses` VALUES ('9', '0', '-206', '1666', '80', '0', 'Shadowfang Keep an outside instance (Silverpine Forest)');
INSERT INTO `guildhouses` VALUES ('10', '0', '-6374', '1262', '7', '0', 'Harbor house outside Stormwind (Elwynn Forest)');
INSERT INTO `guildhouses` VALUES ('11', '0', '-8640', '580', '96', '0', 'Empty jail between canals (Stormwind) DELETE');
INSERT INTO `guildhouses` VALUES ('12', '0', '-4844', '-1066', '502', '0', 'Old Ironforge');
INSERT INTO `guildhouses` VALUES ('13', '0', '-4863', '-1658', '503.5', '0', 'Ironforge Airport');
INSERT INTO `guildhouses` VALUES ('14', '0', '1146', '-165', '313', '37', 'Azshara Crater instance (Alliance entrance)');
INSERT INTO `guildhouses` VALUES ('15', '0', '-123', '858', '298', '37', 'Azshara Crater instance (Horde entrance)');
INSERT INTO `guildhouses` VALUES ('16', '0', '4303', '-2760', '16.8', '0', 'Quel\'Thalas Tower');
INSERT INTO `guildhouses` VALUES ('17', '0', '-6161', '-790', '423', '0', 'Crashed gnome airplane (between Dun Morogh and Searing Gorge)');
INSERT INTO `guildhouses` VALUES ('18', '0', '-11790', '-1640', '54.7', '0', 'Zul\'Gurub an outside instance (Stranglethorn Vale)');
INSERT INTO `guildhouses` VALUES ('19', '0', '-11805', '-4754', '6', '1', 'Goblin village (Tanaris, South Seas)');
INSERT INTO `guildhouses` VALUES ('20', '0', '-9296', '670', '132', '0', 'Villains camp outside an Stormwind (Elwynn Forest)');
INSERT INTO `guildhouses` VALUES ('21', '0', '3414', '-3380', '142.2', '0', 'Stratholm an outside instance');
INSERT INTO `guildhouses` VALUES ('22', '0', '4654', '-3772', '944', '1', 'Kalimdor Hyjal (Aka World Tree)');
INSERT INTO `guildhouses` VALUES ('23', '0', '2176', '-4766', '55', '1', 'The Ring of Valor (Aka. Orgrimmar Arena)');
INSERT INTO `guildhouses` VALUES ('24', '0', '1951.512085', '1530.475586', '247.288147', '1', 'Stonetalon Logging Camp');
INSERT INTO `guildhouses` VALUES ('25', '0', '2813.660645', '2248.552979', '215.524643', '1', 'Stonetalon Ruins');
INSERT INTO `guildhouses` VALUES ('28', '0', '9725.27', '-21.43', '20.03', '1', 'Teldrassil Furbold camp');
INSERT INTO `guildhouses` VALUES ('29', '0', '-3855', '-3479', '579', '0', 'Wetlands mountain camp');
INSERT INTO `guildhouses` VALUES ('30', '0', '-5362', '-2540', '485', '0', 'Ortell\'s Hideout');
INSERT INTO `guildhouses` VALUES ('31', '0', '-12865', '-1396', '115', '0', 'Stranglethorn Secret Cave');
INSERT INTO `guildhouses` VALUES ('32', '0', '-11073', '-1956', '39', '0', 'Karazhan Smiley');
INSERT INTO `guildhouses` VALUES ('33', '0', '-11084', '-1801', '53', '0', 'Well of the Forgotten (Aka. Karazhan Crypt or Lower Karazhan)');
INSERT INTO `guildhouses` VALUES ('34', '0', '1683.235474', '286.458801', '-45.451775', '0', 'Undercity Top Tier');
INSERT INTO `guildhouses` VALUES ('35', '0', '-8521.3', '599.5', '101.399338', '0', 'Stormwind Cut-Throat Alley');
INSERT INTO `guildhouses` VALUES ('36', '0', '-5933', '452', '509', '0', 'Forgotten gnome camp');
INSERT INTO `guildhouses` VALUES ('37', '0', '-920.231323', '7096.489258', '170.35289', '530', 'Outland Nagrand : Newton\'s Remains');
INSERT INTO `guildhouses` VALUES ('38', '0', '-2140.501953', '9142.6875', '137.041855', '530', 'Outland Nagrand : Tomb');
INSERT INTO `guildhouses` VALUES ('39', '0', '-483.401794', '7461.944824', '186.120987', '530', 'Outland Nagrand: Challe\'s Home for Little Tykes');
INSERT INTO `guildhouses` VALUES ('40', '0', '2387.753906', '3191.757324', '152.669388', '530', 'Outland Netherstorm: Nova\'s Shrine');

-- --------------
-- Fixes wowrean
-- --------------

-- Deleted all emblem of valor loot from DB. By Seither
DELETE FROM creature_loot_template WHERE item=40752;

-- Fix emblem of valor -> emblem of triumph loot. By Seither
UPDATE `creature_template` SET `gossip_menu_id` = 11031 WHERE `entry` = 37223;

-- Fix second phase event on HoL. by Reisa
UPDATE `creature_template` SET `gossip_menu_id` = 11031 WHERE `entry` = 37223;

-- Fix emblem of valor -> emblem of triumph loot. By Seither

--  Halls of Lightning --
UPDATE creature_loot_template SET item=47241 where entry=31533 and item=42721;
UPDATE creature_loot_template SET item=47241 where entry=28923 and item=42721;
UPDATE creature_loot_template SET item=47241 where entry=31537 and item=42721;
UPDATE creature_loot_template SET item=47241 where entry=31536 and item=42721;

-- Nexus --
INSERT INTO creature_loot_template (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount) VALUES (30510,47241,100,1,0,1,1),
(30529,47241,100,1,0,1,1),
(30532,47241,100,1,0,1,1),
(30540,47241,100,1,0,1,1);


-- ----------
-- restructure spell_threat
-- ----------
TRUNCATE TABLE `spell_threat`;
ALTER    TABLE `spell_threat` CHANGE `Threat` `flatMod` int(6);
ALTER    TABLE `spell_threat` ADD COLUMN `pctMod`   FLOAT NOT NULL DEFAULT 1.0 COMMENT 'threat multiplier for damage/healing' AFTER `flatMod`;
ALTER    TABLE `spell_threat` ADD COLUMN `apPctMod` FLOAT NOT NULL DEFAULT 0.0 COMMENT 'additional threat bonus from attack power' AFTER `pctMod`;
INSERT INTO `spell_threat` VALUES
-- Other (Found by: SELECT id, SpellnameEN, RankEN FROM `Spell` WHERE `DescriptionEN` LIKE '%threat%' AND `SpellFamilyName` <> '0' AND NOT (Attributes & 0x40) GROUP BY SpellNameEN ORDER BY RankEN DESC;)
	(5676,  0,   2.00, 0.0),  -- Searing Pain (Rank 1) (Warlock)
	(28176, 0,   0.00, 0.0),  -- Fel Armor - Heal (Rank 1) (Warlock) [Assumption]
	(8056,  0,   2.00, 0.0),  -- Frost Shock (Rank 1) (Shaman) [Assumption]
	(26688, 0,   0.00, 0.0),  -- Anesthetic Poison - Proc (Rank 1) (Rogue)
	(15237, 0,   0.00, 0.0),  -- Holy Nova - Heal (Rank 1) (Priest)
	(23455, 0,   0.00, 0.0),  -- Holy Nova - Damage (Rank 1) (Priest)
	(32546, 0,   0.50, 0.0),  -- Binding Heal (Rank 1) (Priest) [Assumption]
	(33619, 0,   0.00, 0.0),  -- Reflective Shield - Proc (Priest)
	(2139,  180, 1.00, 0.0),  -- Counterspell (Mage) [Assumption]
-- Death Knight
-- Src: http://www.tankspot.com/showthread.php?40485-Death-Knight-threat-values&p=113584#post113584
	(63611, 0,   0.00, 0.0),  -- Blood Presence - heal
	(45524, 240, 1.00, 0.0),  -- Chains of Ice
	(43265, 0,   1.90, 0.0),  -- Death and Decay
	(49576, 110, 1.00, 0.0),  -- Death Grip
	(48743, 0,   0.00, 0.0),  -- Death Pact
	(65142, 0,   0.00, 0.0),  -- Ebon Plague
	(47568, 0,   0.00, 0.0),  -- Empower Rune Weapon
	(51209, 112, 1.00, 0.0),  -- Hungering Cold
	(49039, 110, 1.00, 0.0),  -- Lichborn
	(56815, 0,   1.75, 0.0),  -- Rune Strike
	(50422, 0,   0.00, 0.0),  -- Scent of Blood - proc
	(55090, 51,  1.00, 0.0),  -- Scourge Strike (Rank 1)
	(55265, 63,  1.00, 0.0),  -- Scourge Strike (Rank 2)
	(55270, 98,  1.00, 0.0),  -- Scourge Strike (Rank 3)
	(55271, 120, 1.00, 0.0),  -- Scourge Strike (Rank 4)
	(49916, 138, 1.00, 0.0),  -- Strangulate
	(50181, 0,   0.00, 0.0),  -- Vendetta - proc
-- Druid
-- Src: http://www.tankspot.com/showthread.php?47813-WOTLK-Bear-Threat-Values&p=200948#post200948
	(17057, 0,   0.00, 0.0),  -- Furor - proc 
	(5211,  53,  1.00, 0.0),  -- Bash (Rank 3)
	(6798,  105, 1.00, 0.0),  -- Bash (Rank 2)
	(8983,  158, 1.00, 0.0),  -- Bash (Rank 1)
	(45334, 40,  1.00, 0.0),  -- Feral Charge (Bear) - Root
	(19675, 80,  1.00, 0.0),  -- Feral Charge (Bear) - Interrupt
	(34299, 0,   0.00, 0.0),  -- Improved Leader of the Pack - Heal
	(6807,  13,  1.00, 0.0),  -- Maul (Rank 1)
	(6808,  20,  1.00, 0.0),  -- Maul (Rank 2)
	(6809,  27,  1.00, 0.0),  -- Maul (Rank 3)
	(8972,  47,  1.00, 0.0),  -- Maul (Rank 4)
	(9745,  75,  1.00, 0.0),  -- Maul (Rank 5)
	(9880,  106, 1.00, 0.0),  -- Maul (Rank 6)
	(9881,  140, 1.00, 0.0),  -- Maul (Rank 7)
	(26996, 212, 1.00, 0.0),  -- Maul (Rank 8)
	(48479, 345, 1.00, 0.0),  -- Maul (Rank 9)
	(48480, 422, 1.00, 0.0),  -- Maul (Rank 10)
	(60089, 638, 1.00, 0.0),  -- Faerie Fire (Feral) - Proc
	(33745, 182, 0.50, 0.0),  -- Lacerate (Rank 1)
	(48567, 409, 0.50, 0.0),  -- Lacerate (Rank 2)
	(48568, 515, 0.50, 0.0),  -- Lacerate (Rank 3)
	(779,   0,   1.50, 0.0),  -- Swipe (Bear) (Rank 1)
	(5209,  98,  1.00, 0.0),  -- Challenging Roar
	(29166, 0,   10.0, 0.0),  -- Innervate [base is 5 per 1 mana]
-- Paladin
-- Src: http://www.tankspot.com/showthread.php?39761-Paladin-Threat-Values-(Updated-for-3.2.2)&p=103813#post103813
	(7294,  0,   2.00, 0.0),  -- Retribution Aura
	(20185, 0,   0.00, 0.0),  -- Judgement of Light
	(19742, 0,   0.00, 0.0),  -- Blessing of Wisdom (Rank 1)
	(25894, 0,   0.00, 0.0),  -- Greater Blessing of Wisdom (Rank 1)
	(20470, 0,   0.00, 0.0),  -- Righteous Fury
	(498,   0,   0.00, 0.0),  -- Divine Protection
-- Warrior
-- Src: http://www.tankspot.com/showthread.php?39775-WoW-3.0-Threat-Values-(Warrior)&p=103972#post103972
	(845,   8,   1.00, 0.0),  -- Cleave (Rank 1)
	(7369,  15,  1.00, 0.0),  -- Cleave (Rank 2)
	(11608, 25,  1.00, 0.0),  -- Cleave (Rank 3)
	(11609, 35,  1.00, 0.0),  -- Cleave (Rank 4)
	(20569, 48,  1.00, 0.0),  -- Cleave (Rank 5)
	(25231, 68,  1.00, 0.0),  -- Cleave (Rank 6)
	(47519, 95,  1.00, 0.0),  -- Cleave (Rank 7)
	(47520, 112, 1.00, 0.0),  -- Cleave (Rank 8)
	(78,    5,   1.00, 0.0),  -- Heroic Strike (Rank 1)
	(284,   10,  1.00, 0.0),  -- Heroic Strike (Rank 2)
	(285,   16,  1.00, 0.0),  -- Heroic Strike (Rank 3)
	(1608,  22,  1.00, 0.0),  -- Heroic Strike (Rank 4)
	(11564, 31,  1.00, 0.0),  -- Heroic Strike (Rank 5)
	(11565, 48,  1.00, 0.0),  -- Heroic Strike (Rank 6)
	(11566, 70,  1.00, 0.0),  -- Heroic Strike (Rank 7)
	(11567, 92,  1.00, 0.0),  -- Heroic Strike (Rank 8)
	(25286, 104, 1.00, 0.0),  -- Heroic Strike (Rank 9)
	(29707, 121, 1.00, 0.0),  -- Heroic Strike (Rank 10)
	(30324, 164, 1.00, 0.0),  -- Heroic Strike (Rank 11)
	(47449, 224, 1.00, 0.0),  -- Heroic Strike (Rank 12)
	(47450, 259, 1.00, 0.0),  -- Heroic Strike (Rank 13)
	(57755, 0,   1.50, 0.0),  -- Heroic Throw
	(6572,  7,   1.00, 0.0),  -- Revenge (Rank 1)
	(6574,  11,  1.00, 0.0),  -- Revenge (Rank 2)
	(7379,  15,  1.00, 0.0),  -- Revenge (Rank 3)
	(11600, 27,  1.00, 0.0),  -- Revenge (Rank 4)
	(11601, 41,  1.00, 0.0),  -- Revenge (Rank 5)
	(25288, 53,  1.00, 0.0),  -- Revenge (Rank 6)
	(25269, 58,  1.00, 0.0),  -- Revenge (Rank 7)
	(30357, 71,  1.00, 0.0),  -- Revenge (Rank 8)
	(57823, 121, 1.00, 0.0),  -- Revenge (Rank 9)
	(23922, 228, 1.00, 0.0),  -- Shield Slam (Rank 1)
	(23923, 268, 1.00, 0.0),  -- Shield Slam (Rank 2)
	(23924, 307, 1.00, 0.0),  -- Shield Slam (Rank 3)
	(23925, 347, 1.00, 0.0),  -- Shield Slam (Rank 4)
	(25258, 387, 1.00, 0.0),  -- Shield Slam (Rank 5)
	(30356, 426, 1.00, 0.0),  -- Shield Slam (Rank 6)
	(47487, 650, 1.00, 0.0),  -- Shield Slam (Rank 7)
	(47488, 770, 1.00, 0.0),  -- Shield Slam (Rank 8)
	(1464,  18,  1.00, 0.0),  -- Slam (Rank 1)
	(8820,  24,  1.00, 0.0),  -- Slam (Rank 2)
	(11604, 38,  1.00, 0.0),  -- Slam (Rank 3)
	(11605, 49,  1.00, 0.0),  -- Slam (Rank 4)
	(25241, 59,  1.00, 0.0),  -- Slam (Rank 5)
	(25242, 78,  1.00, 0.0),  -- Slam (Rank 6)
	(47474, 123, 1.00, 0.0),  -- Slam (Rank 7)
	(47475, 140, 1.00, 0.0),  -- Slam (Rank 8)
	(7386,  345, 1.00, 0.05), -- Sunder Armor
	(20243, 0,   1.00, 0.05), -- Devastate (Rank 1)
	(6343,  0,   1.85, 0.0);  -- Thunder Clap (Rank 1)