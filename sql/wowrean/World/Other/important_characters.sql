-- 19/11/2010
--Commit:5cd39040592f526719d99b960a1a0d16499f86b4

--* Core/DBLayer: Move tables reserved_name, gameobject_respawn and creature_respawn from WORLD database to CHARACTER database as it's content is realm-specific and should be preserved (thanks to leak for the cleanup)

--*** TO PRESERVE (COPY) THE DATA CONTAINED IN THE OLD TABLES, YOU MUST FOLLOW THE FOLLOWING SQL-RECIPE (REPLACE DATABASENAMES WHERE NEEDED!) ***

-- Move creature_respawn from world to characters db
INSERT INTO `characters`.`creature_respawn` (`guid`, `respawntime`, `instance`)
SELECT `guid, `respawntime` `instance` * FROM `world`.`creature_respawn`;
-- Remove creature_respawn table from world db
DROP TABLE `world`.`creature_respawn`;

-- Move gameobject_respawn from world to characters db
INSERT INTO `characters`.`gameobject_respawn` (`guid`, `respawntime`, `instance`)
SELECT `guid`, `respawntime`, `instance` FROM `world`.`gameobject_respawn`;
-- Remove creature_respawn table from world db
DROP TABLE `world`.`gameobject_respawn`;

-- Move reserved names from world to characters db
INSERT INTO `characters`.`reserved_name` (`name`)
SELECT `name` FROM `world`.`reserved_name`;
-- Remove reserved_names table from world db
DROP TABLE `world`.`reserved_name`;

*** THE ABOVE MUST BE DONE, OR EXISTING INSTANCES WILL BE FULLY RESPAWNED - YOU HAVE BEEN WARNED ***
Closes issue 4842. Closes issue 4849.

--HG--
branch : trunk
