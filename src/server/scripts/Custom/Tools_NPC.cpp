/*

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES('900000','0','0','0','0','0','26867','0','0','0','Tools NPC','- by mthsena -','Speak','0','80','80','0','35','35','1','1','1.14286','2','3','0','0','0','0','1','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','1','0','0','0','0','0','0','0','0','1','0','0','Tools_NPC','1');

- Made by mthsena

*/

#include "ScriptPCH.h"

class Tools_NPC : public CreatureScript
{
public:
    Tools_NPC() : CreatureScript("Tools_NPC") { }

    bool OnGossipHello(Player *player, Creature *creature)
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "加血加蓝　", GOSSIP_SENDER_MAIN, 1);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "|cff8000FF重置副本（五千金一次）　", GOSSIP_SENDER_MAIN, 2);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "重置技能冷却　", GOSSIP_SENDER_MAIN, 3);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "解除战斗状态　", GOSSIP_SENDER_MAIN, 4);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "移除虚弱　", GOSSIP_SENDER_MAIN, 5);
//      player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "绑定炉石　", GOSSIP_SENDER_MAIN, 6);
//		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "其他　", GOSSIP_SENDER_MAIN, 7);
		player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "角色修改　", GOSSIP_SENDER_MAIN, 8);
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "拜拜　", GOSSIP_SENDER_MAIN, 9);
        player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
        return true;
    }
    bool OnGossipSelect(Player *player, Creature *creature, uint32 sender, uint32 action)
    {
		if(player->GetMoney()<100000)
		{
			player->GetSession()->SendAreaTriggerMessage("先存够钱再来找我吧　");
			player->CLOSE_GOSSIP_MENU();
			return false;
		}
        player->PlayerTalkClass->ClearMenus();
        switch(action)
        {
        case 1: // Restore HP and MP
            if(player->IsInCombat())
            {
                creature->MonsterWhisper("你正在战斗状态　", player->GetGUID(), false);
                player->CLOSE_GOSSIP_MENU();
                return false;
            }
            else if(player->getPowerType() == POWER_MANA)
                player->SetPower(POWER_MANA, player->GetMaxPower(POWER_MANA));

            player->SetHealth(player->GetMaxHealth());
			player->ModifyMoney(int32(-100000));
            player->CLOSE_GOSSIP_MENU();
            break;
        case 2: // Reset Instances
		if(player->GetMoney()<50000000)
		{
			player->GetSession()->SendAreaTriggerMessage("穷挫矮滚粗　");
			player->CLOSE_GOSSIP_MENU();
			return false;
		}
            for (uint8 i = 0; i < MAX_DIFFICULTY; ++i)
            {
                Player::BoundInstancesMap &binds = player->GetBoundInstances(Difficulty(i));
                for (Player::BoundInstancesMap::iterator itr = binds.begin(); itr != binds.end();)
                {
                    player->UnbindInstance(itr, Difficulty(i));
                }
            }
			player->ModifyMoney(int32(-50000000));
            player->CLOSE_GOSSIP_MENU();
            break;
        case 3: // Reset Cooldowns
            if(player->IsInCombat())
            {
                creature->MonsterWhisper("你正在战斗状态　", player->GetGUID(), false);
                player->CLOSE_GOSSIP_MENU();
                return false;
            }

            player->RemoveAllSpellCooldown();
			player->ModifyMoney(int32(-100000));
            player->CLOSE_GOSSIP_MENU();
            break;
        case 4: // Reset Combat
            player->CombatStop();
			player->ModifyMoney(int32(-100000));
            player->CLOSE_GOSSIP_MENU();
            break;
        case 5: // Remove Sickness
            if(player->HasAura(15007))
                player->RemoveAura(15007);
			player->ModifyMoney(int32(-100000));
            player->CLOSE_GOSSIP_MENU();
            break;
		case 6: // Repair Items
            player->SaveRecallPosition();
            player->CLOSE_GOSSIP_MENU();
            break;
        case 7: // Others
			if(player->GetMoney()<500000)
			{
				player->GetSession()->SendAreaTriggerMessage("五十金一次，金钱不足　");
				player->CLOSE_GOSSIP_MENU();
				return false;
			}
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "重置天赋（五十金一次）　", GOSSIP_SENDER_MAIN, 71);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "重置技能（五十金一次）　", GOSSIP_SENDER_MAIN, 72);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "返回　", GOSSIP_SENDER_MAIN, 73);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
            break;
        case 8: // Character
			if(player->GetMoney()<5000000)
			{
				player->GetSession()->SendAreaTriggerMessage("角色修改服务五百金起步,存够再来　");
				player->CLOSE_GOSSIP_MENU();
				return false;
			}
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "修改阵营（五千）　", GOSSIP_SENDER_MAIN, 81);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "修改角色名（两千）　", GOSSIP_SENDER_MAIN, 82);
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "修改种族（一千）　", GOSSIP_SENDER_MAIN, 83);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "返回　", GOSSIP_SENDER_MAIN, 73);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
            break;
        case 9:
            player->CLOSE_GOSSIP_MENU();
            break;
        case 71: // Reset Talents
			player->ModifyMoney(int32(-500000));
            player->resetTalents(true);
            player->SendTalentsInfoData(false);
            player->CLOSE_GOSSIP_MENU();
            break;
        case 72: // Reset Spells
			player->ModifyMoney(int32(-500000));
            player->resetSpells();
            player->CLOSE_GOSSIP_MENU();
            break;
		case 81: // AT_LOGIN_CHANGE_FACTION
			if(player->GetMoney()<50000000)
			{
				player->GetSession()->SendAreaTriggerMessage("你不够五千金　");
				player->CLOSE_GOSSIP_MENU();
				return false;
			}
			player->ModifyMoney(int32(-50000000));
            player->SetAtLoginFlag(AT_LOGIN_CHANGE_FACTION);
			player->GetSession()->SendAreaTriggerMessage("成功！重新登录即可修改　");
            player->CLOSE_GOSSIP_MENU();
            break;
        case 82: // AT_LOGIN_RENAME
			if(player->GetMoney()<20000000)
			{
				player->GetSession()->SendAreaTriggerMessage("你不够两千金　");
				player->CLOSE_GOSSIP_MENU();
				return false;
			}
			player->ModifyMoney(int32(-20000000));
			player->SetAtLoginFlag(AT_LOGIN_RENAME);
			player->GetSession()->SendAreaTriggerMessage("成功！重新登录即可修改　");
            player->CLOSE_GOSSIP_MENU();
            break;
		case 83: // AT_LOGIN_CHANGE_RACE
			if(player->GetMoney()<10000000)
			{
				player->GetSession()->SendAreaTriggerMessage("你不够一千金　");
				player->CLOSE_GOSSIP_MENU();
				return false;
			}
			player->ModifyMoney(int32(-10000000));
            player->SetAtLoginFlag(AT_LOGIN_CHANGE_RACE);
			player->GetSession()->SendAreaTriggerMessage("成功！重新登录即可修改　");
            player->CLOSE_GOSSIP_MENU();
            break;
        case 73: // ...Back
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "加血加蓝　", GOSSIP_SENDER_MAIN, 1);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "重置副本　", GOSSIP_SENDER_MAIN, 2);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "重置技能冷却　", GOSSIP_SENDER_MAIN, 3);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "解除战斗状态　", GOSSIP_SENDER_MAIN, 4);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "移除虚弱　", GOSSIP_SENDER_MAIN, 5);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "修理物品　", GOSSIP_SENDER_MAIN, 6);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "其他　", GOSSIP_SENDER_MAIN, 7);
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "角色修改　", GOSSIP_SENDER_MAIN, 8);
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_INTERACT_1, "拜拜　", GOSSIP_SENDER_MAIN, 9);
            player->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, creature->GetGUID());
            break;
        }
        return true;
    }
};

void AddSC_Tools_NPC()
{
    new Tools_NPC();
}