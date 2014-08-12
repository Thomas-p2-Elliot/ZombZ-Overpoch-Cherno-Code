#include "CfgLootSmall.hpp"
/*Needs more work as I've added the new groups typea will work with P2 to get it working
with his files correctly, Also will add all weapons + ammo types that work ingame correctly*/
class CfgLoot {
	trash[] = {
		{"TrashTinCan",0.5},
		{"TrashJackDaniels",0.05},
		{"ItemSodaEmpty",0.25},
		{"ItemTrashToiletpaper",0.1},
		{"ItemTrashRazor",0.1}
	};
	civilian[] = {
		{"FoodCanUnlabeled",0.07},
		{"TrashJackDaniels",0.08},
		{"ItemSodaEmpty",0.08},
		{"ItemSodaCoke",0.09},
		{"ItemSodaPepsi",0.09},
		{"FoodCanBakedBeans",0.05},
		{"FoodCanSardines",0.05},
		{"FoodCanFrankBeans",0.05},
		{"FoodCanPasta",0.05},
		{"8Rnd_9x18_Makarov",0.07},
		{"7Rnd_45ACP_1911",0.05},
		{"2Rnd_shotgun_74Slug",0.05},
		{"2Rnd_shotgun_74Pellets",0.05},
		{"ItemBandage",0.06},
		{"ItemPainkiller",0.06},
		{"FoodBioMeat",0.01},
		{"8Rnd_9x18_MakarovSD",0.01},
		{"ItemDocument",0.03}
	};
	office2[] = {
		{"FoodCanUnlabeled",0.07},
		{"TrashJackDaniels",0.08},
		{"ItemSodaEmpty",0.08},
		{"ItemSodaCoke",0.09},
		{"ItemSodaPepsi",0.09},
		{"FoodCanBakedBeans",0.05},
		{"FoodCanSardines",0.05},
		{"FoodCanFrankBeans",0.05},
		{"FoodCanPasta",0.05},
		{"8Rnd_9x18_Makarov",0.07},
		{"7Rnd_45ACP_1911",0.05},
		{"2Rnd_shotgun_74Slug",0.05},
		{"2Rnd_shotgun_74Pellets",0.05},
		{"ItemBandage",0.06},
		{"ItemPainkiller",0.06},
		{"FoodBioMeat",0.01},
		{"8Rnd_9x18_MakarovSD",0.01},
		{"ItemBriefcaseEmpty",0.01},
		{"ItemDocument",0.02}
	};
	food[] = {
		{"TrashTinCan",0.09},
		{"TrashJackDaniels",0.12},
		{"ItemSodaEmpty",0.12},
		{"ItemSodaCoke",0.09},
		{"ItemSodaPepsi",0.11},
		{"FoodCanBakedBeans",0.07},
		{"FoodCanSardines",0.07},
		{"FoodCanFrankBeans",0.07},
		{"FoodCanPasta",0.07},
		{"FoodCanUnlabeled",0.1},
		{"FoodPistachio",0.05},
		{"FoodNutmix",0.04}
	};
	office[] = {
		{"FoodCanUnlabeled",0.06},
		{"ItemSodaEmpty",0.06},
		{"ItemSodaCoke",0.06},
		{"ItemSodaPepsi",0.04},
		{"TrashJackDaniels",0.04},
		{"FoodCanBakedBeans",0.01},
		{"FoodCanSardines",0.01},
		{"FoodCanFrankBeans",0.01},
		{"FoodCanPasta",0.01},
		{"ItemWaterbottleUnfilled",0.01},
		{"ItemWaterbottle",0.01},
		{"ItemBandage",0.07},
		{"7Rnd_45ACP_1911",0.03},
		{"5x_22_LR_17_HMR",0.01},
		{"10x_303",0.04},
		{"6Rnd_45ACP",0.04},
		{"2Rnd_shotgun_74Slug",0.05},
		{"2Rnd_shotgun_74Pellets",0.05},
		{"8Rnd_9x18_Makarov",0.08},
		{"15Rnd_W1866_Slug",0.02},
		{"WoodenArrow",0.04},
		{"HandRoadFlare",0.07},
		{"ItemPainkiller",0.02},
		{"HandChemGreen",0.01},
		{"HandChemBlue",0.03},
		{"HandChemRed",0.03},
		{"ItemHeatPack",0.03},
		{"ItemLockbox",0.04},
		{"ItemDocument",0.02}
	};
	generic[] = {
		{"FoodCanUnlabeled",0.06},
		{"ItemSodaEmpty",0.06},
		{"ItemSodaCoke",0.06},
		{"ItemSodaPepsi",0.04},
		{"TrashJackDaniels",0.04},
		{"FoodCanBakedBeans",0.01},
		{"FoodCanSardines",0.01},
		{"FoodCanFrankBeans",0.01},
		{"FoodCanPasta",0.01},
		{"ItemWaterbottleUnfilled",0.01},
		{"ItemWaterbottle",0.01},
		{"ItemBandage",0.11},
		{"7Rnd_45ACP_1911",0.03},
		{"5x_22_LR_17_HMR",0.01},
		{"10x_303",0.04},
		{"6Rnd_45ACP",0.04},
		{"2Rnd_shotgun_74Slug",0.05},
		{"2Rnd_shotgun_74Pellets",0.05},
		{"8Rnd_9x18_Makarov",0.09},
		{"15Rnd_W1866_Slug",0.02},
		{"WoodenArrow",0.04},
		{"HandRoadFlare",0.07},
		{"ItemPainkiller",0.02},
		{"HandChemGreen",0.01},
		{"HandChemBlue",0.03},
		{"HandChemRed",0.03},
		{"ItemHeatPack",0.04}
	};
	medical[] = {
		{"ItemBandage",0.4},
		{"ItemPainkiller",0.15},
		{"ItemMorphine",0.2},
		{"ItemEpinephrine",0.1},
		{"ItemAntibiotic",0.1},
		{"ItemHeatPack",0.05}
	};
	hospital[] = {
		{"ItemBandage",0.33},
		{"ItemPainkiller",0.16},
		{"ItemMorphine",0.13},
		{"ItemEpinephrine",0.09},
		{"ItemBloodbag",0.17},
		{"ItemAntibiotic",0.12}
	};
	military[] = {
		{"FoodCanUnlabeled",0.07},
		{"ItemSodaEmpty",0.04},
		{"ItemSodaCoke",0.01},
		{"ItemSodaPepsi",0.01},
		{"ItemBandage",0.04},
		{"ItemAntibiotic",0.04},
		{"ItemPainkiller",0.04},
		{"ItemMorphine",0.01},
		{"30Rnd_556x45_Stanag",0.04},
		{"20Rnd_762x51_DMR",0.04},
		{"17Rnd_9x19_glock17",0.05},
		{"15Rnd_9x19_M9SD",0.01},
		{"15Rnd_9x19_M9",0.02},
		{"30Rnd_762x39_AK47",0.04},
		{"30Rnd_545x39_AK",0.04},
		{"5Rnd_762x51_M24",0.01},
		{"5Rnd_86x70_L115A1",0.01},
		{"8Rnd_B_Beneli_74Slug",0.04},
		{"1Rnd_HE_M203",0.01},
		{"FlareWhite_M203",0.01},
		{"FlareGreen_M203",0.01},
		{"1Rnd_Smoke_M203",0.01},
		{"200Rnd_556x45_M249",0.01},
		{"HandGrenade_west",0.01},
		{"HandGrenade_east",0.01},
		{"SmokeShell",0.04},
		{"SmokeShellRed",0.02},
		{"SmokeShellGreen",0.02},
		{"8Rnd_B_Beneli_Pellets",0.04},
		{"30Rnd_556x45_StanagSD",0.01},
		{"30Rnd_9x19_MP5",0.02},
		{"30Rnd_9x19_MP5SD",0.01},
		{"100Rnd_762x51_M240",0.01},
		{"HandChemGreen",0.02},
		{"HandChemBlue",0.02},
		{"HandChemRed",0.02},
		{"ItemHeatPack",0.04},
		{"FoodMRE",0.03},
		{"8Rnd_9x18_MakarovSD",0.01},
		{"20Rnd_B_765x17_Ball",0.04},
		{"30Rnd_9x19_UZI_SD",0.01},
		{"ItemDocument",0.02}
	};
	militarypilot[] = {
		{"FoodCanUnlabeled",0.06},
		{"ItemSodaEmpty",0.04},
		{"ItemSodaCoke",0.01},
		{"ItemSodaPepsi",0.01},
		{"ItemBandage",0.04},
		{"ItemAntibiotic",0.04},
		{"ItemPainkiller",0.04},
		{"ItemMorphine",0.01},
		{"30Rnd_556x45_Stanag",0.04},
		{"20Rnd_762x51_DMR",0.04},
		{"17Rnd_9x19_glock17",0.05},
		{"15Rnd_9x19_M9SD",0.01},
		{"15Rnd_9x19_M9",0.02},
		{"30Rnd_762x39_AK47",0.04},
		{"30Rnd_545x39_AK",0.04},
		{"5Rnd_762x51_M24",0.01},
		{"5Rnd_86x70_L115A1",0.01},
		{"8Rnd_B_Beneli_74Slug",0.04},
		{"1Rnd_HE_M203",0.01},
		{"FlareWhite_M203",0.01},
		{"FlareGreen_M203",0.01},
		{"1Rnd_Smoke_M203",0.01},
		{"200Rnd_556x45_M249",0.01},
		{"HandGrenade_west",0.01},
		{"HandGrenade_east",0.01},
		{"SmokeShell",0.04},
		{"SmokeShellRed",0.02},
		{"SmokeShellGreen",0.02},
		{"8Rnd_B_Beneli_Pellets",0.04},
		{"30Rnd_556x45_StanagSD",0.01},
		{"30Rnd_9x19_MP5",0.02},
		{"30Rnd_9x19_MP5SD",0.01},
		{"100Rnd_762x51_M240",0.01},
		{"HandChemGreen",0.02},
		{"HandChemBlue",0.02},
		{"HandChemRed",0.02},
		{"ItemHeatPack",0.04},
		{"FoodMRE",0.03},
		{"8Rnd_9x18_MakarovSD",0.01},
		{"20Rnd_B_765x17_Ball",0.04},
		{"30Rnd_9x19_UZI_SD",0.01},
		{"ItemHotwireKit",0.03}
	};
	policeman[] = {
		{"ItemBandage",0.3},
		{"7Rnd_45ACP_1911",0.08},
		{"6Rnd_45ACP",0.08},
		{"15Rnd_W1866_Slug",0.14},
		{"8Rnd_B_Beneli_Pellets",0.16},
		{"HandRoadFlare",0.07},
		{"8Rnd_9x18_MakarovSD",0.01},
		{"ItemComboLock",0.05},
		{"SmokeShell",0.04},
		{"FoodMRE",0.04},
		{"ItemHotwireKit",0.03},
		{"ItemDocument",0.02}
	};
	hunter[] = {
		{"ItemBandage",0.4},
		{"5x_22_LR_17_HMR",0.15},
		{"7Rnd_45ACP_1911",0.03},
		{"10x_303",0.1},
		{"ItemWaterbottleUnfilled",0.05},
		{"WoodenArrow",0.2},
		{"ItemHeatPack",0.02},
		{"FoodMRE",0.01},
		{"FoodNutmix",0.02},
		{"ItemDocument",0.01},
		{"ItemMixOil",0.01}
	};
	worker[] = {
		{"FoodCanUnlabeled",0.09},
		{"TrashJackDaniels",0.09},
		{"ItemSodaEmpty",0.1},
		{"ItemSodaCoke",0.1},
		{"ItemSodaPepsi",0.1},
		{"FoodCanBakedBeans",0.06},
		{"FoodCanSardines",0.06},
		{"FoodCanFrankBeans",0.06},
		{"FoodCanPasta",0.06},
		{"ItemBandage",0.1},
		{"ItemPainkiller",0.06},
		{"ItemWire",0.01},
		{"ItemTankTrap",0.03},
		{"ItemComboLock",0.04},
		{"ItemSledgeHead",0.02},
		{"ItemDocument",0.02}
	};
	clothes[] = {
		{"Skin_RU_Policeman_DZ",0.11},
		{"Skin_Pilot_EP1_DZ",0.1},
		{"Skin_Functionary1_EP1_DZ",0.1},
		{"Skin_Priest_DZ",0.1},
		{"Skin_Rocker1_DZ",0.07},
		{"Skin_Rocker2_DZ",0.07},
		{"Skin_Rocker3_DZ",0.08},
		{"Skin_Rocker4_DZ",0.08},
		{"Skin_SurvivorW3_DZ",0.09},
		{"Skin_SurvivorWpink_DZ",0.09},
		{"Skin_SurvivorWurban_DZ",0.07},
		{"Skin_INS_Bardak_DZ",0.02},
		{"Skin_INS_Worker2_DZ",0.02},
		{"Skin_Sniper1_DZ","magazine",0.01}
	};
	militaryclothes[] = {
		{"Skin_Camo1_DZ",0.09},
		{"Skin_Sniper1_DZ",0.08},
		{"Skin_Rocket_DZ",0.05},
		{"Skin_Soldier1_DZ",0.5},
		{"Skin_Drake_Light_DZ",0.07},
		{"Skin_Soldier_TL_PMC_DZ",0.07},
		{"Skin_Soldier_Sniper_PMC_DZ",0.05},
		{"Skin_Soldier_Bodyguard_AA12_PMC_DZ",0.07},
		{"Skin_CZ_Special_Forces_GL_DES_EP1_DZ",0.08},
		{"Skin_FR_OHara_DZ",0.08},
		{"Skin_FR_Rodriguez_DZ",0.09},
		{"Skin_CZ_Soldier_Sniper_EP1_DZ",0.04},
		{"Skin_Graves_Light_DZ",0.09},
		{"Skin_INS_Soldier_AR_DZ",0.05},
		{"Skin_INS_Soldier_CO_DZ",0.04}
	};
	specialclothes[] = {
		{"Skin_Ins_Soldier_GL_DZ",0.05},
		{"Skin_GUE_Commander_DZ",0.08},
		{"Skin_Bandit1_DZ",0.08},
		{"Skin_Bandit2_DZ",0.06},
		{"Skin_BanditW1_DZ",0.07},
		{"Skin_BanditW2_DZ",0.07},
		{"Skin_TK_INS_Soldier_EP1_DZ",0.05},
		{"Skin_TK_INS_Warlord_EP1_DZ",0.07},
		{"Skin_SurvivorWcombat_DZ",0.08},
		{"Skin_SurvivorWdesert_DZ",0.08},
		{"Skin_GUE_Soldier_MG_DZ",0.05},
		{"Skin_GUE_Soldier_Sniper_DZ",0.04},
		{"Skin_GUE_Soldier_Crew_DZ",0.04},
		{"Skin_GUE_Soldier_CO_DZ",0.04},
		{"Skin_GUE_Soldier_2_DZ",0.04},
		{"Skin_TK_Special_Forces_MG_EP1_DZ",0.02},
		{"Skin_TK_Soldier_Sniper_EP1_DZ",0.02},
		{"Skin_TK_Commander_EP1_DZ",0.02},
		{"Skin_RU_Soldier_Crew_DZ",0.02},
		{"Skin_INS_Lopotev_DZ",0.02}
	};
	tents[] = {
		{"WeaponHolder_ItemTentOld",0.34},
		{"WeaponHolder_ItemTentDomed",0.33},
		{"WeaponHolder_ItemTentDomed2",0.33}
	};
	backpacks[] = {
		{"DZ_Assault_Pack_EP1",0.22},
		{"DZ_Czech_Vest_Puch",0.2},
		{"DZ_TerminalPack_EP1",0.18},
		{"DZ_ALICE_Pack_EP1",0.16},
		{"DZ_TK_Assault_Pack_EP1",0.13},
		{"DZ_CompactPack_EP1",0.11}
	};
	militarybackpacks[] = {
		{"DZ_British_ACU",0.3},
		{"DZ_GunBag_EP1",0.25},
		{"DZ_CivilBackpack_EP1",0.2},
		{"DZ_Backpack_EP1",0.15},
		{"DZ_LargeGunBag_EP1",0.1}
	};
	pistols[] = {
		{"MakarovSD",0.04}, 
		{"Sa61_EP1",0.04}, 
		{"vil_SKS",0.04}, 
		{"vil_Tt33",0.04}, 
		{"Vil_PYA",0.04}, 
		{"vil_M76",0.04}, 
		{"vil_B_HP",0.04}, 
		{"vil_USP",0.04}, 
		{"vil_APS",0.04}, 
		{"RH_g18",0.04}, 
		{"RH_g17",0.04}, 
		{"RH_g19",0.04}, 
		{"RH_g19t",0.04}, 
		{"RH_vz61",0.04}, 
		{"RH_tec9",0.04}, 
		{"RH_mk2",0.04}, 
		{"RH_m1911",0.04}, 
		{"RH_usp",0.04}, 
		{"RH_browninghp",0.04}, 
		{"RH_p226",0.04}, 
		{"Colt1911",0.04}, 
		{"RH_p226s",0.04}, 
		{"RH_p38",0.04}, 
		{"RH_ppk",0.04}, 
		{"RH_mk22",0.04}, 
		{"DDOPP_X3",0.04}, 
		{"DDOPP_X3_b",0.04}, 
		{"RH_uspm",0.04}, 
		{"RH_anac",0.04}, 
		{"RH_python",0.04}, 
		{"revolver_gold_EP1",0.04}
	};
	shotgunsingleshot[] = {
		{"Winchester1866",0.25},
		{"LeeEnfield",0.2},
		{"MR43",0.2},
		{"Saiga12K",0.13},
		{"Remington870_lamp",0.1},
		{"Crossbow_DZ",0.07},
		{"M1014",0.05},
		{"Crossbow_DZ",0.1}, 
		{"MR43",0.1}, 
		{"Remington870",0.1}, 
		{"Remington870_lamp",0.1}, 
		{"Winchester1866",0.1}
	};
	farmweapons[] = {
		{"Winchester1866",0.25},
		{"LeeEnfield",0.2},
		{"MR43",0.19},
		{"Saiga12K",0.13},
		{"Remington870_lamp",0.1},
		{"Crossbow_DZ",0.07},
		{"huntingrifle",0.05},
		{"Chainsaw",0.01},
		{"huntingrifle",0.02},  
		{"vil_M70",0.02}, 
		{"vil_SKS",0.02}
	};
	sniperrifles[] = {
		{"huntingrifle",0.09},
		{"BAF_LRR_scoped",0.07},
		{"M107_DZ",0.05},
		{"KSVK_DZE",0.05},
		{"VSS_vintorez",0.04}
	};
	submachinegun[] = {
		{"bizon",0.2},
		{"Sa61_EP1",0.2},
		{"MP5A5",0.13},
		{"bizon_silenced",0.1},
		{"MP5SD",0.05}
	};
	militaryshotguns[] = {
		{"Saiga12K",0.25},
		{"Remington870_lamp",0.35},
		{"M1014",0.4}
	};
	miscguns[] = {
		//gorsy additions   
		{"RH_ctar21",0.01}, 
		{"RH_m21",0.01},
		{"vil_apssd",0.01}, 
		{"vil_VAL_C",0.01}, 
		{"vil_Vikhr",0.01}, 
		{"vil_vsk94",0.01},   
		{"vil_AKMSB",0.01}, 
		{"vil_SVU_A",0.01}, 
		{"vil_PSL1",0.01}, 
		{"vil_M76",0.01}, 
		{"vil_M91",0.01},  
		{"vil_Abakan_P29",0.01}, 
		{"vil_ak12_ap",0.01},  
		{"vil_sg542f",0.01},   
		{"vil_SR25",0.01} 
	};
	//^Need To Change These Above!^
	//Start of Deejay's Custom Loot Modifications
	ACR_Weaps[] = {
		{"FHQ_ACR_BLK_CCO_F",0.05}, 
		{"FHQ_ACR_BLK_CCO_SD_F",0.05}, 
		{"FHQ_ACR_BLK_RCO_F",0.05}, 
		{"FHQ_ACR_BLK_HWS_GL_SD_F",0.05}, 
		{"FHQ_ACR_BLK_G33_F",0.05}, 
		{"FHQ_ACR_BLK_HAMR_SD_F",0.05},
		{"FHQ_ACR_SNW_IRN_SD_F",0.01}, 
		{"FHQ_ACR_SNW_CCO_SD_F",0.01}, 
		{"FHQ_ACR_SNW_RCO_F",0.01}, 
		{"FHQ_ACR_SNW_HWS_SD_F",0.01}, 
		{"FHQ_ACR_SNW_HAMR_SD_F",0.01}, 
		{"FHQ_ACR_TAN_CCO_GL_SD_F",0.01}, 
		{"FHQ_ACR_TAN_RCO_F",0.01}, 
		{"FHQ_ACR_TAN_HWS_F",0.01}, 
		{"FHQ_ACR_TAN_G33_GL_SD_F",0.01}, 
		{"FHQ_ACR_TAN_HAMR_SD_F",0.01}, 
		{"FHQ_ACR_WDL_IRN_GL_SD_F",0.01}, 
		{"FHQ_ACR_WDL_CCO_SD_F",0.01}, 
		{"FHQ_ACR_WDL_RCO_F",0.01}, 
		{"FHQ_ACR_WDL_RCO_SD_F",0.01}, 
		{"FHQ_ACR_WDL_HWS_F",0.01}, 
		{"FHQ_ACR_WDL_HWS_SD_F",0.01}, 
		{"FHQ_ACR_WDL_G33_F",0.01}, 
		{"FHQ_ACR_WDL_G33_SD_F",0.01}, 
		{"FHQ_ACR_WDL_HAMR",0.01}, 
		{"FHQ_ACR_WDL_HAMR_SD_F",0.01}, 
		{"FHQ_ACR_WDL_HAMR_GL_SD",0.01},
		{"RH_acraim",0.01}, 
		{"RH_acreotech",0.01}, 
		{"RH_acracog",0.01}, 
		{"RH_acrbaim",0.01}, 
		{"RH_acrbeotech",0.01}, 
		{"RH_acrbacog",0.01}, 
		{"RH_acrbglaim",0.01}
	};
	MK16_Weaps[] = {
		{"SCAR_L_STD_Mk4CQT",0.01}, 
		{"SCAR_L_STD_EGLM_RCO",0.01}, 
		{"SCAR_L_CQC_EGLM_Holo",0.01}, 
		{"SCAR_L_STD_HOLO",0.01}, 
		{"SCAR_L_CQC_CCO_SD",0.01}	
	};
	MK17_Weaps[] = {
		{"SCAR_H_CQC_CCO",0.05}, 
		{"SCAR_H_CQC_CCO_SD",0.05}, 
		{"SCAR_H_STD_EGLM_Spect",0.05}, 
		{"SCAR_H_LNG_Sniper",0.05}, 
		{"SCAR_H_LNG_Sniper_SD",0.05}
	};
	SC2_Weaps[] = {
		{"RH_sc2acog",0.05}, 
		{"RH_sc2aim",0.05}, 
		{"RH_sc2eot",0.05}, 
		{"RH_sc2shd",0.05}, 
		{"RH_sc2sp",0.05}
	};
	HK416_Weaps[] = {
		{"vil_HK416_Aim",0.01}, 
		{"vil_HK416_EOT",0.01}, 
		{"vil_HK416_GL",0.01}, 
		{"VIL_HK416_EDR",0.01},
		{"RH_hk416s",0.01}, 
		{"RH_hk416saim",0.01}, 
		{"RH_hk416seotech",0.01}, 
		{"RH_hk416sacog",0.01}, 
		{"RH_hk416sd",0.01}, 
		{"RH_hk416sdaim",0.01}, 
		{"RH_hk416sdeotech",0.01}, 
		{"RH_hk416aim",0.01}, 
		{"RH_hk416acog",0.01}
	};
	HK417_Weaps[] = {
		{"RH_hk417",0.05},
		{"vil_HK417s",0.01},
		{"RH_hk417aim",0.05}, 
		{"RH_hk417eotech",0.05}, 
		{"RH_hk417acog",0.05}, 
		{"RH_hk417saim",0.05}, 
		{"RH_hk417seotech",0.05}, 
		{"RH_hk417sacog",0.05}, 
		{"RH_hk417sd",0.05}, 
		{"RH_hk417sdaim",0.05}, 
		{"RH_hk417sdeotech",0.05}, 
		{"RH_hk417sdacog",0.05}, 
		{"RH_hk417sgl",0.05}, 
		{"RH_hk417sglaim",0.05}, 
		{"RH_hk417sgleotech",0.05}, 
		{"RH_hk417sglacog",0.05},
		{"RH_hk417sp",0.01}, 
		{"RH_hk417sdsp",0.01} 
	};
	Mas_Weaps[] = {
		{"RH_massd",0.01}, 
		{"RH_massdaim",0.01}, 
		{"RH_massdeotech",0.01}, 
		{"RH_massdacog",0.01},
		{"RH_masbsd",0.05}, 
		{"RH_masbsdaim",0.05}, 
		{"RH_masbsdeotech",0.05}, 
		{"RH_masbsdacog",0.05},
		{"RH_masbaim",0.01}, 
		{"RH_masbeotech",0.01}, 
		{"RH_masbacog",0.01},
		{"RH_maseotech",0.01}, 
		{"RH_masacog",0.01} 
	};
	G36_Weaps[] = {
		{"vil_G36KSKES",0.05},
		{"vil_G36VA4Eot",0.01}, 
		{"vil_G36KSK",0.01}, 
		{"vil_G36KSKdes",0.01}, 
		{"vil_G36KSKdesES",0.01},  
		{"vil_G36KES",0.01}, 
		{"vil_G36KV3",0.01}, 
		{"vil_G36KV3Des",0.01},
		{"vil_G36KVA4",0.01}, 
		{"vil_G36a2",0.01}, 
		{"G36_C_SD_camo",0.01}
		{"G36A_camo",0.05},
		{"G36C",0.05},
		{"G36C_camo",0.05},
		{"G36K_camo",0.05}
	};
	Deagle_Weaps[] = {
		{"RH_deagle",0.04},
		{"RH_Deaglem",0.05}, 
		{"RH_Deaglemz",0.05}, 
		{"RH_Deaglemzb",0.05},
		{"RH_Deagles",0.01}
	};
	M14_Weaps[] = {
		{"M14_EP1",0.02},
		{"vil_M14",0.01}, 
		{"vil_M14G",0.01},
		{"RH_m14acog",0.05},
		{"RH_m14",0.01},
		{"RH_m14aim",0.01}, 
		{"RH_m14eot",0.01} 
	};
	M110_Weaps[] = {
		{"vil_M110",0.01}, 
		{"vil_M110sd",0.01}
	};
	SV98_Weaps[] = {
		{"vil_SV_98",0.01}, 
		{"vil_SV_98_69",0.01}, 
		{"vil_SV_98_SD",0.01}
	};
	SR25_Weaps[] = {
		{"vil_SR25",0.01},  
		{"vil_SR25SD",0.01}
	};
	RSASS_Weaps[] = {
		{"FHQ_RSASS_TAN",0.01}, 
		{"FHQ_RSASS_SD_TAN",0.01}
	};
	Glock_Weaps[] = {
		{"glock17_EP1",0.02},
		{"RH_g18",0.04}, 
		{"RH_g17",0.04}, 
		{"RH_g19",0.04}, 
		{"RH_g19t",0.04},
		{"RH_g17sd",0.01}
	};
	taser_Weaps[] = {
		{"DDOPP_X3",0.04}, 
		{"DDOPP_X3_b",0.04} 
	};
	UZI_Weaps[] = {
		{"UZI_SD_EP1",0.01},
		{"UZI_EP1",0.03},
		{"vil_uzimini",0.1}, 
		{"vil_uzi_c",0.1}, 
		{"vil_uzi",0.1},
		{"vil_uzi_SD",0.01}, 
		{"vil_uzimini_SD",0.01} 
	};
	K98_Weaps[] = {
		{"gms_k98",0.02}, 
		{"gms_k98zf39",0.02}
	};
	AK_Weaps[] = {
		{"AKS_GOLD",0.01},
		{"AKS_74_kobra",0.01},
		{"AKS_74_U",0.02},
		{"AK_107_kobra",0.01}, 
		{"AK_107_GL_pso",0.01}, 
		{"AK_107_pso",0.01}, 
		{"AKS_74_pso",0.01}, 
		{"AKS_74_UN_kobra",0.01} 
		{"AK_47_M",0.01}, 
		{"AK_74",0.01},
		{"vil_AKS_47",0.01}, 
		{"vil_AK_47_49",0.01}, 
		{"vil_AK_47",0.01}, 
		{"vil_AKM",0.01}, 
		{"vil_AKMS",0.01}, 
		{"vil_AK_47_m1",0.01}, 
		{"vil_AK_nato_m1",0.01},
		{"vil_AKs_74_u",0.01}, 
		{"vil_AK_47_49",0.01}, 
		{"vil_AK_47",0.01},
		{"vil_AKs_74_u45",0.01}, 
		{"Vil_AKS_74_UN_kobra",0.01}, 
		{"Vil_AKS_74_UB",0.01}, 
		{"vil_AK_74M_PSO",0.01}, 
		{"vil_AK_74m_k",0.01}, 
		{"vil_AK_74m_EOT",0.01}, 
		{"vil_AK_74m_EOT_Alfa",0.01}, 
		{"vil_AK_74m_EOT_FSB",0.01}, 
		{"vil_AK_74m_c",0.01}, 
		{"vil_AK_74m_p29",0.01}, 
		{"Vil_AK_105_c",0.01}, 
		{"Vil_AK_107_c",0.01},
	};
	G3_Weaps[] = {
		{"vil_G3a3",0.01}, 
		{"vil_G3a2",0.01},
		{"vil_G3ZF",0.01}, 
		{"vil_G3zfb",0.01}, 
		{"vil_G3SG1",0.01}, 
		{"vil_G3sg1b",0.01}
	};
	AEK_Weaps[] = {
		{"vil_AEK1",0.01}, 
		{"vil_AEK2",0.01},
		{"vil_AeK_3_K",0.01}
	};
	Galil_Weaps[] = {
		{"vil_Galil",0.01}, 
		{"vil_Galil_arm",0.01}
	};
	AG3_Weaps[] = {
		{"vil_AG3",0.01}, 
		{"vil_AG3EOT",0.01}
	};
	AG36_Weaps[] = {
		{"vil_AG36",0.01}, 
		{"vil_AG36A2",0.01}, 
		{"vil_AG36KV",0.01}, 
		{"vil_AG36KA4",0.01}
	};
	SVD_Weaps[] = {
		{"SVD_des_EP1",0.07},
		{"SVD",0.07},
		{"SVD_CAMO",0.01},
		{"vil_SVD_63",0.01}, 
		{"vil_SVD_S",0.01}, 
		{"vil_SVD_M",0.01}, 
		{"vil_SVD_P21",0.01}, 
		{"vil_SVDK",0.01}
	};
	L85_Weaps[] = {
		{"BAF_L85A2_RIS_Holo",0.01}, 
		{"BAF_L85A2_UGL_Holo",0.01}, 
		{"BAF_L85A2_RIS_SUSAT",0.01}, 
		{"BAF_L85A2_RIS_ACOG",0.01}, 
		{"BAF_L86A2_ACOG",0.01}
	};
	Groza_Weaps[] = {
		{"vil_Groza_HG",0.01}, 
		{"vil_Groza_SC",0.01}, 
		{"vil_Groza_SD",0.01}
	};
	M1_Weaps[] = {
		{"RH_m1sacog",0.01}, 
		{"RH_m1sshd",0.01}, 
		{"RH_m1ssp",0.01}, 
		{"RH_m1st",0.01}, 
		{"RH_m1stacog",0.01}, 
		{"RH_m1stshd",0.01}, 
		{"RH_m1stsp",0.01}
	};
	MK22_Weaps[] = {
		{"RH_mk22sd",0.01}, 
		{"RH_mk22vsd",0.01} 
	};
	9a91_Weaps[] = {
		{"vil_9a91_c",0.01}, 
		{"vil_9a91_csd",0.01} 
	};
	M9_Weaps[] = {
		{"M9SD",0.01},
		{"RH_m9sd",0.01}, 
		{"RH_m9csd",0.01}   
	};
	USP[] = {
		{"vil_USPSD",0.01}, 
		{"RH_uspm",0.01}
	};
	USP45[] = {
		{"vil_USP45",0.01}, 
		{"vil_USP45SD",0.01} 
	};
	M16_Weaps[] = {
		{"M16A2",0.03},
		{"M16A2GL",0.01},
		{"M16A4_ACG",0.01}
	};
	M4_Weaps[] = {
		{"M4SPR",0.01},
		{"M4A1",0.01},
		{"M4A1_AIM_SD_camo",0.01},
		{"M4A1_HWS_GL_camo",0.01},
		{"M4A1_HWS_GL_SD_Camo",0.01},
		{"M4A1_Aim",0.04},
		{"M4A3_CCO_EP1",0.04},
		{"VIL_M4",0.01},
		{"vil_M4_EOT",0.01}, 
		{"VIL_M4_aim",0.01}
	};
	SA58_Weaps[] = {
		{"Sa58V_RCO_EP1",0.01},
		{"Sa58V_CCO_EP1",0.01},
		{"Sa58P_EP1",0.02},
		{"Sa58V_EP1",0.02},
	};
	M8_Weaps[] = {
		{"M8_SAW",0.11},
		{"m8_compact",0.03},
		{"m8_sharpshooter",0.04},
		{"m8_carbine",0.05},
		{"m8_holo_sd",0.02}
	};
	HMG_Weaps[] = {
		{"Pecheneg_DZ",0.02},
		{"Mk_48_DZ",0.01},
		{"m240_scoped_EP1_DZE",0.1},
		{"M240_DZ",0.08},
		{"M60A4_EP1_DZE",0.1},
		{"Pecheneg_DZ",0.1},
		{"PK_DZ",0.1}
	};
	LMG_Weaps[] = {
		{"M249_DZ",0.01},
		{"M249_EP1_DZ",0.01},
		{"MG36_camo",0.1},
		{"MG36",0.1}
	};
	FAL_Weaps[] = {
		{"FN_FAL",0.03},
		{"FN_FAL_ANPVS4",0.01},
		{"vil_Fal",0.01}
	};
	RPK_Weaps[] = {
		{"RPK_74",0.11},
		{"vil_RPK75_Romania",0.01}, 
		{"vil_RPD",0.01}, 
		{"vil_RPK74M_P29",0.01}, 
		{"vil_RPK74M",0.01}
	};
	M24_Weaps[] = {
		{"M24_des_EP1",0.08},
		{"M24",0.07}
	};
	M21_Weaps[] = {
		{"vil_M21",0.01}, 
		{"vil_M21G",0.01}
	};
	MP5_Weaps[] = {
		{"MP5A5",0.13},
		{"MP5SD",0.05}
		{"vil_MP5SD_EOTech",0.01}
	};
	DMR_Weaps[] = {
		{"DMR",0.01},
		{"DMR_DZ",0.01} 
	};
	M40_Weaps[] = {
		{"M40A3",0.01}, 
		{"vil_m40a3",0.01}
	};
	//End of Deejay's Custom Loot Modifications
	//Ammo Configs Start
	assaultrifleammo[] = {
		{"30Rnd_762x39_SA58",0.25},
		{"30Rnd_762x39_AK47",0.2},
		{"30Rnd_556x45_Stanag",0.2},
		{"30Rnd_545x39_AK",0.11},
		{"30Rnd_556x45_StanagSD",0.12},
		{"20Rnd_762x51_FNFAL",0.07}
	};
	machinegunammo[] = {
		{"100Rnd_556x45_BetaCMag",0.2},
		{"75Rnd_545x39_RPK",0.2},
		{"100Rnd_556x45_M249",0.15},
		{"100Rnd_762x51_M240",0.15},
		{"100Rnd_762x54_PK",0.15},
		{"200Rnd_556x45_M249",0.15}
	};
	machinegunammoexpl[] = {
		{"100Rnd_556x45_BetaCMag",0.2},
		{"75Rnd_545x39_RPK",0.2},
		{"100Rnd_556x45_M249",0.15},
		{"100Rnd_762x51_M240",0.15},
		{"100Rnd_762x54_PK",0.14},
		{"200Rnd_556x45_M249",0.14},
		{"MAAWS_HEAT",0.01},
		{"PipeBomb",0.01}
	};
	sniperriflesammo[] = {
		{"30Rnd_545x39_AKSD",0.18},
		{"5Rnd_127x108_KSVK",0.08},
		{"5Rnd_86x70_L115A1",0.07},
		{"10Rnd_127x99_m107",0.15},
		{"10Rnd_762x54_SVD",0.2},
		{"20Rnd_762x51_DMR",0.1},
		{"5Rnd_762x51_M24",0.15},
		{"5x_22_LR_17_HMR",0.1},
		{"20Rnd_762x51_SB_SCAR",0.07},
		{"20Rnd_9x39_SP5_VSS",0.05}
	};
	militaryammo[] = {
		{"2000Rnd_762x51_M134",0.1},
		{"29Rnd_30mm_AGS30",0.2},
		{"50Rnd_127x107_DSHKM",0.2},
		{"48Rnd_40mm_MK19",0.2},
		{"100Rnd_127x99_M2",0.3}
	};
	//Ammo Configs End
};