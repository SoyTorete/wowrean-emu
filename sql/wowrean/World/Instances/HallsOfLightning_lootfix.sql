-- Fix emblem of valor -> emblem of triumph loot. By Seither

--  Halls of Lightning --
UPDATE creature_loot_template SET item=47241 where entry=31533 and item=42721;
UPDATE creature_loot_template SET item=47241 where entry=28923 and item=42721;
UPDATE creature_loot_template SET item=47241 where entry=31537 and item=42721;
UPDATE creature_loot_template SET item=47241 where entry=31536 and item=42721;

-- Nexus --
INSERT INTO creature_loot_template (entry,item,ChanceOrQuestChance,lootmode,groupid,mincountOrRef,maxcount)
(30510,47241,100,1,0,1,1),
(30529,47241,100,1,0,1,1),
(30532,47241,100,1,0,1,1),
(30540,47241,100,1,0,1,1);