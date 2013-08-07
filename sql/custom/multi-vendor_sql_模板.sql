/*
- Thx For Rochet2 (C++ Part)
- Thx For Power-Arena about sharing somes Sql part..
Original Thread :
http://www.ac-web.org/forums/showthread.php?178989-Multi-Vendor-Mall-Vendors-%28SQL-C-%29
*/
/*
--Delete ALL--
DELETE FROM `creature_template` WHERE `entry`> 400000 AND `entry` < 410000; --NPC VENDOR
DELETE FROM `npc_vendor` WHERE `entry`> 85000 AND `entry` < 85200; --NPC VENDOR
DELETE FROM `creature_template` WHERE `entry`> 400000 AND `entry` < 410000; --FINAL NPC
DELETE FROM `gossip_menu_option` WHERE `menu_id`> 50000 AND `menu_id`< 50012; --MENU
DELETE FROM `gossip_menu_option` WHERE `menu_id`> 22000 AND `menu_id`< 22999; --SUB-MENU
*/
/*
ID OF FINAL VENDORS :
-RINGS : 85000
-TRINKET : 85001
-NECK : 85002
-CLOAK : 85003
-GLYPH : 85004
-RELIC : 85005
-GEMS : 85006
-Weapon 1H : 85007
-Weapon 2H : 85008
-Weapon Off Hand: 85009
-Weapon Ranged : 85010
*/
/*
ESTIMATIONS : 
- 70 % Script is finished
- 14 hours of work
*/
--VENDOR--
--Rings 200-277--
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(400001, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Rings 200+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400002, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Rings 226+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400003, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Rings 232+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400004, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Rings 245+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400005, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Rings 251+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400006, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Rings 258+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400007, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Rings 264+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400008, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Rings 277+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
-----------------------------ITEM--VENDOR-------------------------------
--Rings 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400001);
REPLACE INTO `npc_vendor` SELECT 400001,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 11 AND `ItemLevel`= 200;
--Rings 226+
DELETE FROM `npc_vendor` WHERE (`entry`= 400002);
REPLACE INTO `npc_vendor` SELECT 400002,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 11 AND `ItemLevel`= 226;
--Rings 232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400003);
REPLACE INTO `npc_vendor` SELECT 400003,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 11 AND `ItemLevel`= 232;
--Rings 245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400004);
REPLACE INTO `npc_vendor` SELECT 400004,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 11 AND `ItemLevel`= 245;
--Rings 251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400005);
REPLACE INTO `npc_vendor` SELECT 400005,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 11 AND `ItemLevel`= 251;
--Rings 258+
DELETE FROM `npc_vendor` WHERE (`entry`= 400006);
REPLACE INTO `npc_vendor` SELECT 400006,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 11 AND `ItemLevel`= 258;
--Rings 264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400007);
REPLACE INTO `npc_vendor` SELECT 400007,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 11 AND `ItemLevel`= 264;
--Rings 277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400008);
REPLACE INTO `npc_vendor` SELECT 400008,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 11 AND `ItemLevel`= 277;
--------------------------FINAL NPC-------------------------------------
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (85000, 0, 0, 0, 0, 0, 30489, 0, 0, 0, 'Rings', 'www.Power-Arena.fr', '', 22000, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.75, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
--------------------------MENU--RINGS-----------------------------------
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(22000, 0, 1, 'Rings 200+', 3, 128, 400001, 0, 0, 0, ''),
(22000, 1, 1, 'Rings 226+', 3, 128, 400002, 0, 0, 0, ''),
(22000, 2, 1, 'Rings 232+', 3, 128, 400003, 0, 0, 0, ''),
(22000, 4, 1, 'Rings 245+', 3, 128, 400004, 0, 0, 0, ''),
(22000, 5, 1, 'Rings 251+', 3, 128, 400005, 0, 0, 0, ''),
(22000, 6, 1, 'Rings 258+', 3, 128, 400006, 0, 0, 0, ''),
(22000, 7, 1, 'Rings 264+', 3, 128, 400007, 0, 0, 0, ''),
(22000, 8, 1, 'Rings 277+', 3, 128, 400008, 0, 0, 0, '');
-----------------------------END---RINGS--------------------------------
------------------------------------------------------------------------
--Trinket 200-277--
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(400009, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Trinket 200+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400010, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Trinket 226+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400011, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Trinket 232+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400012, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Trinket 245+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400013, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Trinket 251+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400014, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Trinket 258+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400015, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Trinket 264+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400016, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Trinket 277+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
-----------------------------ITEM--VENDOR-------------------------------
--Trinket 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400009);
REPLACE INTO `npc_vendor` SELECT 400009,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 12 AND `ItemLevel`= 200;
--Trinket 226+
DELETE FROM `npc_vendor` WHERE (`entry`= 400010);
REPLACE INTO `npc_vendor` SELECT 400010,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 12 AND `ItemLevel`= 226;
--Trinket 232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400011);
REPLACE INTO `npc_vendor` SELECT 400011,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 12 AND `ItemLevel`= 232;
--Trinket 245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400012);
REPLACE INTO `npc_vendor` SELECT 400012,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 12 AND `ItemLevel`= 245;
--Trinket 251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400013);
REPLACE INTO `npc_vendor` SELECT 400013,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 12 AND `ItemLevel`= 251;
--Trinket 258+
DELETE FROM `npc_vendor` WHERE (`entry`= 400014);
REPLACE INTO `npc_vendor` SELECT 400014,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 12 AND `ItemLevel`= 258;
--Trinket 264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400015);
REPLACE INTO `npc_vendor` SELECT 400015,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 12 AND `ItemLevel`= 264;
--Trinket 277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400016);
REPLACE INTO `npc_vendor` SELECT 400016,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 12 AND `ItemLevel`= 277;
--------------------------FINAL NPC-Trinket--------------------------------
DELETE FROM `creature_template` WHERE (`entry`=85001);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (85001, 0, 0, 0, 0, 0, 30489, 0, 0, 0, 'Trinket', 'www.Power-Arena.fr', '', 22001, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.75, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
--------------------------MENU--Trinket-----------------------------------
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(22001, 0, 1, 'Trinket 200+', 3, 128, 400009, 0, 0, 0, ''),
(22001, 1, 1, 'Trinket 226+', 3, 128, 400010, 0, 0, 0, ''),
(22001, 2, 1, 'Trinket 232+', 3, 128, 400011, 0, 0, 0, ''),
(22001, 4, 1, 'Trinket 245+', 3, 128, 400012, 0, 0, 0, ''),
(22001, 5, 1, 'Trinket 251+', 3, 128, 400013, 0, 0, 0, ''),
(22001, 6, 1, 'Trinket 258+', 3, 128, 400014, 0, 0, 0, ''),
(22001, 7, 1, 'Trinket 264+', 3, 128, 400015, 0, 0, 0, ''),
(22001, 8, 1, 'Trinket 277+', 3, 128, 400016, 0, 0, 0, '');
-----------------------------END---Trinket--------------------------------
------------------------------------------------------------------------
--Neck 200-277--
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(400017, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Neck 200+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400018, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Neck 226+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400019, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Neck 232+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400020, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Neck 245+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400021, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Neck 251+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400022, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Neck 258+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400023, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Neck 264+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400024, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Neck 277+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
-----------------------------ITEM--VENDOR-------------------------------
--Neck 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400017);
REPLACE INTO `npc_vendor` SELECT 400017,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 2 AND `ItemLevel`= 200;
--Neck 226+
DELETE FROM `npc_vendor` WHERE (`entry`= 400018);
REPLACE INTO `npc_vendor` SELECT 400018,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 2 AND `ItemLevel`= 226;
--Neck 232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400019);
REPLACE INTO `npc_vendor` SELECT 400019,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 2 AND `ItemLevel`= 232;
--Neck 245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400020);
REPLACE INTO `npc_vendor` SELECT 400020,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 2 AND `ItemLevel`= 245;
--Neck 251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400021);
REPLACE INTO `npc_vendor` SELECT 400021,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 2 AND `ItemLevel`= 251;
--Neck 258+
DELETE FROM `npc_vendor` WHERE (`entry`= 400022);
REPLACE INTO `npc_vendor` SELECT 400022,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 2 AND `ItemLevel`= 258;
--Neck 264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400023);
REPLACE INTO `npc_vendor` SELECT 400023,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 2 AND `ItemLevel`= 264;
--Neck 277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400024);
REPLACE INTO `npc_vendor` SELECT 400024,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 2 AND `ItemLevel`= 277;

------------------------------------------------------------------------
DELETE FROM `creature_template` WHERE (`entry`=85002);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (85002, 0, 0, 0, 0, 0, 30489, 0, 0, 0, 'Neck', 'www.Power-Arena.fr', '', 22002, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.75, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
--------NECK MENU
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(22002, 0, 1, 'Neck 200+', 3, 128, 400017, 0, 0, 0, ''),
(22002, 1, 1, 'Neck 226+', 3, 128, 400018, 0, 0, 0, ''),
(22002, 2, 1, 'Neck 232+', 3, 128, 400019, 0, 0, 0, ''),
(22002, 4, 1, 'Neck 245+', 3, 128, 400020, 0, 0, 0, ''),
(22002, 5, 1, 'Neck 251+', 3, 128, 400021, 0, 0, 0, ''),
(22002, 6, 1, 'Neck 258+', 3, 128, 400022, 0, 0, 0, ''),
(22002, 7, 1, 'Neck 264+', 3, 128, 400023, 0, 0, 0, ''),
(22002, 8, 1, 'Neck 277+', 3, 128, 400024, 0, 0, 0, '');
------------------------------------------------------------------------
--Capes 200-277--
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(400025, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Cloak 200+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400026, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Cloak 226+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400027, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Cloak 232+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400028, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Cloak 245+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400029, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Cloak 251+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400030, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Cloak 258+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400031, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Cloak 264+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400032, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Cloak 277+', 'www.Power-Arena.fr', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
-----------------------------ITEM--VENDOR-------------------------------
--Cloak 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400025);
REPLACE INTO `npc_vendor` SELECT 400025,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 16 AND `ItemLevel`= 200;
--Cloak 226+
DELETE FROM `npc_vendor` WHERE (`entry`= 400026);
REPLACE INTO `npc_vendor` SELECT 400026,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 16 AND `ItemLevel`= 226;
--Cloak 232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400027);
REPLACE INTO `npc_vendor` SELECT 400027,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 16 AND `ItemLevel`= 232;
--Cloak 245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400028);
REPLACE INTO `npc_vendor` SELECT 400028,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 16 AND `ItemLevel`= 245;
--Cloak 251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400029);
REPLACE INTO `npc_vendor` SELECT 400029,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 16 AND `ItemLevel`= 251;
--Cloak 258+
DELETE FROM `npc_vendor` WHERE (`entry`= 400030);
REPLACE INTO `npc_vendor` SELECT 400030,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 16 AND `ItemLevel`= 258;
--Cloak 264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400031);
REPLACE INTO `npc_vendor` SELECT 400031,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 16 AND `ItemLevel`= 264;
--Cloak 277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400032);
REPLACE INTO `npc_vendor` SELECT 400032,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 16 AND `ItemLevel`= 277;
--------Cloak MENU-----------------------------------------------------
------------------------------------------------------------------------
DELETE FROM `creature_template` WHERE (`entry`=85003);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (85003, 0, 0, 0, 0, 0, 30489, 0, 0, 0, 'Cloak', 'www.Power-Arena.fr', '', 22002, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.75, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(22003, 0, 1, 'Cloak 200+', 3, 128, 400025, 0, 0, 0, ''),
(22003, 1, 1, 'Cloak 226+', 3, 128, 400026, 0, 0, 0, ''),
(22003, 2, 1, 'Cloak 232+', 3, 128, 400027, 0, 0, 0, ''),
(22003, 4, 1, 'Cloak 245+', 3, 128, 400028, 0, 0, 0, ''),
(22003, 5, 1, 'Cloak 251+', 3, 128, 400029, 0, 0, 0, ''),
(22003, 6, 1, 'Cloak 258+', 3, 128, 400030, 0, 0, 0, ''),
(22003, 7, 1, 'Cloak 264+', 3, 128, 400031, 0, 0, 0, ''),
(22003, 8, 1, 'Cloak 277+', 3, 128, 400032, 0, 0, 0, '');
---------------------GLYPH--------------------------------------------
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(400033, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Mage-M', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400034, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Priest-M', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400035, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Rogue-M', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400036, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Druid-M', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400037, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Paladin-M', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400038, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Shaman-M', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400039, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Warrior-M', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400040, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Hunter-M', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400041, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'Warlocks-M', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400042, 0, 0, 0, 0, 0, 18135, 0, 0, 0, 'DK-M', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);

--MAGE MAJOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400033);
REPLACE INTO `npc_vendor` SELECT 400033,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 8 AND `displayid` = 58830;


--Priest MAJOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400034);
REPLACE INTO `npc_vendor` SELECT 400034,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 5 AND `displayid` = 58834;


--Rogue MAJOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400035);
REPLACE INTO `npc_vendor` SELECT 400035,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 4 AND `displayid` = 58836;


--Druid MAJOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400036);
REPLACE INTO `npc_vendor` SELECT 400036,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 11 AND `displayid` = 58828;


--Paladin MAJOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400037);
REPLACE INTO `npc_vendor` SELECT 400037,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 2 AND `displayid` = 58832;

--Shaman MAJOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400038);
REPLACE INTO `npc_vendor` SELECT 400038,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 7 AND `displayid` = 58839;

--Warrior MAJOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400039);
REPLACE INTO `npc_vendor` SELECT 400039,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 1 AND `displayid` = 58842;

--Hunter MAJOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400040);
REPLACE INTO `npc_vendor` SELECT 400040,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 3 AND `displayid` = 58829;

--Warlocks MAJOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400041);
REPLACE INTO `npc_vendor` SELECT 400041,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 9 AND `displayid` = 58841;

--DK MAJOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400042);
REPLACE INTO `npc_vendor` SELECT 400042,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 6 AND `displayid` = 58825;


REPLACe INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_spell`,`trainer_class`,`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`Health_mod`,`Mana_mod`,`Armor_mod`,`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,`mechanic_immune_mask`,`flags_extra`,`ScriptName`,`WDBVerified`) VALUES
(400043,0,0,0,0,0,31117,0,0,0,'Mage','Power-Arena-Multi-Maj','',0,80,80,0,35,35,4224,1,1,1,0,1755,1755,0,1504,1,1500,0,2,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,2,'',0),
(400044,0,0,0,0,0,26000,0,0,0,'Priest-Maj','Power-Arena-Multi','',0,80,80,0,35,35,4224,1,1,1,0,1755,1755,0,1504,1,1500,0,2,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,2,'',0),
(400045,0,0,0,0,0,29996,0,0,0,'Rogue-Maj','Power-Arena-Multi','',0,80,80,0,35,35,4224,1,1,1,0,1755,1755,0,1504,1,1500,0,2,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,2,'',0),
(400046,0,0,0,0,0,28185,0,0,0,'Druid-Maj','Power-Arena-Multi','',0,80,80,0,35,35,4224,1,1,1,0,1755,1755,0,1504,1,1500,0,2,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,2,'',0),
(400047,0,0,0,0,0,22957,0,0,0,'Paladin-Maj','Power-Arena-Multi','',0,80,80,0,35,35,4224,1,1,1,0,1755,1755,0,1504,1,1500,0,2,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,2,'',0),
(400048,0,0,0,0,0,29480,0,0,0,'Shaman-Maj','Power-Arena-Multi','',0,80,80,0,35,35,4224,1,1,1,0,1755,1755,0,1504,1,1500,0,2,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,2,'',0),
(400049,0,0,0,0,0,27942,0,0,0,'Warrior-Maj','Power-Arena-Multi','',0,80,80,0,35,35,4224,1,1,1,0,1755,1755,0,1504,1,1500,0,2,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,2,'',0),
(400050,0,0,0,0,0,31194,0,0,0,'Hunter-Maj','Power-Arena-Multi','',0,80,80,0,35,35,4224,1,1,1,0,1755,1755,0,1504,1,1500,0,2,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,2,'',0),
(400051,0,0,0,0,0,30008,0,0,0,'Warlocks-Maj','Power-Arena-Multi','',0,80,80,0,35,35,4224,1,1,1,0,1755,1755,0,1504,1,1500,0,2,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,2,'',0),
(400052,0,0,0,0,0,22929,0,0,0,'DK-Maj','Power-Arena-Multi','',0,80,80,0,35,35,4224,1,1,0.7,0,1755,1755,0,1504,1,1500,0,2,0,0,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,2,'',0);


--MAGE MINOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400043);
REPLACE INTO `npc_vendor` SELECT 400043,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 8 AND `displayid` = 58831;


--Priest MINOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400044);
REPLACE INTO `npc_vendor` SELECT 400044,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 5 AND `displayid` = 58835;


--Rogue MINOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400045);
REPLACE INTO `npc_vendor` SELECT 400045,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 4 AND `displayid` = 58837;


--Druid MINOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400046);
REPLACE INTO `npc_vendor` SELECT 400046,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 11 AND `displayid` = 58827;


--Paladin MINOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400047);
REPLACE INTO `npc_vendor` SELECT 400047,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 2 AND `displayid` = 58833;

--Shaman MINOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400048);
REPLACE INTO `npc_vendor` SELECT 400048,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 7 AND `displayid` = 58838;

--Warrior MINOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400049);
REPLACE INTO `npc_vendor` SELECT 400049,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 1 AND `displayid` = 58843;

--Hunter MINOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400050);
REPLACE INTO `npc_vendor` SELECT 400050,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 3 AND `displayid` = 59343;

--Warlocks MINOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400051);
REPLACE INTO `npc_vendor` SELECT 400051,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 9 AND `displayid` = 58840;

--DK MINOR GLYPH VENDOR ITEM
DELETE FROM `npc_vendor` WHERE (`entry`= 400052);
REPLACE INTO `npc_vendor` SELECT 400052,0,`entry`,0,0,0
FROM `item_template` WHERE  `class` = 16 AND `subclass`= 6 AND `displayid` = 58826;
--------------------FINAL GLYPH NPC
DELETE FROM `creature_template` WHERE (`entry`=85004);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (85004, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Glyph', 'Power-Arena.fr', '', 50000, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(50000,0,0,'|cff00CCFFMage',1,1,22004,0,0,0,NULL),
(22004, 0, 1, 'Major', 3, 128, 400033, 0, 0, 0, ''),
(22004, 1, 1, 'Minor', 3, 128, 400043, 0, 0, 0, ''),
(50000,1,0,'|cffFFFFFFPriest',1,1,22005,0,0,0,NULL),
(22005, 0, 1, 'Major', 3, 128, 400034, 0, 0, 0, ''),
(22005, 1, 1, 'Minor', 3, 128, 400044, 0, 0, 0, ''),
(50000,2,0,'|cffFFFF33Rogue',1,1,22006,0,0,0,NULL),	
(22006, 0, 1, 'Major', 3, 128, 400035, 0, 0, 0, ''),
(22006, 1, 1, 'Minor', 3, 128, 400045, 0, 0, 0, ''),
(50000,3,0,'|cffFF9933Druid',1,1,22007,0,0,0,NULL),
(22007, 0, 1, 'Major', 3, 128, 400036, 0, 0, 0, ''),
(22007, 1, 1, 'Minor', 3, 128, 400046, 0, 0, 0, ''),
(50000,4,0,'|cffFF0099Paladin',1,1,22008,0,0,0,NULL), 
(22008, 0, 1, 'Major', 3, 128, 400037, 0, 0, 0, ''),
(22008, 1, 1, 'Minor', 3, 128, 400047, 0, 0, 0, ''),
(50000,5,0,'|cff006699Shaman',1,1,22009,0,0,0,NULL), 
(22009, 0, 1, 'Major', 3, 128, 400038, 0, 0, 0, ''),
(22009, 1, 1, 'Minor', 3, 128, 400048, 0, 0, 0, ''),
(50000,6,0,'|cff663333Warrior',1,1,22010,0,0,0,NULL),
(22010, 0, 1, 'Major', 3, 128, 400039, 0, 0, 0, ''),
(22010, 1, 1, 'Minor', 3, 128, 400049, 0, 0, 0, ''),
(50000,7,0,'|cff99CC33Hunter',1,1,22011,0,0,0,NULL), 
(22011, 0, 1, 'Major', 3, 128, 400040, 0, 0, 0, ''),
(22011, 1, 1, 'Minor', 3, 128, 400050, 0, 0, 0, ''),
(50000,8,0,'|cff9933CCWarlocks',1,1,22012,0,0,0,NULL), 
(22012, 0, 1, 'Major', 3, 128, 400041, 0, 0, 0, ''),
(22012, 1, 1, 'Minor', 3, 128, 400051, 0, 0, 0, ''),
(50000,9,0,'|cff990000Death Knights',1,1,22013,0,0,0,NULL),
(22013, 0, 1, 'Major', 3, 128, 400042, 0, 0, 0, ''),
(22013, 1, 1, 'Minor', 3, 128, 400052, 0, 0, 0, '');
--------------------------------------------------------------------------
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(400052, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Idol 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400053, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Idol 226+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400054, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Idol 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400055, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Idol 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400056, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Idol 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400057, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Idol 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400058, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Idol 270+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400059, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Relic 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400060, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Relic 226+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400061, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Relic 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400062, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Relic 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400063, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Relic 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400064, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Relic 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400065, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Relic 270+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400066, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Totem 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400067, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Totem 226+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400068, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Totem 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400069, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Totem 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400070, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Totem 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400071, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Totem 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400072, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Totem 270+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400073, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Libram 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400074, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Libram 226+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400075, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Libram 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400076, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Libram 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400077, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Libram 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400078, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Libram 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400079, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Libram 270+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);

--Idol--
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400052, 0, 39757, 0, 0, 0),
(400052, 0, 40321, 0, 0, 0),
(400052, 0, 40342, 0, 0, 0),
(400052, 0, 40711, 0, 0, 0),
(400052, 0, 40712, 0, 0, 0),
(400052, 0, 40713, 0, 0, 0),
(400052, 0, 42574, 0, 0, 0),
(400052, 0, 42575, 0, 0, 0),
(400052, 0, 42576, 0, 0, 0),
(400052, 0, 42577, 0, 0, 0),
(400052, 0, 42578, 0, 0, 0),
(400052, 0, 42582, 0, 0, 0),
(400052, 0, 42583, 0, 0, 0),
(400052, 0, 42587, 0, 0, 0),
(400052, 0, 42588, 0, 0, 0);
--226
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400053, 0, 45270, 0, 0, 0),
(400053, 0, 45509, 0, 0, 0),
(400053, 0, 46138, 0, 0, 0);
--232
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400054, 0, 42579, 0, 0, 0),
(400054, 0, 42584, 0, 0, 0),
(400054, 0, 42589, 0, 0, 0);
--245
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400055, 0, 47668, 0, 0, 0),
(400055, 0, 47670, 0, 0, 0),
(400055, 0, 47671, 0, 0, 0);
--251
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400056, 0, 42580, 0, 0, 0),
(400056, 0, 42585, 0, 0, 0),
(400056, 0, 42591, 0, 0, 0);
--264
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400057, 0, 50454, 0, 0, 0),
(400057, 0, 50456, 0, 0, 0),
(400057, 0, 50457, 0, 0, 0);
--270
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400058, 0, 51423, 0, 0, 0),
(400058, 0, 51429, 0, 0, 0),
(400058, 0, 51437, 0, 0, 0);

--Totem
--200
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400059, 0, 39728, 0, 0, 0),
(400059, 0, 40267, 0, 0, 0),
(400059, 0, 40322, 0, 0, 0),
(400059, 0, 40708, 0, 0, 0),
(400059, 0, 40709, 0, 0, 0),
(400059, 0, 40710, 0, 0, 0),
(400059, 0, 42596, 0, 0, 0),
(400059, 0, 42597, 0, 0, 0),
(400059, 0, 42601, 0, 0, 0),
(400059, 0, 42602, 0, 0, 0),
(400059, 0, 42606, 0, 0, 0),
(400059, 0, 42607, 0, 0, 0);
--226
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400060, 0, 45114, 0, 0, 0),
(400060, 0, 45169, 0, 0, 0),
(400060, 0, 45255, 0, 0, 0);
--232
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400061, 0, 42598, 0, 0, 0),
(400061, 0, 42603, 0, 0, 0),
(400061, 0, 42608, 0, 0, 0);
--245
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400062, 0, 47665, 0, 0, 0),
(400062, 0, 47666, 0, 0, 0),
(400062, 0, 47667, 0, 0, 0);
--251
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400063, 0, 42599, 0, 0, 0),
(400063, 0, 42604, 0, 0, 0),
(400063, 0, 42609, 0, 0, 0);
--264
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(410064, 0, 50458, 0, 0, 0),
(410064, 0, 50463, 0, 0, 0),
(410064, 0, 50464, 0, 0, 0);
--270
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400065, 0, 51501, 0, 0, 0),
(400065, 0, 51507, 0, 0, 0),
(400065, 0, 51513, 0, 0, 0);

--Relique
--200
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400066, 0, 40207, 0, 0, 0),
(400066, 0, 40714, 0, 0, 0),
(400066, 0, 40715, 0, 0, 0),
(400066, 0, 42618, 0, 0, 0),
(400066, 0, 42619, 0, 0, 0),
(400066, 0, 42620, 0, 0, 0);
--226
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400067, 0, 45144, 0, 0, 0),
(400067, 0, 45254, 0, 0, 0);
--232
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400068, 0, 42621, 0, 0, 0);
--245
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400069, 0, 47672, 0, 0, 0),
(400069, 0, 47673, 0, 0, 0);
--251
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400070, 0, 42622, 0, 0, 0);
--264
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(410071, 0, 50459, 0, 0, 0),
(410071, 0, 50462, 0, 0, 0);
--270
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400072, 0, 51417, 0, 0, 0);
--Libram
--200
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400073, 0, 40191, 0, 0, 0),
(400073, 0, 40268, 0, 0, 0),
(400073, 0, 40337, 0, 0, 0),
(400073, 0, 40705, 0, 0, 0),
(400073, 0, 40706, 0, 0, 0),
(400073, 0, 40707, 0, 0, 0),
(400073, 0, 42611, 0, 0, 0),
(400073, 0, 42613, 0, 0, 0),
(400073, 0, 42614, 0, 0, 0),
(400073, 0, 42851, 0, 0, 0),
(400073, 0, 42852, 0, 0, 0);
--226
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400074, 0, 45145, 0, 0, 0),
(400074, 0, 45436, 0, 0, 0),
(400074, 0, 45510, 0, 0, 0);
--232
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400075, 0, 42615, 0, 0, 0),
(400075, 0, 42853, 0, 0, 0);
--245
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400076, 0, 47661, 0, 0, 0),
(400076, 0, 47662, 0, 0, 0),
(400076, 0, 47664, 0, 0, 0);
--251
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400077, 0, 42616, 0, 0, 0),
(400077, 0, 42854, 0, 0, 0);
--264
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400078, 0, 50455, 0, 0, 0),
(400078, 0, 50460, 0, 0, 0),
(400078, 0, 50461, 0, 0, 0);
--270
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400079, 0, 51472, 0, 0, 0),
(400079, 0, 51478, 0, 0, 0);

--------------------------------------------------------FINAL VENDOR OF RELIC-----------------------------------------------------
DELETE FROM `creature_template` WHERE (`entry`=85005);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (85005, 0, 0, 0, 0, 0, 30489, 0, 0, 0, 'Relic', 'www.power-arena.fr', '', 50010, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.75, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);

REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(50010,0,1,'|cffFF9900Idol',1,1,22014,0,0,0,NULL),
(22014, 0, 1, 'Idol 200+', 3, 128, 400052, 0, 0, 0, ''),
(22014, 1, 1, 'Idol 226+', 3, 128, 400053, 0, 0, 0, ''),
(22014, 2, 1, 'Idol 232+', 3, 128, 400054, 0, 0, 0, ''),
(22014, 3, 1, 'Idol 245+', 3, 128, 400055, 0, 0, 0, ''),
(22014, 4, 1, 'Idol 251+', 3, 128, 400056, 0, 0, 0, ''),
(22014, 5, 1, 'Idol 264+', 3, 128, 400057, 0, 0, 0, ''),
(22014, 6, 1, 'Idol 270+', 3, 128, 400058, 0, 0, 0, ''),
(50010,1,1,'|cffCC0000Relic',1,1,22015,0,0,0,NULL),
(22015, 0, 1, 'Relic 200+', 3, 128, 400059, 0, 0, 0, ''),
(22015, 1, 1, 'Relic 226+', 3, 128, 400060, 0, 0, 0, ''),
(22015, 2, 1, 'Relic 232+', 3, 128, 400061, 0, 0, 0, ''),
(22015, 3, 1, 'Relic 245+', 3, 128, 400062, 0, 0, 0, ''),
(22015, 4, 1, 'Relic 251+', 3, 128, 400063, 0, 0, 0, ''),
(22015, 5, 1, 'Relic 264+', 3, 128, 400064, 0, 0, 0, ''),
(22015, 6, 1, 'Relic 270+', 3, 128, 400065, 0, 0, 0, ''),
(50010,2,1,'|cff3399FFTotem',1,1,22016,0,0,0,NULL),	
(22016, 0, 1, 'Totem 200+', 3, 128, 400066, 0, 0, 0, ''),
(22016, 1, 1, 'Totem 226+', 3, 128, 400067, 0, 0, 0, ''),
(22016, 2, 1, 'Totem 232+', 3, 128, 400068, 0, 0, 0, ''),
(22016, 3, 1, 'Totem 245+', 3, 128, 400069, 0, 0, 0, ''),
(22016, 4, 1, 'Totem 251+', 3, 128, 400070, 0, 0, 0, ''),
(22016, 5, 1, 'Totem 264+', 3, 128, 400071, 0, 0, 0, ''),
(22016, 6, 1, 'Totem 270+', 3, 128, 400072, 0, 0, 0, ''),
(50010,3,1,'|cffFF3366Libram',1,1,22017,0,0,0,NULL),
(22017, 0, 1, 'Libram 200+', 3, 128, 400073, 0, 0, 0, ''),
(22017, 1, 1, 'Libram 226+', 3, 128, 400074, 0, 0, 0, ''),
(22017, 2, 1, 'Libram 232+', 3, 128, 400075, 0, 0, 0, ''),
(22017, 3, 1, 'Libram 245+', 3, 128, 400076, 0, 0, 0, ''),
(22017, 4, 1, 'Libram 251+', 3, 128, 400077, 0, 0, 0, ''),
(22017, 5, 1, 'Libram 264+', 3, 128, 400078, 0, 0, 0, ''),
(22017, 6, 1, 'Libram 270+', 3, 128, 400079, 0, 0, 0, '');
-------------------------------------------------------------------------------------GEMS
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
--Gemme Red
(400080, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Red Magique', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400081, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Red Physic', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400082, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Red Survivors', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400083, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Red JOA', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Gemme Blue
(400084, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Blue Magic', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400085, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Blue Survivors', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400086, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Blue JOA', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Gemme Meta
(400087, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Meta Magie', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400088, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Meta Physic', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400089, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Meta PVP', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Gemme Yellow
(400090, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Yellow Magic & Physic', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400091, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Yellow Survivors', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400092, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Yellow JOA', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Gemme Green
(400093, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Green Magic', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400094, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Green Survivors', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Gemme Orange
(400095, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Orange Magic', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400096, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Orange Physic', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400097, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Orange Survivors', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Gemme Purple
(400098, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Purple Magic', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400099, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Purple Physic', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400100, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gem-Purple Survivors', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
-----------------------------------------------------------------
--DELETE FROM `npc_vendor` WHERE (`entry`=400059);
--Gem Red physique
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400080, 0, 40117, 0, 0, 0),
(400080, 0, 40111, 0, 0, 0),
(400080, 0, 40112, 0, 0, 0),
(400080, 0, 40114, 0, 0, 0),
(400080, 0, 40118, 0, 0, 0);
--Gem Red Magique
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400081, 0, 40113, 0, 0, 0);
--Gem Red Survie
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400082, 0, 40115, 0, 0, 0),
(400082, 0, 40116, 0, 0, 0);

--Gem Blue MAGIQUE
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400084, 0, 40122, 0, 0, 0),
(400084, 0, 40121, 0, 0, 0),
(400084, 0, 40120, 0, 0, 0);
--Gem Blue Survie
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400085, 0, 40119, 0, 0, 0);

--Meta-Magies
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400087, 0, 41376, 0, 0, 0),
(400087, 0, 41401, 0, 0, 0),
(400087, 0, 41375, 0, 0, 0),
(400087, 0, 41389, 0, 0, 0),
(400087, 0, 41285, 0, 0, 0);
--Meta-Physique
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400088, 0, 41385, 0, 0, 0),
(400088, 0, 41400, 0, 0, 0),
(400088, 0, 41398, 0, 0, 0),
(400088, 0, 41285, 0, 0, 0);

--Meta-PvP
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400089, 0, 41378, 0, 0, 0),
(400089, 0, 41307, 0, 0, 0),
(400089, 0, 41335, 0, 0, 0),
(400089, 0, 41380, 0, 0, 0),
(400089, 0, 41396, 0, 0, 0),
(400089, 0, 41379, 0, 0, 0),
(400089, 0, 41382, 0, 0, 0),
(400089, 0, 41381, 0, 0, 0),
(400089, 0, 41395, 0, 0, 0),
(400089, 0, 41397, 0, 0, 0),
(400089, 0, 41377, 0, 0, 0),
(400089, 0, 49110, 0, 0, 0);

--Gem Yellow Magique &  Physic
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400090, 0, 40124, 0, 0, 0),
(400090, 0, 40128, 0, 0, 0),
(400090, 0, 40125, 0, 0, 0),
(400090, 0, 40123, 0, 0, 0);
--Gem Yellow Survie
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400091, 0, 40126, 0, 0, 0),
(400091, 0, 40127, 0, 0, 0),
(400091, 0, 34627, 0, 0, 0);

--Gem Green MAGIQUE
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400093, 0, 40170, 0, 0, 0),
(400093, 0, 40171, 0, 0, 0),
(400093, 0, 40172, 0, 0, 0),
(400093, 0, 40174, 0, 0, 0),
(400093, 0, 40175, 0, 0, 0),
(400093, 0, 40176, 0, 0, 0),
(400093, 0, 40177, 0, 0, 0),
(400093, 0, 40180, 0, 0, 0),
(400093, 0, 40181, 0, 0, 0),
(400093, 0, 40182, 0, 0, 0);
--Gem Green Survie
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400094, 0, 40166, 0, 0, 0),
(400094, 0, 40164, 0, 0, 0),
(400094, 0, 40178, 0, 0, 0),
(400094, 0, 40167, 0, 0, 0),
(400094, 0, 40168, 0, 0, 0),
(400094, 0, 40169, 0, 0, 0),
(400094, 0, 40173, 0, 0, 0),
(400094, 0, 40165, 0, 0, 0);

--Gem Orange magique
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400095, 0, 40151, 0, 0, 0),
(400095, 0, 40152, 0, 0, 0),
(400095, 0, 40155, 0, 0, 0),
(400095, 0, 40153, 0, 0, 0);
--Gem Orange Physic
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400096, 0, 40142, 0, 0, 0),
(400096, 0, 40146, 0, 0, 0),
(400096, 0, 40148, 0, 0, 0),
(400096, 0, 40150, 0, 0, 0),
(400096, 0, 40143, 0, 0, 0),
(400096, 0, 40147, 0, 0, 0),
(400096, 0, 40156, 0, 0, 0),
(400096, 0, 40157, 0, 0, 0),
(400096, 0, 40159, 0, 0, 0),
(400096, 0, 40162, 0, 0, 0);
--Gem Orange Survie
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400097, 0, 40145, 0, 0, 0),
(400097, 0, 40143, 0, 0, 0),
(400097, 0, 40149, 0, 0, 0),
(400097, 0, 40154, 0, 0, 0),
(400097, 0, 40158, 0, 0, 0),
(400097, 0, 40160, 0, 0, 0),
(400097, 0, 40161, 0, 0, 0);

--Gem Purple magique
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400098, 0, 40133, 0, 0, 0),
(400098, 0, 40135, 0, 0, 0),
(400098, 0, 40134, 0, 0, 0);
--Gem Purple Physic
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400099, 0, 40131, 0, 0, 0),
(400099, 0, 40137, 0, 0, 0);
--Gem Purple Survie
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400100, 0, 40129, 0, 0, 0),
(400100, 0, 40130, 0, 0, 0),
(400100, 0, 40132, 0, 0, 0),
(400100, 0, 40136, 0, 0, 0),
(400100, 0, 40138, 0, 0, 0),
(400100, 0, 40139, 0, 0, 0),
(400100, 0, 40141, 0, 0, 0),
(400100, 0, 40140, 0, 0, 0);

--Gem JOA Red
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400083, 0, 36766, 0, 0, 0),
(400083, 0, 42142, 0, 0, 0),
(400083, 0, 42143, 0, 0, 0),
(400083, 0, 42144, 0, 0, 0),
(400083, 0, 42151, 0, 0, 0),
(400083, 0, 42152, 0, 0, 0),
(400083, 0, 42153, 0, 0, 0),
(400083, 0, 42154, 0, 0, 0);

--Gem JOA Blue
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400086, 0, 36767, 0, 0, 0),
(400086, 0, 42145, 0, 0, 0),
(400086, 0, 42155, 0, 0, 0),
(400086, 0, 42146, 0, 0, 0);
--Gem JOA Yellow
REPLACE INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400092, 0, 42149, 0, 0, 0),
(400092, 0, 42148, 0, 0, 0),
(400092, 0, 42150, 0, 0, 0),
(400092, 0, 42156, 0, 0, 0),
(400092, 0, 42158, 0, 0, 0),
(400092, 0, 42157, 0, 0, 0);
---FINAL NPC
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(85006, 0, 0, 0, 0, 0, 28456, 0, 0, 0, 'Gems', 'Power-Arena', '', 50011, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 3, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
--GEMS MENU
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(50011,0,0,'|cffFF3333Red',1,1,22018,0,0,0,NULL),
(22018, 0, 1, 'Gemme Magic', 3, 128, 400081, 0, 0, 0, ''),
(22018, 1, 1, 'Gemme Physic', 3, 128, 400080, 0, 0, 0, ''),
(22018, 2, 1, 'Gemme Survie', 3, 128, 400082, 0, 0, 0, ''),
(22018,3,0,'<= Back',1,1,50011,0,0,0,NULL),
(50011,1,0,'|cff3399FFBlue',1,1,22019,0,0,0,NULL),
(22019, 0, 1, 'Gemme Magic', 3, 128, 400084, 0, 0, 0, ''),
(22019, 2, 1, 'Gemme Of Survivors', 3, 128, 400085, 0, 0, 0, ''),
(22019,3,0,'<= Back',1,1,50011,0,0,0,NULL),
(50011,2,0,'|cff666666Meta',1,1,22020,0,0,0,NULL),	
(22020, 0, 1, 'Meta-Magic', 3, 128, 400087, 0, 0, 0, ''),
(22020, 1, 1, 'Meta-Physic', 3, 128, 400088, 0, 0, 0, ''),
(22020, 2, 1, 'Meta-PvP', 3, 128, 400089, 0, 0, 0, ''),
(22020,3,0,'<= Back',1,1,50011,0,0,0,NULL),
(50011,3,0,'|cffFFCC00Yellow',1,1,22021,0,0,0,NULL),
(22021, 0, 1, 'Gems Magic & Physic', 3, 128, 400090, 0, 0, 0, ''),
(22021, 1, 1, 'Gems Of Survivors', 3, 128, 400091, 0, 0, 0, ''),
(22021,2,0,'<= Back',1,1,50011,0,0,0,NULL),
(50011,4,0,'|cff99CC00Green',1,1,22022,0,0,0,NULL),
(22022, 0, 1, 'Gems Magic', 3, 128, 400093, 0, 0, 0, ''),
(22022, 1, 1, 'Gems Of Survivors', 3, 128, 400094, 0, 0, 0, ''),
(22022,2,0,'<= Back',1,1,50011,0,0,0,NULL),
(50011,5,0,'|cffFF6600Orange',1,1,22023,0,0,0,NULL),
(22023, 0, 1, 'Gems Magic', 3, 128, 400095, 0, 0, 0, ''),
(22023, 1, 1, 'Gems Physic', 3, 128, 400096, 0, 0, 0, ''),
(22023, 2, 1, 'Gems Of Survivors', 3, 128, 400097, 0, 0, 0, ''),
(22023,3,0,'<= Back',1,1,50011,0,0,0,NULL),
(50011,6,0,'|cff9933CCPurple',1,1,22024,0,0,0,NULL),
(22024, 0, 1, 'Gems Magic', 3, 128, 400098, 0, 0, 0, ''),
(22024, 1, 1, 'Gems Physic', 3, 128, 400099, 0, 0, 0, ''),
(22024, 2, 1, 'Gems Of Survivors', 3, 128, 400100, 0, 0, 0, ''),
(22024,3,0,'<= Back',1,1,50011,0,0,0,NULL),
(50011,7,0,'|cffFFFFFFJoa',1,1,22025,0,0,0,NULL),
(22025, 0, 1, 'Gems Red', 3, 128, 400063, 0, 0, 0, ''),
(22025, 1, 1, 'Gems Blue', 3, 128, 400066, 0, 0, 0, ''),
(22025, 2, 1, 'Gems Yellow', 3, 128, 400072, 0, 0, 0, ''),
(22025,3,0,'<= Back',1,1,50011,0,0,0,NULL);
--------------------------------END OF GEMS------------------------------
--Weapons
--One Hands (13)
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
--Sword
(400101, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Sword 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400102, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Sword 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400103, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Sword 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400104, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Sword 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400105, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Sword 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400106, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Sword 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400107, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Sword 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Mace
(400108, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Mace 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400109, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Mace 226+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400110, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Mace 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400111, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Mace 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400112, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Mace 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400113, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Mace 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400114, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Mace 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Axe
(400115, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Axe 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400116, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Axe  226+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400117, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Axe  232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400118, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Axe  245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400119, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Axe  251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400120, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Axe  264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400121, 0, 0, 0, 0, 0, 58, 0, 0, 0, '1H Axe  277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--1H Sword  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400101);
REPLACE INTO `npc_vendor` SELECT 400101,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 7 AND `class`= 2;
--1H Sword  226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400102);
REPLACE INTO `npc_vendor` SELECT 400102,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 7 AND `class`= 2;
--1H Sword  232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400103);
REPLACE INTO `npc_vendor` SELECT 400103,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 7 AND `class`= 2;
--1H Sword  245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400104);
REPLACE INTO `npc_vendor` SELECT 400104,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 7 AND `class`= 2;
--1H Sword  251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400105);
REPLACE INTO `npc_vendor` SELECT 400105,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 7 AND `class`= 2;
--1H Sword  264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400106);
REPLACE INTO `npc_vendor` SELECT 400106,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 7 AND `class`= 2;
--1H Sword  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400107);
REPLACE INTO `npc_vendor` SELECT 400107,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 7 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--1H Mace  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400108);
REPLACE INTO `npc_vendor` SELECT 400108,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 4 AND `class`= 2;
--1H Mace  226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400109);
REPLACE INTO `npc_vendor` SELECT 400109,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 4 AND `class`= 2;
--1H Mace  232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400110);
REPLACE INTO `npc_vendor` SELECT 400110,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 4 AND `class`= 2;
--1H Mace  245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400111);
REPLACE INTO `npc_vendor` SELECT 400111,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 4 AND `class`= 2;
--1H Mace  251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400112);
REPLACE INTO `npc_vendor` SELECT 400112,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 4 AND `class`= 2;
--1H Mace  264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400113);
REPLACE INTO `npc_vendor` SELECT 400113,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 4 AND `class`= 2;
--1H Mace  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400114);
REPLACE INTO `npc_vendor` SELECT 400114,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 4 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--1H Axe  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400115);
REPLACE INTO `npc_vendor` SELECT 400115,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 0 AND `class`= 2;
--1H Axe  226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400116);
REPLACE INTO `npc_vendor` SELECT 400116,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 0 AND `class`= 2;
--1H Axe  232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400117);
REPLACE INTO `npc_vendor` SELECT 400117,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 0 AND `class`= 2;
--1H Axe  245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400118);
REPLACE INTO `npc_vendor` SELECT 400118,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 0 AND `class`= 2;
--1H Axe  251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400119);
REPLACE INTO `npc_vendor` SELECT 400119,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 0 AND `class`= 2;
--1H Axe  264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400120);
REPLACE INTO `npc_vendor` SELECT 400120,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 0 AND `class`= 2;
--1H Axe  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400121);
REPLACE INTO `npc_vendor` SELECT 400121,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 13 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 0 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--Weapons 2H 
--Two Hands (17)
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
--Sword
(400122, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Sword 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400123, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Sword 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400124, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Sword 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400125, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Sword 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400126, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Sword 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400127, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Sword 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400128, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Sword 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Mace
(400129, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Mace 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400130, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Mace 226+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400131, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Mace 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400132, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Mace 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400133, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Mace 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400134, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Mace 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400135, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Mace 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Axe
(400136, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Axe 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400137, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Axe  226+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400138, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Axe  232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400139, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Axe  245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400140, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Axe  251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400141, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Axe  264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400142, 0, 0, 0, 0, 0, 58, 0, 0, 0, '2H Axe  277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--2H Sword  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400122);
REPLACE INTO `npc_vendor` SELECT 400122,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 8 AND `class`= 2;
--2H Sword  226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400123);
REPLACE INTO `npc_vendor` SELECT 400123,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 8 AND `class`= 2;
--2H Sword  232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400124);
REPLACE INTO `npc_vendor` SELECT 400124,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 8 AND `class`= 2;
--2H Sword  245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400125);
REPLACE INTO `npc_vendor` SELECT 400125,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 8 AND `class`= 2;
--2H Sword  251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400126);
REPLACE INTO `npc_vendor` SELECT 400126,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 8 AND `class`= 2;
--2H Sword  264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400127);
REPLACE INTO `npc_vendor` SELECT 400127,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 8 AND `class`= 2;
--2H Sword  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400128);
REPLACE INTO `npc_vendor` SELECT 400128,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 8 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--2H Mace  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400129);
REPLACE INTO `npc_vendor` SELECT 400129,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 5 AND `class`= 2;
--2H Mace  226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400130);
REPLACE INTO `npc_vendor` SELECT 400130,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 5 AND `class`= 2;
--2H Mace  232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400131);
REPLACE INTO `npc_vendor` SELECT 400131,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 5 AND `class`= 2;
--2H Mace  245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400132);
REPLACE INTO `npc_vendor` SELECT 400132,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 5 AND `class`= 2;
--2H Mace  251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400133);
REPLACE INTO `npc_vendor` SELECT 400133,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 5 AND `class`= 2;
--2H Mace  264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400134);
REPLACE INTO `npc_vendor` SELECT 400134,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 5 AND `class`= 2;
--2H Mace  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400135);
REPLACE INTO `npc_vendor` SELECT 400135,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 5 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--2H Axe  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400136);
REPLACE INTO `npc_vendor` SELECT 400136,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 1 AND `class`= 2;
--2H Axe  226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400137);
REPLACE INTO `npc_vendor` SELECT 400137,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 1 AND `class`= 2;
--2H Axe  232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400138);
REPLACE INTO `npc_vendor` SELECT 400138,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 1 AND `class`= 2;
--2H Axe  245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400139);
REPLACE INTO `npc_vendor` SELECT 400139,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 1 AND `class`= 2;
--2H Axe  251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400140);
REPLACE INTO `npc_vendor` SELECT 400140,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 1 AND `class`= 2;
--2H Axe  264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400141);
REPLACE INTO `npc_vendor` SELECT 400141,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 1 AND `class`= 2;
--2H Axe  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400142);
REPLACE INTO `npc_vendor` SELECT 400142,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 1 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--Shield+Off Hand
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
--Shield
(400143, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Shield 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400144, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Shield 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400145, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Shield 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400146, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Shield 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400147, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Shield 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400148, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Shield 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400149, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Shield 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Off Hand
(400150, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Off Hand 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400151, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Off Hand 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400152, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Off Hand 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400153, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Off Hand 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400154, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Off Hand 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400155, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Off Hand 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400156, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Off Hand 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--Shield  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400143);
REPLACE INTO `npc_vendor` SELECT 400143,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 14 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 6 AND `class`= 4;
--Shield   226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400144);
REPLACE INTO `npc_vendor` SELECT 400144,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 14 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 6 AND `class`= 4;
--Shield   232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400145);
REPLACE INTO `npc_vendor` SELECT 400145,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 14 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 6 AND `class`= 4;
--Shield   245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400146);
REPLACE INTO `npc_vendor` SELECT 400146,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 14 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 6 AND `class`= 4;
--Shield   251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400147);
REPLACE INTO `npc_vendor` SELECT 400147,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 14 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 6 AND `class`= 4;
--Shield   264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400148);
REPLACE INTO `npc_vendor` SELECT 400148,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 14 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 6 AND `class`= 4;
--Shield  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400149);
REPLACE INTO `npc_vendor` SELECT 400149,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 14 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 6 AND `class`= 4;
--------------------------------------------------------------------------------------------------------------------------------
--Off Hand  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400150);
REPLACE INTO `npc_vendor` SELECT 400150,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 23 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 0 AND `class`= 4;
--Off Hand  226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400151);
REPLACE INTO `npc_vendor` SELECT 400151,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 23 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 0 AND `class`= 4;
--Off Hand  232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400152);
REPLACE INTO `npc_vendor` SELECT 400152,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 23 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 0 AND `class`= 4;
--Off Hand  245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400153);
REPLACE INTO `npc_vendor` SELECT 400153,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 23 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 0 AND `class`= 4;
--Off Hand  251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400154);
REPLACE INTO `npc_vendor` SELECT 400154,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 23 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 0 AND `class`= 4;
--Off Hand  264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400155);
REPLACE INTO `npc_vendor` SELECT 400155,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 23 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 0 AND `class`= 4;
--Off Hand  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400156);
REPLACE INTO `npc_vendor` SELECT 400156,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 23 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 0 AND `class`= 4;
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--Gun/Crossbow/Bows/Thrown/Staff/Polearms
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
--Gun 
(400157, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gun 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400158, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gun 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400159, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gun 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400160, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gun 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400161, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gun 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400162, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gun 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400163, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Gun 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--CrossBow
(400164, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'CrossBow 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400165, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'CrossBow 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400166, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'CrossBow 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400167, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'CrossBow 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400168, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'CrossBow 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400169, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'CrossBow 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400170, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'CrossBow 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Bow
(400171, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Bow 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400172, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Bow 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400173, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Bow 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400174, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Bow 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400175, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Bow 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400176, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Bow 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400177, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Bow 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Thrown
(400178, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Thrown 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400179, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Thrown 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400180, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Thrown 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400181, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Thrown 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400182, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Thrown 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400183, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Thrown 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400184, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Thrown 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Wand
(400185, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Wand 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400186, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Wand 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400187, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Wand 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400188, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Wand 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400189, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Wand 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400190, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Wand 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400191, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Wand 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Daggers
(400192, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Daggers 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400193, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Daggers 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400194, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Daggers 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400195, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Daggers 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400196, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Daggers 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400197, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Daggers 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400198, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Daggers 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Fist Weapon
(400199, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Fist Weapon 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400200, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Fist Weapon 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400201, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Fist Weapon 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400202, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Fist Weapon 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400203, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Fist Weapon 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400204, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Fist Weapon 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400205, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Fist Weapon 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Polearms
(400206, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Polearms 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400207, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Polearms 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400208, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Polearms 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400209, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Polearms 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400210, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Polearms 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400211, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Polearms 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400212, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Polearms 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
--Staff
(400213, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Staff 200+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400214, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Staff 213+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400215, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Staff 232+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400216, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Staff 245+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400217, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Staff 251+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400218, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Staff 264+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400219, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Staff 277+', 'Power-Arena-Multi', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--Gun  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400157);
REPLACE INTO `npc_vendor` SELECT 400157,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 3 AND `class`= 2;
--Gun   226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400158);
REPLACE INTO `npc_vendor` SELECT 400158,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 3 AND `class`= 2;
--Gun   232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400159);
REPLACE INTO `npc_vendor` SELECT 400159,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 3 AND `class`= 2;
--Gun   245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400160);
REPLACE INTO `npc_vendor` SELECT 400160,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 3 AND `class`= 2;
--Gun   251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400161);
REPLACE INTO `npc_vendor` SELECT 400161,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 3 AND `class`= 2;
--Gun   264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400162);
REPLACE INTO `npc_vendor` SELECT 400162,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 3 AND `class`= 2;
--Gun  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400163);
REPLACE INTO `npc_vendor` SELECT 400163,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 3 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--CrossBow  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400164);
REPLACE INTO `npc_vendor` SELECT 400164,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 2 AND `class`= 18;
--CrossBow   226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400165);
REPLACE INTO `npc_vendor` SELECT 400165,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 2 AND `class`= 18;
--CrossBow   232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400166);
REPLACE INTO `npc_vendor` SELECT 400166,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 2 AND `class`= 18;
--CrossBow   245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400167);
REPLACE INTO `npc_vendor` SELECT 400167,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 2 AND `class`= 18;
--CrossBow   251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400168);
REPLACE INTO `npc_vendor` SELECT 400168,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 2 AND `class`= 18;
--CrossBow   264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400169);
REPLACE INTO `npc_vendor` SELECT 400169,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 2 AND `class`= 18;
--CrossBow  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400170);
REPLACE INTO `npc_vendor` SELECT 400170,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 2 AND `class`= 18;
--------------------------------------------------------------------------------------------------------------------------------
--Bow  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400171);
REPLACE INTO `npc_vendor` SELECT 400171,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 15 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 2 AND `class`= 2;
--Bow   226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400172);
REPLACE INTO `npc_vendor` SELECT 400172,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 15 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 2 AND `class`= 2;
--Bow   232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400173);
REPLACE INTO `npc_vendor` SELECT 400173,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 15 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 2 AND `class`= 2;
--Bow   245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400174);
REPLACE INTO `npc_vendor` SELECT 400174,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 15 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 2 AND `class`= 2;
--Bow   251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400175);
REPLACE INTO `npc_vendor` SELECT 400175,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 15 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 2 AND `class`= 2;
--Bow   264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400176);
REPLACE INTO `npc_vendor` SELECT 400176,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 15 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 2 AND `class`= 2;
--Bow  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400177);
REPLACE INTO `npc_vendor` SELECT 400177,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 15 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 2 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--Thrown  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400178);
REPLACE INTO `npc_vendor` SELECT 400178,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 25 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 16 AND `class`= 2;
--Thrown   226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400179);
REPLACE INTO `npc_vendor` SELECT 400179,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 25 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 16 AND `class`= 2;
--Thrown   232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400180);
REPLACE INTO `npc_vendor` SELECT 400180,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 25 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 16 AND `class`= 2;
--Thrown   245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400181);
REPLACE INTO `npc_vendor` SELECT 400181,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 25 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 16 AND `class`= 2;
--Thrown   251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400182);
REPLACE INTO `npc_vendor` SELECT 400182,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 25 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 16 AND `class`= 2;
--Thrown   264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400183);
REPLACE INTO `npc_vendor` SELECT 400183,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 25 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 16 AND `class`= 2;
--Thrown  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400184);
REPLACE INTO `npc_vendor` SELECT 400184,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 25 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 16 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--Wand  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400185);
REPLACE INTO `npc_vendor` SELECT 400185,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 19 AND `class`= 2;
--Wand   226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400186);
REPLACE INTO `npc_vendor` SELECT 400186,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 19 AND `class`= 2;
--Wand   232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400187);
REPLACE INTO `npc_vendor` SELECT 400187,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 19 AND `class`= 2;
--Wand   245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400188);
REPLACE INTO `npc_vendor` SELECT 400188,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 19 AND `class`= 2;
--Wand   251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400189);
REPLACE INTO `npc_vendor` SELECT 400189,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 19 AND `class`= 2;
--Wand   264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400190);
REPLACE INTO `npc_vendor` SELECT 400190,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 19 AND `class`= 2;
--Wand  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400191);
REPLACE INTO `npc_vendor` SELECT 400191,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 26 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 19 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--Daggers  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400192);
REPLACE INTO `npc_vendor` SELECT 400192,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 15 AND `class`= 2;
--Daggers   226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400193);
REPLACE INTO `npc_vendor` SELECT 400193,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 15 AND `class`= 2;
--Daggers   232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400194);
REPLACE INTO `npc_vendor` SELECT 400194,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 15 AND `class`= 2;
--Daggers   245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400195);
REPLACE INTO `npc_vendor` SELECT 400195,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 15 AND `class`= 2;
--Daggers   251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400196);
REPLACE INTO `npc_vendor` SELECT 400196,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 15 AND `class`= 2;
--Daggers   264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400197);
REPLACE INTO `npc_vendor` SELECT 400197,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 15 AND `class`= 2;
--Daggers  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400198);
REPLACE INTO `npc_vendor` SELECT 400198,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 15 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--Fist Weapon  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400199);
REPLACE INTO `npc_vendor` SELECT 400199,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 13 AND `class`= 2;
--Fist_Weapon   226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400200);
REPLACE INTO `npc_vendor` SELECT 400200,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 13 AND `class`= 2;
--Fist_Weapon   232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400201);
REPLACE INTO `npc_vendor` SELECT 400201,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 13 AND `class`= 2;
--Fist_Weapon   245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400202);
REPLACE INTO `npc_vendor` SELECT 400202,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 13 AND `class`= 2;
--Fist_Weapon   251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400203);
REPLACE INTO `npc_vendor` SELECT 400203,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 13 AND `class`= 2;
--Fist_Weapon   264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400204);
REPLACE INTO `npc_vendor` SELECT 400204,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 13 AND `class`= 2;
--Fist_Weapon  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400205);
REPLACE INTO `npc_vendor` SELECT 400205,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 21 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 13 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--Polearm  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400206);
REPLACE INTO `npc_vendor` SELECT 400206,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 6 AND `class`= 2;
--Polearm   226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400207);
REPLACE INTO `npc_vendor` SELECT 400207,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 6 AND `class`= 2;
--Polearm   232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400208);
REPLACE INTO `npc_vendor` SELECT 400208,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 6 AND `class`= 2;
--Polearm   245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400209);
REPLACE INTO `npc_vendor` SELECT 400209,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 6 AND `class`= 2;
--Polearm   251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400210);
REPLACE INTO `npc_vendor` SELECT 400210,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 6 AND `class`= 2;
--Polearm   264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400211);
REPLACE INTO `npc_vendor` SELECT 400211,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 6 AND `class`= 2;
--Polearm  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400212);
REPLACE INTO `npc_vendor` SELECT 400212,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 6 AND `class`= 2;
--------------------------------------------------------------------------------------------------------------------------------
--Staff  200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400213);
REPLACE INTO `npc_vendor` SELECT 400213,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel`> 199 AND `ItemLevel`< 213  AND `subclass`= 10 AND `class`= 2;
--Staff   226+ (There is no Sword 226 So I change it for 213+)
DELETE FROM `npc_vendor` WHERE (`entry`= 400214);
REPLACE INTO `npc_vendor` SELECT 400214,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 212 AND `ItemLevel` < 227 AND `subclass`= 10 AND `class`= 2;
--Staff   232+
DELETE FROM `npc_vendor` WHERE (`entry`= 400215);
REPLACE INTO `npc_vendor` SELECT 400215,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 231 AND `ItemLevel` < 245 AND `subclass`= 10 AND `class`= 2;
--Staff   245+
DELETE FROM `npc_vendor` WHERE (`entry`= 400216);
REPLACE INTO `npc_vendor` SELECT 400216,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 244 AND `ItemLevel` < 251 AND `subclass`= 10 AND `class`= 2;
--Staff   251+
DELETE FROM `npc_vendor` WHERE (`entry`= 400217);
REPLACE INTO `npc_vendor` SELECT 400217,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 250 AND `ItemLevel` < 259  AND `subclass`= 10 AND `class`= 2;
--Staff   264+
DELETE FROM `npc_vendor` WHERE (`entry`= 400218);
REPLACE INTO `npc_vendor` SELECT 400218,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 258 AND `ItemLevel` < 265  AND `subclass`= 10 AND `class`= 2;
--Staff  277+
DELETE FROM `npc_vendor` WHERE (`entry`= 400219);
REPLACE INTO `npc_vendor` SELECT 400219,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 17 AND `ItemLevel` > 264 AND `ItemLevel` < 300 AND `subclass`= 10 AND `class`= 2;
-----------------------------------------------FINAL----------------------------------------------------------------------------
DELETE FROM `creature_template` WHERE (`entry`=85007);
DELETE FROM `creature_template` WHERE (`entry`=85008);
DELETE FROM `creature_template` WHERE (`entry`=85009);
DELETE FROM `creature_template` WHERE (`entry`=85010);
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(85007, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Weapon One-Hand', 'Power-Arena.fr', '', 50001, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(85008, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Weapon Two-Hand', 'Power-Arena.fr', '', 50002, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(85009, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Weapon Off-Hand', 'Power-Arena.fr', '', 50003, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(85010, 0, 0, 0, 0, 0, 58, 0, 0, 0, 'Weapon Ranged', 'Power-Arena.fr', '', 50004, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 1.5, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 0, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
--50001 (Menu) Weapon One-Hand
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(50001, 0, 0, 'Sword 1H', 1, 1, 22026,  0, 0, 0,NULL),
(22026, 1, 1, 'Sword 1H 200+', 3, 128, 400101, 0, 0, 0, ''),
(22026, 2, 1, 'Sword 1H 213+', 3, 128, 400102, 0, 0, 0, ''),
(22026, 3, 1, 'Sword 1H 232+', 3, 128, 400103, 0, 0, 0, ''),
(22026, 4, 1, 'Sword 1H 245+', 3, 128, 400104, 0, 0, 0, ''),
(22026, 5, 1, 'Sword 1H 251+', 3, 128, 400105, 0, 0, 0, ''),
(22026, 6, 1, 'Sword 1H 264+', 3, 128, 400106, 0, 0, 0, ''),
(22026, 7, 1, 'Sword 1H 277+', 3, 128, 400107, 0, 0, 0, ''),
(50001, 1, 0, 'Maces 1H', 1, 1,22027,  0, 0, 0,NULL),
(22027, 1, 1, 'Maces 1H 200+', 3, 128, 400108, 0, 0, 0, ''),
(22027, 2, 1, 'Maces 1H 213+', 3, 128, 400109, 0, 0, 0, ''),
(22027, 3, 1, 'Maces 1H 232+', 3, 128, 400110, 0, 0, 0, ''),
(22027, 4, 1, 'Maces 1H 245+', 3, 128, 400111, 0, 0, 0, ''),
(22027, 5, 1, 'Maces 1H 251+', 3, 128, 400112, 0, 0, 0, ''),
(22027, 6, 1, 'Maces 1H 264+', 3, 128, 400113, 0, 0, 0, ''),
(22027, 7, 1, 'Maces 1H 277+', 3, 128, 400114, 0, 0, 0, ''),
(50001, 2, 0, 'Axes 1H', 1, 1,22028, 0, 0, 0,NULL),
(22028, 1, 1, 'Axes 1H 200+', 3, 128, 400115, 0, 0, 0, ''),
(22028, 2, 1, 'Axes 1H 213+', 3, 128, 400116, 0, 0, 0, ''),
(22028, 3, 1, 'Axes 1H 232+', 3, 128, 400117, 0, 0, 0, ''),
(22028, 4, 1, 'Axes 1H 245+', 3, 128, 400118, 0, 0, 0, ''),
(22028, 5, 1, 'Axes 1H 251+', 3, 128, 400118, 0, 0, 0, ''),
(22028, 6, 1, 'Axes 1H 264+', 3, 128, 400120, 0, 0, 0, ''),
(22028, 7, 1, 'Axes 1H 277+', 3, 128, 400121, 0, 0, 0, ''),
(50001, 3, 0, 'Daggers', 1, 1, 22029, 0, 0, 0,NULL),
(22029, 1, 1, 'Daggers 200+', 3, 128, 400192, 0, 0, 0, ''),
(22029, 2, 1, 'Daggers 213+', 3, 128, 400193, 0, 0, 0, ''),
(22029, 3, 1, 'Daggers 232+', 3, 128, 400194, 0, 0, 0, ''),
(22029, 4, 1, 'Daggers 245+', 3, 128, 400195, 0, 0, 0, ''),
(22029, 5, 1, 'Daggers 251+', 3, 128, 400196, 0, 0, 0, ''),
(22029, 6, 1, 'Daggers 264+', 3, 128, 400197, 0, 0, 0, ''),
(22029, 7, 1, 'Daggers 277+', 3, 128, 400198, 0, 0, 0, ''),
(50001, 4, 0, 'Fist Weapon', 1, 1,22030,0, 0, 0,NULL),
(22030, 1, 1, 'Fist Weapon 200+', 3, 128, 400199, 0, 0, 0, ''),
(22030, 2, 1, 'Fist Weapon 213+', 3, 128, 400200, 0, 0, 0, ''),
(22030, 3, 1, 'Fist Weapon 232+', 3, 128, 400201, 0, 0, 0, ''),
(22030, 4, 1, 'Fist Weapon 245+', 3, 128, 400202, 0, 0, 0, ''),
(22030, 5, 1, 'Fist Weapon 251+', 3, 128, 400203, 0, 0, 0, ''),
(22030, 6, 1, 'Fist Weapon 264+', 3, 128, 400204, 0, 0, 0, ''),
(22030, 7, 1, 'Fist Weapon 277+', 3, 128, 400205, 0, 0, 0, '');
--50002 (Menu) Weapon Two-Hands
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(50002, 0, 0, 'Sword 2H', 1, 1,22031, 0, 0, 0,NULL),
(22031, 1, 1, 'Sword 2H 200+', 3, 128, 400122, 0, 0, 0, ''),
(22031, 2, 1, 'Sword 2H 213+', 3, 128, 400123, 0, 0, 0, ''),
(22031, 3, 1, 'Sword 2H 232+', 3, 128, 400124, 0, 0, 0, ''),
(22031, 4, 1, 'Sword 2H 245+', 3, 128, 400125, 0, 0, 0, ''),
(22031, 5, 1, 'Sword 2H 251+', 3, 128, 400126, 0, 0, 0, ''),
(22031, 6, 1, 'Sword 2H 264+', 3, 128, 400127, 0, 0, 0, ''),
(22031, 7, 1, 'Sword 2H 277+', 3, 128, 400128, 0, 0, 0, ''),
(50002, 1, 0, 'Maces 2H', 1, 1,22032,  0, 0, 0,NULL),
(22032, 1, 1, 'Maces 2H 200+', 3, 128, 400129, 0, 0, 0, ''),
(22032, 2, 1, 'Maces 2H 213+', 3, 128, 400130, 0, 0, 0, ''),
(22032, 3, 1, 'Maces 2H 232+', 3, 128, 400131, 0, 0, 0, ''),
(22032, 4, 1, 'Maces 2H 245+', 3, 128, 400132, 0, 0, 0, ''),
(22032, 5, 1, 'Maces 2H 251+', 3, 128, 400133, 0, 0, 0, ''),
(22032, 6, 1, 'Maces 2H 264+', 3, 128, 400134, 0, 0, 0, ''),
(22032, 7, 1, 'Maces 2H 277+', 3, 128, 400135, 0, 0, 0, ''),
(50002, 2, 0, 'Axes 2H', 1, 1,22033,  0, 0, 0,NULL),
(22033, 1, 1, 'Axes 2H 200+', 3, 128, 400136, 0, 0, 0, ''),
(22033, 2, 1, 'Axes 2H 213+', 3, 128, 400137, 0, 0, 0, ''),
(22033, 3, 1, 'Axes 2H 232+', 3, 128, 400138, 0, 0, 0, ''),
(22033, 4, 1, 'Axes 2H 245+', 3, 128, 400139, 0, 0, 0, ''),
(22033, 5, 1, 'Axes 2H 251+', 3, 128, 400140, 0, 0, 0, ''),
(22033, 6, 1, 'Axes 2H 264+', 3, 128, 400141, 0, 0, 0, ''),
(22033, 7, 1, 'Axes 2H 277+', 3, 128, 400142, 0, 0, 0, ''),
(50002, 3, 0, 'Polearms', 1, 1,22034,  0, 0, 0,NULL),
(22034, 1, 1, 'Polearms 200+', 3, 128, 400206, 0, 0, 0, ''),
(22034, 2, 1, 'Polearms 213+', 3, 128, 400207, 0, 0, 0, ''),
(22034, 3, 1, 'Polearms 232+', 3, 128, 400208, 0, 0, 0, ''),
(22034, 4, 1, 'Polearms 245+', 3, 128, 400209, 0, 0, 0, ''),
(22034, 5, 1, 'Polearms 251+', 3, 128, 400210, 0, 0, 0, ''),
(22034, 6, 1, 'Polearms 264+', 3, 128, 400211, 0, 0, 0, ''),
(22034, 7, 1, 'Polearms 277+', 3, 128, 400212, 0, 0, 0, ''),
(50002, 4, 0, 'Staff', 1, 1,22035, 0, 0, 0,NULL),
(22035, 1, 1, 'Staff 200+', 3, 128, 400213, 0, 0, 0, ''),
(22035, 2, 1, 'Staff 213+', 3, 128, 400214, 0, 0, 0, ''),
(22035, 3, 1, 'Staff 232+', 3, 128, 400215, 0, 0, 0, ''),
(22035, 4, 1, 'Staff 245+', 3, 128, 400216, 0, 0, 0, ''),
(22035, 5, 1, 'Staff 251+', 3, 128, 400217, 0, 0, 0, ''),
(22035, 6, 1, 'Staff 264+', 3, 128, 400218, 0, 0, 0, ''),
(22035, 7, 1, 'Staff 277+', 3, 128, 400219, 0, 0, 0, '');
--50003 (Menu) Weapon Off-Hands
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(50003, 0, 0, 'Shield', 1, 1,22036,  0, 0, 0,NULL),
(22036, 1, 1, 'Shield 200+', 3, 128, 400143, 0, 0, 0, ''),
(22036, 2, 1, 'Shield 213+', 3, 128, 400144, 0, 0, 0, ''),
(22036, 3, 1, 'Shield 232+', 3, 128, 400145, 0, 0, 0, ''),
(22036, 4, 1, 'Shield 245+', 3, 128, 400146, 0, 0, 0, ''),
(22036, 5, 1, 'Shield 251+', 3, 128, 400147, 0, 0, 0, ''),
(22036, 6, 1, 'Shield 264+', 3, 128, 400148, 0, 0, 0, ''),
(22036, 7, 1, 'Shield 277+', 3, 128, 400149, 0, 0, 0, ''),
(50003, 1, 0, 'Tome', 1, 1,22037, 0, 0, 0,NULL),
(22037, 1, 1, 'Tome 200+', 3, 128, 400150, 0, 0, 0, ''),
(22037, 2, 1, 'Tome 213+', 3, 128, 400151, 0, 0, 0, ''),
(22037, 3, 1, 'Tome 232+', 3, 128, 400152, 0, 0, 0, ''),
(22037, 4, 1, 'Tome 245+', 3, 128, 400153, 0, 0, 0, ''),
(22037, 5, 1, 'Tome 251+', 3, 128, 400154, 0, 0, 0, ''),
(22037, 6, 1, 'Tome 264+', 3, 128, 400155, 0, 0, 0, ''),
(22037, 7, 1, 'Tome 277+', 3, 128, 400156, 0, 0, 0, '');
--50004 (Menu) Weapon Off-Hands
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(50004, 0, 0, 'Gun', 1, 1, 22038,  0, 0, 0,NULL),
(22038, 1, 1, 'Gun 200+', 3, 128, 400157, 0, 0, 0, ''),
(22038, 2, 1, 'Gun 213+', 3, 128, 400158, 0, 0, 0, ''),
(22038, 3, 1, 'Gun 232+', 3, 128, 400159, 0, 0, 0, ''),
(22038, 4, 1, 'Gun 245+', 3, 128, 400160, 0, 0, 0, ''),
(22038, 5, 1, 'Gun 251+', 3, 128, 400161, 0, 0, 0, ''),
(22038, 6, 1, 'Gun 264+', 3, 128, 400162, 0, 0, 0, ''),
(22038, 7, 1, 'Gun 277+', 3, 128, 400163, 0, 0, 0, ''),
(50004, 1, 0, 'Crossbow', 1, 1, 22039,  0, 0, 0,NULL),
(22039, 1, 1, 'Crossbow 200+', 3, 128, 400164, 0, 0, 0, ''),
(22039, 2, 1, 'Crossbow 213+', 3, 128, 400165, 0, 0, 0, ''),
(22039, 3, 1, 'Crossbow 232+', 3, 128, 400166, 0, 0, 0, ''),
(22039, 4, 1, 'Crossbow 245+', 3, 128, 400167, 0, 0, 0, ''),
(22039, 5, 1, 'Crossbow 251+', 3, 128, 400168, 0, 0, 0, ''),
(22039, 6, 1, 'Crossbow 264+', 3, 128, 400169, 0, 0, 0, ''),
(22039, 7, 1, 'Crossbow 277+', 3, 128, 400170, 0, 0, 0, ''),
(50004, 2, 0, 'Bow', 1, 1, 22040,  0, 0, 0,NULL),
(22040, 1, 1, 'Bow 200+', 3, 128, 400171, 0, 0, 0, ''),
(22040, 2, 1, 'Bow 213+', 3, 128, 400172, 0, 0, 0, ''),
(22040, 3, 1, 'Bow 232+', 3, 128, 400173, 0, 0, 0, ''),
(22040, 4, 1, 'Bow 245+', 3, 128, 400174, 0, 0, 0, ''),
(22040, 5, 1, 'Bow 251+', 3, 128, 400175, 0, 0, 0, ''),
(22040, 6, 1, 'Bow 264+', 3, 128, 400176, 0, 0, 0, ''),
(22040, 7, 1, 'Bow 277+', 3, 128, 400177, 0, 0, 0, ''),
(50004, 3, 0, 'Thrown', 1, 1,22041,  0, 0, 0,NULL),
(22041, 1, 1, 'Thrown 200+', 3, 128, 400178, 0, 0, 0, ''),
(22041, 2, 1, 'Thrown 213+', 3, 128, 400179, 0, 0, 0, ''),
(22041, 3, 1, 'Thrown 232+', 3, 128, 400180, 0, 0, 0, ''),
(22041, 4, 1, 'Thrown 245+', 3, 128, 400181, 0, 0, 0, ''),
(22041, 5, 1, 'Thrown 251+', 3, 128, 400182, 0, 0, 0, ''),
(22041, 6, 1, 'Thrown 264+', 3, 128, 400183, 0, 0, 0, ''),
(22041, 7, 1, 'Thrown 277+', 3, 128, 400184, 0, 0, 0, ''),
(50004, 4, 0, 'Wand', 1, 1, 22042,  0, 0, 0,NULL),
(22042, 1, 1, 'Wand 200+', 3, 128, 400185, 0, 0, 0, ''),
(22042, 2, 1, 'Wand 213+', 3, 128, 400186, 0, 0, 0, ''),
(22042, 3, 1, 'Wand 232+', 3, 128, 400187, 0, 0, 0, ''),
(22042, 4, 1, 'Wand 245+', 3, 128, 400188, 0, 0, 0, ''),
(22042, 5, 1, 'Wand 251+', 3, 128, 400189, 0, 0, 0, ''),
(22042, 6, 1, 'Wand 264+', 3, 128, 400190, 0, 0, 0, ''),
(22042, 7, 1, 'Wand 277+', 3, 128, 400191, 0, 0, 0, '');