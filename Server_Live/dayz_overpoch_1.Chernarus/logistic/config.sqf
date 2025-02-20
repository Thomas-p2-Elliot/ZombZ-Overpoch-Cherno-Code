
LOG_CFG_lANG = "en"; 				/*  en = english , de = german , fr = french  */
LOG_CFG_ALLOW_LOCKED = false;	 	/* allow to transport locked vehicles */
LOG_CFG_ALLOW_CHAINING = false; 	/* allow chain towing  */
LOG_CFG_ALLOW_GETIN = false; 		/* allow player to get into a towed / lifted object  */
P2LOG_CFG_ALLOW_FROMPLOT = false; 	/* player2: allow player to tow or lift from plots */

/*--------------------------------------------------------------------------------------------------------------
	LIST OF VEHICLES WHERE CAN TOW
---------------------------------------------------------------------------------------------------------------*/ 

LOG_CFG_CANTOW=[
"Ural_CDF",
"Ural_INS",
"UralCivil",
"UralCivil2",
"V3S_Civ",
"V3S_Gue",
"Ural_UN_EP1",
"Ural_TK_CIV_EP1",
"MTVR_DES_EP1",
"V3S_TK_EP1_DZE",
"UralCivil_DZE",
"UralCivil2_DZE",
"KamazOpen_DZE",
"GAZ_Vodnik_MedEvac",
"BRDM2_HQ_TK_GUE_EP1",
"BTR40_TK_GUE_EP1",
"BTR40_TK_INS_EP1",
"M1133_MEV_EP1",
"GAZ_Vodnik_DZE",
"BTR90_DZE",
"BTR90_HQ_DZE",
"LAV25_DZE",
"LAV25_HQ_DZE",
"M113Ambul_UN_EP1_DZ",
"M113Ambul_TK_EP1_DZ",
"Tractor",
"tractorOld",
"TowingTractor"
];



/*--------------------------------------------------------------------------------------------------------------
	LIST OF VEHICLES WHERE IS TOWABLE
---------------------------------------------------------------------------------------------------------------*/ 

LOG_CFG_ISTOWABLE=[	
	"CVPI_Patrol",
"CVPI_Trooper_Patrol",
"CVPI_TrooperSL_Patrol",
"CVPI_NYPD_Patrol",
"CVPI_HighwaySL_Patrol",
"CVPI_UnmarkedB_Patrol",
"CVPI_UnmarkedG_Patrol",
"CVPI_LAPD_Patrol",
"CVPI_UnmarkedW_Patrol",
"CVPI_LAPDSL_Patrol",
"CVPI_NYPDSL_Patrol",
"Tractor",
"policecar",
"Civcar",
"Civcarbu",
"civcarbl",
"Civcarre",
"Civcarge",
"Civcarwh",
"Civcarsl",
"Copcar",
"Copcarhw",
"Copcarswat",
"350z",
"350z_red",
"350z_kiwi",
"350z_black",
"350z_silver",
"350z_green",
"350z_blue",
"350z_gold",
"350z_white",
"350z_pink",
"350z_mod",
"350z_ruben",
"350z_v",
"350z_city",
"350z_yellow",
"HMMWV_M2",
"HMMWV_M2_USArmy",
"HMMWV",
"Ural_CDF",
"Ural_INS",
"UralCivil",
"UralCivil2",
"tractorOld",
"GLT_M300_LT",
"GLT_M300_ST",
"GAZ_Vodnik_MedEvac",
"HMMWV_Armored",
"HMMWV_Ambulance",
"Ikarus",
"MMT_USMC",
"MMT_Civ",
"MTVR",
"TowingTractor",
"V3S_Civ",
"V3S_Gue",
"TT650_Civ",
"TT650_Ins",
"TT650_Gue",
"Ural_UN_EP1",
"Ural_TK_CIV_EP1",
"HMMWV_DES_EP1",
"HMMWV_Ambulance_DES_EP1",
"HMMWV_Ambulance_CZ_DES_EP1",
"TT650_TK_CIV_EP1",
"TT650_TK_EP1",
"M1030_US_DES_EP1",
"MTVR_DES_EP1",
"Ikarus_TK_CIV_EP1",
"ATV_US_EP1",
"ATV_CZ_EP1",
"BRDM2_HQ_TK_GUE_EP1",
"BTR40_MG_TK_GUE_EP1",
"BTR40_TK_GUE_EP1",
"BTR40_MG_TK_INS_EP1",
"BTR40_TK_INS_EP1",
"HMMWV_M1035_DES_EP1",
"HMMWV_Terminal_EP1",
"LandRover_CZ_EP1",
"LandRover_TK_CIV_EP1",
"LandRover_MG_TK_INS_EP1",
"LandRover_MG_TK_EP1",
"Old_bike_TK_CIV_EP1",
"Old_bike_TK_INS_EP1",
"Old_moto_TK_Civ_EP1",
"S1203_TK_CIV_EP1",
"S1203_ambulance_EP1",
"M1133_MEV_EP1",
"HMMWV_DZ",
"HMMWV_M998A2_SOV_DES_EP1_DZE",
"HMMWV_M1151_M2_CZ_DES_EP1_DZE",
"LandRover_Special_CZ_EP1_DZE",
"LandRover_MG_TK_EP1_DZE",
"UAZ_MG_TK_EP1_DZE",
"GAZ_Vodnik_DZE",
"ArmoredSUV_PMC_DZE",
"Pickup_PK_GUE_DZE",
"Pickup_PK_TK_GUE_EP1_DZE",
"Pickup_PK_INS_DZE",
"Pickup_PK_GUE_DZE1",
"Pickup_PK_TK_GUE_EP1_DZE1",
"Pickup_PK_INS_DZE1",
"Pickup_PK_GUE_DZE2",
"Pickup_PK_TK_GUE_EP1_DZE2",
"Pickup_PK_INS_DZE2",
"Pickup_PK_GUE_DZE3",
"Pickup_PK_TK_GUE_EP1_DZE3",
"Pickup_PK_INS_DZE3",
"Pickup_PK_GUE_DZE4",
"Pickup_PK_TK_GUE_EP1_DZE4",
"Pickup_PK_INS_DZE4",
"Offroad_DSHKM_Gue_DZE",
"Offroad_DSHKM_Gue_DZE1",
"Offroad_DSHKM_Gue_DZE2",
"Offroad_DSHKM_Gue_DZE3",
"Offroad_DSHKM_Gue_DZE4",
"BTR90_DZE",
"BTR90_HQ_DZE",
"LAV25_DZE",
"LAV25_HQ_DZE",
"V3S_TK_EP1_DZE",
"V3S_Refuel_TK_GUE_EP1_DZ",
"UralCivil_DZE",
"UralCivil2_DZE",
"UralRefuel_TK_EP1_DZ",
"KamazOpen_DZE",
"KamazRefuel_DZ",
"MtvrRefuel_DES_EP1_DZ",
"MtvrRefuel_DZ",
"VolhaLimo_TK_CIV_EP1_DZE1",
"Volha_1_TK_CIV_EP1_DZE1",
"Volha_2_TK_CIV_EP1_DZE1",
"VolhaLimo_TK_CIV_EP1_DZE2",
"Volha_1_TK_CIV_EP1_DZE2",
"Volha_2_TK_CIV_EP1_DZE2",
"VolhaLimo_TK_CIV_EP1_DZE3",
"Volha_1_TK_CIV_EP1_DZE3",
"Volha_2_TK_CIV_EP1_DZE3",
"VolhaLimo_TK_CIV_EP1_DZE4",
"Volha_1_TK_CIV_EP1_DZE4",
"Volha_2_TK_CIV_EP1_DZE4",
"VWGolf_DZE1",
"VWGolf_DZE2",
"VWGolf_DZE3",
"VWGolf_DZE4",
"Skoda_DZE1",
"SkodaBlue_DZE1",
"SkodaRed_DZE1",
"SkodaGreen_DZE1",
"Skoda_DZE2",
"SkodaBlue_DZE2",
"SkodaRed_DZE2",
"SkodaGreen_DZE2",
"Skoda_DZE3",
"SkodaBlue_DZE3",
"SkodaRed_DZE3",
"SkodaGreen_DZE3",
"Skoda_DZE4",
"SkodaBlue_DZE4",
"SkodaRed_DZE4",
"SkodaGreen_DZE4",
"car_hatchback_DZE1",
"car_hatchback_DZE2",
"car_hatchback_DZE3",
"car_hatchback_DZE4",
"car_sedan_DZE1",
"car_sedan_DZE2",
"car_sedan_DZE3",
"car_sedan_DZE4",
"datsun1_civil_1_open_DZE",
"datsun1_civil_2_covered_DZE",
"datsun1_civil_3_open_DZE",
"datsun1_civil_1_open_DZE1",
"datsun1_civil_2_covered_DZE1",
"datsun1_civil_3_open_DZE1",
"datsun1_civil_1_open_DZE2",
"datsun1_civil_2_covered_DZE2",
"datsun1_civil_3_open_DZE2",
"datsun1_civil_1_open_DZE3",
"datsun1_civil_2_covered_DZE3",
"datsun1_civil_3_open_DZE3",
"datsun1_civil_1_open_DZE4",
"datsun1_civil_2_covered_DZE4",
"datsun1_civil_3_open_DZE4",
"Lada1_DZE1",
"Lada2_DZE1",
"LadaLM_DZE1",
"Lada1_TK_CIV_EP1_DZE1",
"Lada2_TK_CIV_EP1_DZE1",
"Lada1_DZE2",
"Lada2_DZE2",
"LadaLM_DZE2",
"Lada1_TK_CIV_EP1_DZE2",
"Lada2_TK_CIV_EP1_DZE2",
"Lada1_DZE3",
"Lada2_DZE3",
"LadaLM_DZE3",
"Lada1_TK_CIV_EP1_DZE3",
"Lada2_TK_CIV_EP1_DZE3",
"Lada1_DZE4",
"Lada2_DZE4",
"LadaLM_DZE4",
"Lada1_TK_CIV_EP1_DZE4",
"Lada2_TK_CIV_EP1_DZE4",
"hilux1_civil_1_open_DZE",
"hilux1_civil_2_covered_DZE",
"hilux1_civil_3_open_DZE",
"hilux1_civil_1_open_DZE1",
"hilux1_civil_2_covered_DZE1",
"hilux1_civil_3_open_DZE1",
"hilux1_civil_1_open_DZE2",
"hilux1_civil_2_covered_DZE2",
"hilux1_civil_3_open_DZE2",
"hilux1_civil_1_open_DZE3",
"hilux1_civil_2_covered_DZE3",
"hilux1_civil_3_open_DZE3",
"hilux1_civil_1_open_DZE4",
"hilux1_civil_2_covered_DZE4",
"hilux1_civil_3_open_DZE4",
"UAZ_CDF_DZE1",
"UAZ_INS_DZE1",
"UAZ_RU_DZE1",
"UAZ_Unarmed_TK_EP1_DZE1",
"UAZ_Unarmed_UN_EP1_DZE1",
"UAZ_Unarmed_TK_CIV_EP1_DZE1",
"UAZ_CDF_DZE2",
"UAZ_INS_DZE2",
"UAZ_RU_DZE2",
"UAZ_Unarmed_TK_EP1_DZE2",
"UAZ_Unarmed_UN_EP1_DZE2",
"UAZ_Unarmed_TK_CIV_EP1_DZE2",
"UAZ_CDF_DZE3",
"UAZ_INS_DZE3",
"UAZ_RU_DZE3",
"UAZ_Unarmed_TK_EP1_DZE3",
"UAZ_Unarmed_UN_EP1_DZE3",
"UAZ_Unarmed_TK_CIV_EP1_DZE3",
"UAZ_CDF_DZE4",
"UAZ_INS_DZE4",
"UAZ_RU_DZE4",
"UAZ_Unarmed_TK_EP1_DZE4",
"UAZ_Unarmed_UN_EP1_DZE4",
"UAZ_Unarmed_TK_CIV_EP1_DZE4",
"SUV_TK_CIV_EP1_DZE1",
"SUV_Camo_DZE1",
"SUV_Blue_DZE1",
"SUV_Green_DZE1",
"SUV_Yellow_DZE1",
"SUV_Red_DZE1",
"SUV_White_DZE1",
"SUV_Pink_DZE1",
"SUV_Charcoal_DZE1",
"SUV_Orange_DZE1",
"SUV_Silver_DZE1",
"SUV_TK_CIV_EP1_DZE2",
"SUV_Camo_DZE2",
"SUV_Blue_DZE2",
"SUV_Green_DZE2",
"SUV_Yellow_DZE2",
"SUV_Red_DZE2",
"SUV_White_DZE2",
"SUV_Pink_DZE2",
"SUV_Charcoal_DZE2",
"SUV_Orange_DZE2",
"SUV_Silver_DZE2",
"SUV_TK_CIV_EP1_DZE3",
"SUV_Camo_DZE3",
"SUV_Blue_DZE3",
"SUV_Green_DZE3",
"SUV_Yellow_DZE3",
"SUV_Red_DZE3",
"SUV_White_DZE3",
"SUV_Pink_DZE3",
"SUV_Charcoal_DZE3",
"SUV_Orange_DZE3",
"SUV_Silver_DZE3",
"SUV_TK_CIV_EP1_DZE4",
"SUV_Camo_DZE4",
"SUV_Blue_DZE4",
"SUV_Green_DZE4",
"SUV_Yellow_DZE4",
"SUV_Red_DZE4",
"SUV_White_DZE4",
"SUV_Pink_DZE4",
"SUV_Charcoal_DZE4",
"SUV_Orange_DZE4",
"SUV_Silver_DZE4",
"M113Ambul_UN_EP1_DZ",
"M113Ambul_TK_EP1_DZ",
"BAF_ATV_D",
"BAF_Offroad_D",
"BAF_Jackal2_L2A1_D",
"BAF_ATV_W",
"BAF_Offroad_W",
"BAF_Jackal2_L2A1_W",
"BAF_Jackal2_GMG_W",
"GNT_C185",
"GNT_C185F",
"GNT_C185R",
"GNT_C185E",
"GNT_C185C",
"GNT_C185T",
"GNT_C185U",
"CYBP_Camel_us",
"CYBP_Camel_rus",
"CYBP_Camel_civ",
"AN2_DZ",
"C130J_US_EP1_DZ",
"An2_1_TK_CIV_EP1",
"An2_2_TK_CIV_EP1",
"An2_TK_EP1"
];




/*--------------------------------------------------------------------------------------------------------------
	LIST OF HELIS WHERE CAN LIFT
---------------------------------------------------------------------------------------------------------------*/ 

LOG_CFG_CANLIFT=[
"USEC_ch53_E",
"Mi17_medevac_Ins",
"Mi17_medevac_CDF",
"Mi17_medevac_RU",
"BAF_Merlin_DZE",
"MV22_DZ",
"Mi17_Civilian_DZ",
"CH53_DZE",
"UH60M_MEV_EP1",
"Ka137_PMC",
"Ka60_PMC",
"CH_47F_EP1_DZE"
];




/*--------------------------------------------------------------------------------------------------------------
		LIST OF VEHICLES WHERE IS LIFTABLE
---------------------------------------------------------------------------------------------------------------*/ 

LOG_CFG_ISLIFTABLE=[
"GNT_C185",
"GNT_C185F",
"GNT_C185R",
"GNT_C185E",
"GNT_C185C",
"GNT_C185T",
"GNT_C185U",
"CYBP_Camel_us",
"CYBP_Camel_rus",
"CYBP_Camel_civ",
"AN2_DZ",
"C130J_US_EP1_DZ",
"An2_1_TK_CIV_EP1",
"An2_2_TK_CIV_EP1",
"An2_TK_EP1",
"CVPI_Patrol",
"CVPI_Trooper_Patrol",
"CVPI_TrooperSL_Patrol",
"CVPI_NYPD_Patrol",
"CVPI_HighwaySL_Patrol",
"CVPI_UnmarkedB_Patrol",
"CVPI_UnmarkedG_Patrol",
"CVPI_LAPD_Patrol",
"CVPI_UnmarkedW_Patrol",
"CVPI_LAPDSL_Patrol",
"CVPI_NYPDSL_Patrol",
"Tractor",
"policecar",
"Civcar",
"Civcarbu",
"civcarbl",
"Civcarre",
"Civcarge",
"Civcarwh",
"Civcarsl",
"Copcar",
"Copcarhw",
"Copcarswat",
"350z",
"350z_red",
"350z_kiwi",
"350z_black",
"350z_silver",
"350z_green",
"350z_blue",
"350z_gold",
"350z_white",
"350z_pink",
"350z_mod",
"350z_ruben",
"350z_v",
"350z_city",
"350z_yellow",
"HMMWV_M2",
"HMMWV_M2_USArmy",
"HMMWV",
"Ural_CDF",
"Ural_INS",
"UralCivil",
"UralCivil2",
"tractorOld",
"GLT_M300_LT",
"GLT_M300_ST",
"GAZ_Vodnik_MedEvac",
"HMMWV_Armored",
"HMMWV_Ambulance",
"Ikarus",
"MMT_USMC",
"MMT_Civ",
"MTVR",
"TowingTractor",
"V3S_Civ",
"V3S_Gue",
"TT650_Civ",
"TT650_Ins",
"TT650_Gue",
"Ural_UN_EP1",
"Ural_TK_CIV_EP1",
"HMMWV_DES_EP1",
"HMMWV_Ambulance_DES_EP1",
"HMMWV_Ambulance_CZ_DES_EP1",
"TT650_TK_CIV_EP1",
"TT650_TK_EP1",
"M1030_US_DES_EP1",
"MTVR_DES_EP1",
"Ikarus_TK_CIV_EP1",
"ATV_US_EP1",
"ATV_CZ_EP1",
"BRDM2_HQ_TK_GUE_EP1",
"BTR40_MG_TK_GUE_EP1",
"BTR40_TK_GUE_EP1",
"BTR40_MG_TK_INS_EP1",
"BTR40_TK_INS_EP1",
"HMMWV_M1035_DES_EP1",
"HMMWV_Terminal_EP1",
"LandRover_CZ_EP1",
"LandRover_TK_CIV_EP1",
"LandRover_MG_TK_INS_EP1",
"LandRover_MG_TK_EP1",
"Old_bike_TK_CIV_EP1",
"Old_bike_TK_INS_EP1",
"Old_moto_TK_Civ_EP1",
"S1203_TK_CIV_EP1",
"S1203_ambulance_EP1",
"M1133_MEV_EP1",
"HMMWV_DZ",
"HMMWV_M998A2_SOV_DES_EP1_DZE",
"HMMWV_M1151_M2_CZ_DES_EP1_DZE",
"LandRover_Special_CZ_EP1_DZE",
"LandRover_MG_TK_EP1_DZE",
"UAZ_MG_TK_EP1_DZE",
"GAZ_Vodnik_DZE",
"ArmoredSUV_PMC_DZE",
"Pickup_PK_GUE_DZE",
"Pickup_PK_TK_GUE_EP1_DZE",
"Pickup_PK_INS_DZE",
"Pickup_PK_GUE_DZE1",
"Pickup_PK_TK_GUE_EP1_DZE1",
"Pickup_PK_INS_DZE1",
"Pickup_PK_GUE_DZE2",
"Pickup_PK_TK_GUE_EP1_DZE2",
"Pickup_PK_INS_DZE2",
"Pickup_PK_GUE_DZE3",
"Pickup_PK_TK_GUE_EP1_DZE3",
"Pickup_PK_INS_DZE3",
"Pickup_PK_GUE_DZE4",
"Pickup_PK_TK_GUE_EP1_DZE4",
"Pickup_PK_INS_DZE4",
"Offroad_DSHKM_Gue_DZE",
"Offroad_DSHKM_Gue_DZE1",
"Offroad_DSHKM_Gue_DZE2",
"Offroad_DSHKM_Gue_DZE3",
"Offroad_DSHKM_Gue_DZE4",
"BTR90_DZE",
"BTR90_HQ_DZE",
"LAV25_DZE",
"LAV25_HQ_DZE",
"V3S_TK_EP1_DZE",
"V3S_Refuel_TK_GUE_EP1_DZ",
"UralCivil_DZE",
"UralCivil2_DZE",
"UralRefuel_TK_EP1_DZ",
"KamazOpen_DZE",
"KamazRefuel_DZ",
"MtvrRefuel_DES_EP1_DZ",
"MtvrRefuel_DZ",
"VolhaLimo_TK_CIV_EP1_DZE1",
"Volha_1_TK_CIV_EP1_DZE1",
"Volha_2_TK_CIV_EP1_DZE1",
"VolhaLimo_TK_CIV_EP1_DZE2",
"Volha_1_TK_CIV_EP1_DZE2",
"Volha_2_TK_CIV_EP1_DZE2",
"VolhaLimo_TK_CIV_EP1_DZE3",
"Volha_1_TK_CIV_EP1_DZE3",
"Volha_2_TK_CIV_EP1_DZE3",
"VolhaLimo_TK_CIV_EP1_DZE4",
"Volha_1_TK_CIV_EP1_DZE4",
"Volha_2_TK_CIV_EP1_DZE4",
"VWGolf_DZE1",
"VWGolf_DZE2",
"VWGolf_DZE3",
"VWGolf_DZE4",
"Skoda_DZE1",
"SkodaBlue_DZE1",
"SkodaRed_DZE1",
"SkodaGreen_DZE1",
"Skoda_DZE2",
"SkodaBlue_DZE2",
"SkodaRed_DZE2",
"SkodaGreen_DZE2",
"Skoda_DZE3",
"SkodaBlue_DZE3",
"SkodaRed_DZE3",
"SkodaGreen_DZE3",
"Skoda_DZE4",
"SkodaBlue_DZE4",
"SkodaRed_DZE4",
"SkodaGreen_DZE4",
"car_hatchback_DZE1",
"car_hatchback_DZE2",
"car_hatchback_DZE3",
"car_hatchback_DZE4",
"car_sedan_DZE1",
"car_sedan_DZE2",
"car_sedan_DZE3",
"car_sedan_DZE4",
"datsun1_civil_1_open_DZE",
"datsun1_civil_2_covered_DZE",
"datsun1_civil_3_open_DZE",
"datsun1_civil_1_open_DZE1",
"datsun1_civil_2_covered_DZE1",
"datsun1_civil_3_open_DZE1",
"datsun1_civil_1_open_DZE2",
"datsun1_civil_2_covered_DZE2",
"datsun1_civil_3_open_DZE2",
"datsun1_civil_1_open_DZE3",
"datsun1_civil_2_covered_DZE3",
"datsun1_civil_3_open_DZE3",
"datsun1_civil_1_open_DZE4",
"datsun1_civil_2_covered_DZE4",
"datsun1_civil_3_open_DZE4",
"Lada1_DZE1",
"Lada2_DZE1",
"LadaLM_DZE1",
"Lada1_TK_CIV_EP1_DZE1",
"Lada2_TK_CIV_EP1_DZE1",
"Lada1_DZE2",
"Lada2_DZE2",
"LadaLM_DZE2",
"Lada1_TK_CIV_EP1_DZE2",
"Lada2_TK_CIV_EP1_DZE2",
"Lada1_DZE3",
"Lada2_DZE3",
"LadaLM_DZE3",
"Lada1_TK_CIV_EP1_DZE3",
"Lada2_TK_CIV_EP1_DZE3",
"Lada1_DZE4",
"Lada2_DZE4",
"LadaLM_DZE4",
"Lada1_TK_CIV_EP1_DZE4",
"Lada2_TK_CIV_EP1_DZE4",
"hilux1_civil_1_open_DZE",
"hilux1_civil_2_covered_DZE",
"hilux1_civil_3_open_DZE",
"hilux1_civil_1_open_DZE1",
"hilux1_civil_2_covered_DZE1",
"hilux1_civil_3_open_DZE1",
"hilux1_civil_1_open_DZE2",
"hilux1_civil_2_covered_DZE2",
"hilux1_civil_3_open_DZE2",
"hilux1_civil_1_open_DZE3",
"hilux1_civil_2_covered_DZE3",
"hilux1_civil_3_open_DZE3",
"hilux1_civil_1_open_DZE4",
"hilux1_civil_2_covered_DZE4",
"hilux1_civil_3_open_DZE4",
"UAZ_CDF_DZE1",
"UAZ_INS_DZE1",
"UAZ_RU_DZE1",
"UAZ_Unarmed_TK_EP1_DZE1",
"UAZ_Unarmed_UN_EP1_DZE1",
"UAZ_Unarmed_TK_CIV_EP1_DZE1",
"UAZ_CDF_DZE2",
"UAZ_INS_DZE2",
"UAZ_RU_DZE2",
"UAZ_Unarmed_TK_EP1_DZE2",
"UAZ_Unarmed_UN_EP1_DZE2",
"UAZ_Unarmed_TK_CIV_EP1_DZE2",
"UAZ_CDF_DZE3",
"UAZ_INS_DZE3",
"UAZ_RU_DZE3",
"UAZ_Unarmed_TK_EP1_DZE3",
"UAZ_Unarmed_UN_EP1_DZE3",
"UAZ_Unarmed_TK_CIV_EP1_DZE3",
"UAZ_CDF_DZE4",
"UAZ_INS_DZE4",
"UAZ_RU_DZE4",
"UAZ_Unarmed_TK_EP1_DZE4",
"UAZ_Unarmed_UN_EP1_DZE4",
"UAZ_Unarmed_TK_CIV_EP1_DZE4",
"SUV_TK_CIV_EP1_DZE1",
"SUV_Camo_DZE1",
"SUV_Blue_DZE1",
"SUV_Green_DZE1",
"SUV_Yellow_DZE1",
"SUV_Red_DZE1",
"SUV_White_DZE1",
"SUV_Pink_DZE1",
"SUV_Charcoal_DZE1",
"SUV_Orange_DZE1",
"SUV_Silver_DZE1",
"SUV_TK_CIV_EP1_DZE2",
"SUV_Camo_DZE2",
"SUV_Blue_DZE2",
"SUV_Green_DZE2",
"SUV_Yellow_DZE2",
"SUV_Red_DZE2",
"SUV_White_DZE2",
"SUV_Pink_DZE2",
"SUV_Charcoal_DZE2",
"SUV_Orange_DZE2",
"SUV_Silver_DZE2",
"SUV_TK_CIV_EP1_DZE3",
"SUV_Camo_DZE3",
"SUV_Blue_DZE3",
"SUV_Green_DZE3",
"SUV_Yellow_DZE3",
"SUV_Red_DZE3",
"SUV_White_DZE3",
"SUV_Pink_DZE3",
"SUV_Charcoal_DZE3",
"SUV_Orange_DZE3",
"SUV_Silver_DZE3",
"SUV_TK_CIV_EP1_DZE4",
"SUV_Camo_DZE4",
"SUV_Blue_DZE4",
"SUV_Green_DZE4",
"SUV_Yellow_DZE4",
"SUV_Red_DZE4",
"SUV_White_DZE4",
"SUV_Pink_DZE4",
"SUV_Charcoal_DZE4",
"SUV_Orange_DZE4",
"SUV_Silver_DZE4",
"M113Ambul_UN_EP1_DZ",
"M113Ambul_TK_EP1_DZ",
"BAF_ATV_D",
"BAF_Offroad_D",
"BAF_Jackal2_L2A1_D",
"BAF_ATV_W",
"BAF_Offroad_W",
"BAF_Jackal2_L2A1_W",
"BAF_Jackal2_GMG_W"
];
