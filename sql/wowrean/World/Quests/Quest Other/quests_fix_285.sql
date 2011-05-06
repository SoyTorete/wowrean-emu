-- Приказы для Черного рыцаря (http://ru.wowhead.com/quest=13663)
UPDATE `creature_template` SET `speed_walk`='2',`spell1`='57403',`VehicleId`='200',`RegenHealth`='0',`ScriptName`='vehicle_knight_gryphon' WHERE (`entry`='33519'); 

-- Наемники (http://ru.wowhead.com/quest=255)
-- Слишком мало мобов для квеста
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
