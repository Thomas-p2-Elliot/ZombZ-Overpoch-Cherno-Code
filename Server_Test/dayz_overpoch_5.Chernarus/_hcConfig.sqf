/*---------------------------------------------------------------------------
Headless Client Settings
---------------------------------------------------------------------------*/
if (!hasInterface && !isDedicated && !isServer) exitWith {
	//enable ASM for headlessClient
	P2DZ_HC_ASM_Enabled = false;

	//enable headless client extra-zeds?
	P2DZ_HC_extraZeds = true;

	//enable zed hordes? (WARNING: Requires ExtraZeds)
	P2DZ_HC_zedHordes = true;
};

/*---------------------------------------------------------------------------
---------------------------------------------------------------------------*/
