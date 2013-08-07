--Delete ALL--
DELETE FROM `npc_vendor` WHERE `entry`> 400000 AND `entry` < 410000; --NPC VENDOR
DELETE FROM `creature_template` WHERE `entry`> 400000 AND `entry` < 410000; --NPC creature_template
DELETE FROM `gossip_menu_option` WHERE `menu_id`> 21999 AND `menu_id`< 22999; --SUB-MENU

--售货员--
--200装等--
/*
-- 头	:		400001--
-- 肩膀 :		400002--
-- 披风 :		400003--
-- 胸甲 :		400004--
-- 护腕 :		400005--
-- 手套 :		400006--
-- 腰带 :		400007--
-- 裤子 :		400008--
-- 靴子 :		400009--
-- 戒指 :		400010--
-- 饰品+戒指+项链 :	400011--
-- 武器+圣物 :		400012----

*/
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(400001, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '头 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400002, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '肩膀 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400003, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '披风 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400004, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '胸甲 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400005, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '护腕 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400006, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '手套 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400007, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '腰带 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400008, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '裤子 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400009, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '靴子 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400010, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '戒指 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400011, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '饰品+项链 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400012, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '武器 200+', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400013, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '小号必备', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400014, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '杂货商人', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400015, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '施法材料', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400016, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '远程+盾牌+圣物+副手', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400017, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '备用 5', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400018, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '备用 6', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400019, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '备用 7', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400020, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '备用 8', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
(400021, 0, 0, 0, 0, 0, 18135, 0, 0, 0, '备用 9', 'www.xiaocaicai.com', '', 0, 88, 88, 2, 35, 35, 4225, 1, 1.14286, 0.2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
-----------------------------ITEM--VENDOR-------------------------------
--头 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400001);
REPLACE INTO `npc_vendor` SELECT 400001,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 1 AND `ItemLevel`= 200;
--肩膀 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400002);
REPLACE INTO `npc_vendor` SELECT 400002,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 3 AND `ItemLevel`= 200;
--披风 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400003);
REPLACE INTO `npc_vendor` SELECT 400003,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 16 AND `ItemLevel`= 200;
--胸甲 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400004);
REPLACE INTO `npc_vendor` SELECT 400004,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` in (5,20) AND `ItemLevel`= 200;
--护腕 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400005);
REPLACE INTO `npc_vendor` SELECT 400005,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 9 AND `ItemLevel`= 200;
--手套 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400006);
REPLACE INTO `npc_vendor` SELECT 400006,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 10 AND `ItemLevel`= 200;
--腰带 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400007);
REPLACE INTO `npc_vendor` SELECT 400007,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 6 AND `ItemLevel`= 200;
--裤子 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400008);
REPLACE INTO `npc_vendor` SELECT 400008,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 7 AND `ItemLevel`= 200;
--靴子 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400009);
REPLACE INTO `npc_vendor` SELECT 400009,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 8 AND `ItemLevel`= 200;
--戒指 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400010);
REPLACE INTO `npc_vendor` SELECT 400010,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` = 11 AND `ItemLevel`= 200;
--饰品+项链 200+
DELETE FROM `npc_vendor` WHERE (`entry`= 400011);
REPLACE INTO `npc_vendor` SELECT 400011,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` in(2,12) AND `ItemLevel`= 200;
--武器 200+
--Weapon
DELETE FROM `npc_vendor` WHERE (`entry`= 400012);
REPLACE INTO `npc_vendor` SELECT 400012,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` in(13,17,21) AND `ItemLevel`= 200;
--远程+盾牌+圣物 200+
--Weapon
DELETE FROM `npc_vendor` WHERE (`entry`= 400016);
REPLACE INTO `npc_vendor` SELECT 400016,0,`entry`,0,0,0
FROM `item_template` WHERE  `InventoryType` in(14,25,28,26,15,22,23) AND `ItemLevel`= 200;
--小号必备
DELETE FROM `npc_vendor` WHERE (`entry`= 400013);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400013, 42950, 0, 0, 0),
(400013, 42944, 0, 0, 0),
(400013, 42946, 0, 0, 0),
(400013, 42947, 0, 0, 0),
(400013, 42951, 0, 0, 0),
(400013, 42943, 0, 0, 0),
(400013, 42948, 0, 0, 0),
(400013, 48677, 0, 0, 0),
(400013, 42992, 0, 0, 0),
(400013, 48683, 0, 0, 0),
(400013, 48685, 0, 0, 0),
(400013, 48687, 0, 0, 0),
(400013, 48718, 0, 0, 0),
(400013, 48689, 0, 0, 0),
(400013, 42985, 0, 0, 0),
(400013, 42949, 0, 0, 0),
(400013, 42984, 0, 0, 0),
(400013, 42952, 0, 0, 0),
(400013, 42991, 0, 0, 0),
(400013, 48691, 0, 0, 0),
(400013, 42945, 0, 0, 0),
(400013, 48716, 0, 0, 0),
(400013, 44231, 0, 0, 0);
--杂货商
DELETE FROM `npc_vendor` WHERE (`entry`= 400014);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400014, 2901, 0, 0, 0),
(400014, 5956, 0, 0, 0),
(400014, 6219, 0, 0, 0),
(400014, 7005, 0, 0, 0),
(400014, 20815, 0, 0, 0),
(400014, 20824, 0, 0, 0),
(400014, 34722, 0, 0, 0),
(400014, 41164, 0, 0, 0),
(400014, 41165, 0, 0, 0),
(400014, 43231, 0, 0, 0),
(400014, 43233, 0, 0, 0),
(400014, 43235, 0, 0, 0),
(400014, 44452, 0, 0, 0),
(400014, 43523, 0, 0, 0);
--施法材料
DELETE FROM `npc_vendor` WHERE (`entry`= 400015);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(400015, 5565, 0, 0, 0),
(400015, 6265, 0, 0, 0),
(400015, 16583, 0, 0, 0),
(400015, 17020, 0, 0, 0),
(400015, 17021, 0, 0, 0),
(400015, 17026, 0, 0, 0),
(400015, 17028, 0, 0, 0),
(400015, 17029, 0, 0, 0),
(400015, 17031, 0, 0, 0),
(400015, 17032, 0, 0, 0),
(400015, 17033, 0, 0, 0),
(400015, 17034, 0, 0, 0),
(400015, 17035, 0, 0, 0),
(400015, 17036, 0, 0, 0),
(400015, 17037, 0, 0, 0),
(400015, 17038, 0, 0, 0),
(400015, 17056, 0, 0, 0),
(400015, 17057, 0, 0, 0),
(400015, 17058, 0, 0, 0),
(400015, 21177, 0, 0, 0),
(400015, 22147, 0, 0, 0),
(400015, 22148, 0, 0, 0),
(400015, 37201, 0, 0, 0),
(400015, 44605, 0, 0, 0),
(400015, 44614, 0, 0, 0),
(400015, 44615, 0, 0, 0);
--------------------------FINAL NPC -7-28456--------------------------------------
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(85000, 0, 0, 0, 0, 0, 28456, 0, 0, 0, '菜菜魔兽', 'www.xiaocaicai.com', '', 22000, 88, 88, 2, 35, 35, 4241, 1, 1.14286, 3, 0, 1, 1, 1, 1, 1, 1, 1, 1, 258, 8, 0, 0, 0, 0, 0, 1, 1, 1, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 34129, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1);
--------------------------MENU--FINAL NPC-----------------------------------
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(22000, 0, 0, '新手装备', 1, 1, 22001, 0, 0, 0,NULL),
(22000, 1, 0, '小号必备', 3, 128, 400013, 0, 0, 0,NULL),
(22000, 2, 0, '杂货商', 3, 128, 400014, 0, 0, 0,NULL),
(22000, 3, 0, '施法材料', 3, 128, 400015, 0, 0, 0,NULL);
-----------------------------END---FINAL NPC-------------------------------
--------------------------MENU--新手装备-----------------------------------
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
(22001, 0, 1, '头部-', 3, 128, 400001, 0, 0, 0, ''),
(22001, 1, 1, '肩膀-', 3, 128, 400002, 0, 0, 0, ''),
(22001, 2, 1, '披风--', 3, 128, 400003, 0, 0, 0, ''),
(22001, 4, 1, '胸甲', 3, 128, 400004, 0, 0, 0, ''),
(22001, 5, 1, '护腕-', 3, 128, 400005, 0, 0, 0, ''),
(22001, 6, 1, '手套--', 3, 128, 400006, 0, 0, 0, ''),
(22001, 7, 1, '腰带--', 3, 128, 400007, 0, 0, 0, ''),
(22001, 8, 1, '裤子----', 3, 128, 400008, 0, 0, 0, ''),
(22001, 9, 1, '靴子--', 3, 128, 400009, 0, 0, 0, ''),
(22001, 10, 1, '戒指--', 3, 128, 400010, 0, 0, 0, ''),
(22001, 11, 1, '饰品+项链-', 3, 128, 400011, 0, 0, 0, ''),
(22001, 12, 1, '武器', 3, 128, 400012, 0, 0, 0, ''),
(22001, 13, 1, '远程+盾牌+圣物+副手', 3, 128, 400016, 0, 0, 0, '');
-----------------------------END---新手装--------------------------------