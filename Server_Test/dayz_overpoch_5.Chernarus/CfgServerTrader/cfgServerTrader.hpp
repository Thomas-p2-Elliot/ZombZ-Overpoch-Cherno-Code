/* Brought to you by...
//
//                 __'                           ,.-:^*:*:^:~,'           .:'/`/'`:,·:~·–:.,                             __  '                                     _   ‘
//          ,.·:'´::::::::`'·-.                ,:´:::::::::::::::/_‚        /::/:/:::/:::;::::::/`':.,'                 ,·:'´/::::/'`;·.,          .·:¯:`/';          /::::/‘
//        '/::::::::::::::::::';              /::;:-·^*'*'^~-;:/::/`;   ' /·*'`·´¯'`^·-~·:–-'::;:::'`;            .:´::::/::::/:::::::`;       /:::::/:::\          /::/:::;: 
//       /;:· '´ ¯¯  `' ·-:::/'             /:´    ,. –.,_,.'´::/:::';' ' '\                       '`;::'i‘         /:;:· '´ ¯¯'`^·-;::::/' ‘    /·´¯'`·;::::\      ,·´¯'`;::/ 
//     /.'´      _         ';/' ‘         ,/    ,:´';         ;'´¯`,:::'i'    '`;        ,– .,        'i:'/         /·´           _   '`;/‘      ;         \:::/`:, .'      ';/'  
//   ,:     ,:'´::;'`·.,_.·'´.,    ‘   ' ,'     ';:::`,       ,:     ';::i‘      i       i':/:;         ;/'         'i            ;::::'`;*        ';          \/::::,'    '   /    
//  /     /':::::/;::::_::::::::;‘     ;      ';:::/:`::^*:´;      i::';'‘     i        i/:·'´       ,:''            `;           '`;:::::'`:,      \          `'·:,:'´      /'/     
//,'     ;':::::'/·´¯     ¯'`·;:::¦‘    i       `;/::::::::,·´      ';:/'‘      '; '    ,:,     ~;'´:::'`:,           `·,           '`·;:::::';     '`,                  ,'´' /     
//'i     ';::::::'\             ';:';‘    ';         '` *^*'´         .'/‘        'i      i:/\       `;::::/:'`;'      ,~:-'`·,           `:;::/'        `,             ,'´:'* 
// ;      '`·:;:::::`'*;:'´      |/'      '\                         /           ;     ;/   \       '`:/::::/'     /:::::::::';           ';/           `;         ,/::::::::/'   
//  \          '`*^*'´         /'  ‘       `·,                ,-·´ '            ';   ,'       \         '`;/'    ,:~·- . -·'´          ,'´            ,·'         '¯ '`*^;:/‘    
//    `·.,               ,.-·´               '`*~·––·~^'´  '                      `'*´          '`~·-·^'´     '`·,               , ·'´             ';             ,'/'      
//         '`*^~·~^*'´                          '                                                                '`*^·–·^*'´'           ‘        '`*^~·–-·~^*'´‘         
// 
*/

class CfgTraderCategory {
	#include "Category\BanditAmmunition.hpp"
	#include "Category\BanditClothing.hpp"
	#include "Category\BanditHelicopterArmed.hpp"
	#include "Category\BanditMilitaryArmed.hpp"
	#include "Category\BanditTrucksArmed.hpp"
	#include "Category\BanditWeapons.hpp"
	#include "Category\FriendlyAssaultRifle.hpp"
	#include "Category\FriendlyAssaultRifleAmmo.hpp"
	#include "Category\FriendlyBackpacks.hpp"
	#include "Category\FriendlyBikesandATV.hpp"
	#include "Category\FriendlyBuildingSupplies.hpp"
	#include "Category\FriendlyBusesandVans.hpp"
	#include "Category\FriendlyCargoTrucks.hpp"
	#include "Category\FriendlyChemlitesFlares.hpp"
	#include "Category\FriendlyClothes.hpp"
	#include "Category\FriendlyCookedMeats.hpp"
	#include "Category\FriendlyDrinks.hpp"
	#include "Category\FriendlyFuelTrucks.hpp"
	#include "Category\FriendlyLightMachineGun.hpp"
	#include "Category\FriendlyLightMachineGunAmmo.hpp"
	#include "Category\FriendlyMedicalSupplies.hpp"
	#include "Category\FriendlyMilitaryUnarmed.hpp"
	#include "Category\FriendlyPackagedFood.hpp"
	#include "Category\FriendlyPistolAmmo.hpp"
	#include "Category\FriendlyPistols.hpp"
	#include "Category\FriendlyShotgunsandSingleshot.hpp"
	#include "Category\FriendlyShotgunsandSingleshotAmmo.hpp"
	#include "Category\FriendlySmokeGrenades.hpp"
	#include "Category\FriendlySniperRifle.hpp"
	#include "Category\FriendlySniperRifleAmmo.hpp"
	#include "Category\FriendlySubmachineGunAmmo.hpp"
	#include "Category\FriendlySubmachineGuns.hpp"
	#include "Category\FriendlyToolbeltItems.hpp"
	#include "Category\FriendlyTrucks.hpp"
	#include "Category\FriendlyTrucksUnarmed.hpp"
	#include "Category\FriendlyUsedCars.hpp"
	#include "Category\FriendlyUtilityVehicles.hpp"
	#include "Category\FriendlyVehicleParts.hpp"
	#include "Category\HeroAmmunition.hpp"
	#include "Category\HeroClothes.hpp"
	#include "Category\HeroHelicopterArmed.hpp"
	#include "Category\HeroMilitaryArmed.hpp"
	#include "Category\HeroTrucksArmed.hpp"
	#include "Category\HeroWeapons.hpp"
	#include "Category\NeutralAirplanes.hpp"
	#include "Category\NeutralAssaultRifle.hpp"
	#include "Category\NeutralAssaultRifleAmmo.hpp"
	#include "Category\NeutralBackpacks.hpp"
	#include "Category\NeutralBikesandATV.hpp"
	#include "Category\NeutralBlackMarketAmmo.hpp"
	#include "Category\NeutralBlackMarketWeapons.hpp"
	#include "Category\NeutralBoatsArmed.hpp"
	#include "Category\NeutralBoatsUnarmed.hpp"
	#include "Category\NeutralBuildingSupplies.hpp"
	#include "Category\NeutralBusesandVans.hpp"
	#include "Category\NeutralCargoTrucks.hpp"
	#include "Category\NeutralChemlitesFlares.hpp"
	#include "Category\NeutralClothes.hpp"
	#include "Category\NeutralCookedMeats.hpp"
	#include "Category\NeutralDrinks.hpp"
	#include "Category\NeutralExplosives.hpp"
	#include "Category\NeutralFuelTrucks.hpp"
	#include "Category\NeutralHelicopterUnarmed.hpp"
	#include "Category\NeutralLightMachineGun.hpp"
	#include "Category\NeutralLightMachineGunAmmo.hpp"
	#include "Category\NeutralMedicalSupplies.hpp"
	#include "Category\NeutralMilitaryUnarmed.hpp"
	#include "Category\NeutralPackagedFood.hpp"
	#include "Category\NeutralPistolAmmo.hpp"
	#include "Category\NeutralPistols.hpp"
	#include "Category\NeutralShotgunsandSingleshot.hpp"
	#include "Category\NeutralShotgunsandSingleshotAmmo.hpp"
	#include "Category\NeutralSmokeGrenades.hpp"
	#include "Category\NeutralSniperRifle.hpp"
	#include "Category\NeutralSniperRifleAmmo.hpp"
	#include "Category\NeutralSubmachineGunAmmo.hpp"
	#include "Category\NeutralSubmachineGuns.hpp"
	#include "Category\NeutralToolbeltItems.hpp"
	#include "Category\NeutralTrucks.hpp"
	#include "Category\NeutralUsedCars.hpp"
	#include "Category\NeutralUtilityVehicles.hpp"
	#include "Category\NeutralVehicleParts.hpp"
	#include "Category\NeutralWholesale.hpp"
};