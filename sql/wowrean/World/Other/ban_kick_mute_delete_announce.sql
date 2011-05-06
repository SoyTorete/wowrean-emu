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