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