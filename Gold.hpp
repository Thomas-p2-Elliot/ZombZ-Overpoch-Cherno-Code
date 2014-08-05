class RscButton;	// External class reference
class CA_IGUI_Title;	// External class reference
class CA_Title;	// External class reference
class RscControlsGroup;	// External class reference
class RscLineBreak;	// External class reference
class RscIGUIShortcutButton;	// External class reference
class RscGearShortcutButton;	// External class reference
class RscIGUIListNBox;	// External class reference
class RscActiveText;	// External class reference
class RscStructuredText {
	class Attributes;	// External class reference
};
class RscButtonActionMenu : RscButton {
	SizeEx = 0.02674;
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {0, 0, 0, 0.8};
	colorBackgroundActive[] = {0.63, 0.02, 0.02, 0.8};
	colorBackgroundDisabled[] = {1, 1, 1, 0};
	colorFocused[] = {0, 0, 0, 0.8};
	colorShadow[] = {1, 1, 1, 0};
	borderSize = 0;
	w = "0.095 * safezoneW";
	h = "0.025 * safezoneH";
};

class RscDisplayGear {
	idd = 106;
	enableDisplay = 1;
	onUnload = "call player_gearSync; call dayz_forceSave;";
	
	class controls {
		class CA_Filter_Icon : RscPicture {
			idc = 148;
			style = 0x30 + 0x800;
			x = 0.04;
			y = 0.544098;
			w = 0.458;
			h = 0.075;
			text = "\ca\ui\data\igui_gear_filter_1_ca.paa";
		};
		
		class CA_Filter_Left_Icon : RscPicture {
			idc = 1301;
			style = 0x30 + 0x800;
			x = 0.05;
			y = 0.545098;
			w = 0.036;
			h = 0.075;
			text = "\ca\ui\data\arrow_left_ca.paa";
		};
		
		class CA_Filter_Right_Icon : RscPicture {
			idc = 1302;
			style = 0x30 + 0x800;
			x = 0.453;
			y = 0.545098;
			w = 0.036;
			h = 0.075;
			text = "\ca\ui\data\arrow_right_ca.paa";
		};
		
		class CA_Filter_Arrow_Left : RscButton {
			idc = 150;
			colorText[] = {1, 1, 1, 0};
			colorDisabled[] = {1, 1, 1, 0};
			colorBackground[] = {1, 1, 1, 0};
			colorBackgroundDisabled[] = {1, 1, 1, 0};
			colorBackgroundActive[] = {1, 1, 1, 0};
			colorShadow[] = {1, 1, 1, 0};
			colorFocused[] = {1, 1, 1, 0};
			x = 0.041;
			y = 0.545098;
			w = 0.056;
			h = 0.075;
			text = "";
		};
		
		class CA_Filter_Arrow_Right : RscButton {
			idc = 151;
			colorText[] = {1, 1, 1, 0};
			colorDisabled[] = {1, 1, 1, 0};
			colorBackground[] = {1, 1, 1, 0};
			colorBackgroundDisabled[] = {1, 1, 1, 0};
			colorBackgroundActive[] = {1, 1, 1, 0};
			colorShadow[] = {1, 1, 1, 0};
			colorFocused[] = {1, 1, 1, 0};
			x = 0.443;
			y = 0.545098;
			w = 0.056;
			h = 0.075;
			text = "";
		};
		
		class CA_Filter_Icon1 : RscButton {
			idc = 149;
			colorText[] = {1, 1, 1, 0};
			colorDisabled[] = {1, 1, 1, 0};
			colorBackground[] = {1, 1, 1, 0};
			colorBackgroundDisabled[] = {1, 1, 1, 0};
			colorBackgroundActive[] = {1, 1, 1, 0};
			colorShadow[] = {1, 1, 1, 0};
			colorFocused[] = {1, 1, 1, 0};
			x = 0.099;
			y = 0.545098;
			w = 0.341;
			h = 0.075;
			text = "";
		};
		
		class Gear_Title : CA_IGUI_Title {
			idc = 1001;
			x = 0.047634;
			y = -0.00102941;
			text = $STR_EPOCH_PLAYER_278;
		};

		class Gold_Gear_Title : CA_IGUI_Title {
			idc = 1001;
			x = 0.097634;
			y = -0.00102941;
			text = "Gold:";
		};
		
		class Unit_Title : RscText {
			idc = 101;
			style = 2;
			x = 0;
			y = 0;
			w = 0;
			text = "";
		};
		
		class Available_items_Text : RscText {
			idc = 156;
			x = 0.0433014;
			y = 0.0526966;
			w = 0.389709;
			h = 0.029412;
		};
		
		class CA_ItemName : Available_items_Text {
			idc = 1101;
			x = 0.0416704;
			y = 0.627451;
			text = "Gear of the unit:";
		};
		
		class CA_Money : RscText {
			idc = 1102;
			style = 1;
			show = 0;
			x = -2.50409;
			y = -2.85784;
			w = 0.228;
			text = "Money:";
		};
		
		class CA_Money_Value : RscText {
			idc = 1103;
			x = -2.72794;
			y = -2.85784;
			w = 0.228;
			text = "0";
		};
		
		class ListboxArrows : RscControlsGroup {
			x = 0.04;
			y = 0.0892447;
			w = 0.48;
			h = 0.449;
			idc = 155;
			
			class VScrollbar {
				autoScrollSpeed = -1;
				autoScrollDelay = 5;
				autoScrollRewind = 0;
				color[] = {1, 1, 1, 0};
				width = 0.001;
			};
			
			class HScrollbar {
				color[] = {1, 1, 1, 0};
				height = 0.001;
			};
			
			class Controls {
				class CA_B_Add : RscGearShortcutButton {
					idc = 146;
					x = -2;
					style = 2048;
					onSetFocus = "private [""_dummy""]; _dummy = [_this,""onFocus""] execVM	""\z\addons\dayz_code\system\handleGear.sqf""; _dummy;";
					onButtonClick = "private [""_dummy""]; _dummy = [_this,""onLBListSelChanged""] execVM ""\z\addons\dayz_code\system\handleGear.sqf""; _dummy;";
					text = "&lt;";
				};
				
				class Available_items : RscIGUIListNBox {
					idc = 105;
					columns[] = {0.075, 0.175, 0.81, 0.67};
					drawSideArrows = 1;
					idcRight = 147;
					idcLeft = 146;
					colorPlayerItem[] = {0.8784, 0.8471, 0.651, 1};
					onKeyDown = "private [""_dummy""]; _dummy = [_this,""onKeyDown"",0,107,0,107] execVM	""\z\addons\dayz_code\system\handleGear.sqf""; _dummy;";
					onLBSelChanged = "private [""_dummy""]; _dummy = [_this,""onLBSelChanged""] execVM ""\z\addons\dayz_code\system\handleGear.sqf""; _dummy;";
					onLBListSelChanged = "private [""_dummy""]; _dummy = [_this,""onLBListSelChanged""] execVM ""\z\addons\dayz_code\system\handleGear.sqf""; _dummy;";
					onKillFocus = "private [""_dummy""]; _dummy = [_this,""onKillFocus""] execVM	""\z\addons\dayz_code\system\handleGear.sqf""; _dummy;";
					x = 0;
					y = 0;
					w = 0.46;
					h = 0.449;
					canDrag = 1;
				};
				
				class CA_B_Remove : CA_B_Add {
					idc = 147;
					x = -2;
					onSetFocus = "private [""_dummy""]; _dummy = [_this,""onFocus""] execVM ""\z\addons\dayz_code\system\handleGear.sqf""; _dummy;";
					onButtonClick = "private [""_dummy""]; _dummy = [_this,""onLBListSelChanged""] execVM ""\z\addons\dayz_code\system\handleGear.sqf""; _dummy;";
					text = ">";
				};
			};
		};
		
		class CA_CustomDescription : RscStructuredText {
			idc = 1106;
			x = 0.0414969;
			y = 0.663641;
			w = 0.458;
			h = 0.152;
			colorText[] = {0.95, 0.95, 0.95, 1};
			
			class Attributes {
				font = "Zeppelin32";
				color = "#F2F2F2";
				align = "left";
				shadow = true;
			};
		};
		
		class CA_Item_Picture : RscPicture {
			idc = 1104;
			style = 0x30 + 0x800;
			x = 0.330883;
			y = 0.785541;
			w = 0.156863;
			h = 0.104575;
			text = "";
		};
		
		class G_Interaction : RscControlsGroup {
			idc = 6902;
			x = 0.502;
			y = "0.250 * safezoneH";
			w = "0.145 * safezoneW";
			h = 0;
			onMouseMoving = "_this call gear_ui_offMenu;";
			
			class VScrollbar {
				autoScrollSpeed = -1;
				autoScrollDelay = 5;
				autoScrollRewind = 0;
				color[] = {1, 1, 1, 0};
				width = 0.001;
			};
			
			class HScrollbar {
				color[] = {1, 1, 1, 0};
				height = 0.001;
			};
			
			class Controls {
				class RscButton_1600 : RscButtonActionMenu {
					idc = 1600;
					text = "";
					x = 0;
					y = "0 * safezoneH";
				};
				
				class RscButton_1601 : RscButtonActionMenu {
					idc = 1601;
					text = "";
					x = 0;
					y = "0.025 * safezoneH";
				};
				
				class RscButton_1602 : RscButtonActionMenu {
					idc = 1602;
					text = "";
					x = 0;
					y = "0.05 * safezoneH";
				};
				
				class RscButton_1603 : RscButtonActionMenu {
					idc = 1603;
					text = "";
					x = 0;
					y = "0.075 * safezoneH";
				};
				
				class RscButton_1604 : RscButtonActionMenu {
					idc = 1604;
					text = "";
					x = 0;
					y = "0.1 * safezoneH";
				};
				
				class RscButton_1605 : RscButtonActionMenu {
					idc = 1605;
					text = "";
					x = 0;
					y = "0.125 * safezoneH";
				};
				
				class RscButton_1606 : RscButtonActionMenu {
					idc = 1606;
					text = "";
					x = 0;
					y = "0.15 * safezoneH";
				};
				
				class RscButton_1607 : RscButtonActionMenu {
					idc = 1607;
					text = "";
					x = 0;
					y = "0.175 * safezoneH";
				};
				
				class RscButton_1608 : RscButtonActionMenu {
					idc = 1608;
					text = "";
					x = 0;
					y = "0.2 * safezoneH";
				};
				
				class RscButton_1609 : RscButtonActionMenu {
					idc = 1609;
					text = "";
					x = 0;
					y = "0.225 * safezoneH";
				};
			};
		};
		
		class G_GearItems : RscControlsGroup {
			idc = 160;
			x = 0.502;
			y = 0.09;
			w = 0.463;
			h = 0.776;
			
			class VScrollbar {
				autoScrollSpeed = -1;
				autoScrollDelay = 5;
				autoScrollRewind = 0;
				color[] = {1, 1, 1, 0};
				width = 0.001;
			};
			
			class HScrollbar {
				color[] = {1, 1, 1, 0};
				height = 0.001;
			};
			
			class Controls {
				class CA_Gear_slot_primary : RscActiveText {
					idc = 107;
					x = 0.502 - 0.502;
					y = 0.244 - 0.09;
					w = 0.286;
					h = 0.15;
					style = 0x30 + 0x800;
					onMouseButtonDown = "_this call player_selectSlot;";
					soundDoubleClick[] = {"", 0.1, 1};
					color[] = {1, 1, 1, 1};
					colorBackground[] = {0.8784, 0.8471, 0.651, 1};
					colorBackgroundSelected[] = {0.8784, 0.8471, 0.651, 1};
					colorFocused[] = {0, 0, 0, 0};
					canDrag = 1;
				};
				
				class CA_Gear_slot_secondary : CA_Gear_slot_primary {
					idc = 108;
					y = 0.398 -0.09;
				};
				
				class CA_Gear_slot_item1 : CA_Gear_slot_primary {
					idc = 109;
					x = 0.790 - 0.502;
					y = 0.244 - 0.09;
					w = 0.055;
					h = 0.074;
				};
				
				class CA_Gear_slot_item2 : CA_Gear_slot_item1 {
					idc = 110;
					x = 0.847 - 0.502;
					y = 0.244 - 0.09;
				};
				
				class CA_Gear_slot_item3 : CA_Gear_slot_item1 {
					idc = 111;
					x = 0.904366 - 0.502;
					y = 0.244 - 0.09;
				};
				
				class CA_Gear_slot_item4 : CA_Gear_slot_item1 {
					idc = 112;
					x = 0.790 - 0.502;
					y = 0.321 - 0.09;
				};
				
				class CA_Gear_slot_item5 : CA_Gear_slot_item1 {
					idc = 113;
					x = 0.847 - 0.502;
					y = 0.321 - 0.09;
				};
				
				class CA_Gear_slot_item6 : CA_Gear_slot_item1 {
					idc = 114;
					x = 0.904366 - 0.502;
					y = 0.321 - 0.09;
				};
				
				class CA_Gear_slot_item7 : CA_Gear_slot_item1 {
					idc = 115;
					x = 0.790 - 0.502;
					y = 0.398 - 0.09;
				};
				
				class CA_Gear_slot_item8 : CA_Gear_slot_item7 {
					idc = 116;
					x = 0.847 - 0.502;
					y = 0.398 - 0.09;
				};
				
				class CA_Gear_slot_item9 : CA_Gear_slot_item7 {
					idc = 117;
					x = 0.904366 - 0.502;
					y = 0.398 - 0.09;
				};
				
				class CA_Gear_slot_item10 : CA_Gear_slot_item7 {
					idc = 118;
					x = 0.790 - 0.502;
					y = 0.474 - 0.09;
				};
				
				class CA_Gear_slot_item11 : CA_Gear_slot_item7 {
					idc = 119;
					x = 0.847 - 0.502;
					y = 0.474 - 0.09;
				};
				
				class CA_Gear_slot_item12 : CA_Gear_slot_item7 {
					idc = 120;
					x = 0.904366 - 0.502;
					y = 0.474 - 0.09;
				};
				
				class CA_Gear_slot_handgun : CA_Gear_slot_primary {
					idc = 121;
					x = 0.560 - 0.502;
					y = 0.551 - 0.09;
					w = 0.113;
					h = 0.15;
				};
				
				class CA_Gear_slot_handgun_item1 : CA_Gear_slot_item1 {
					idc = 122;
					x = 0.674 - 0.502;
					y = 0.551 - 0.09;
					w = 0.055;
					h = 0.074;
				};
				
				class CA_Gear_slot_handgun_item2 : CA_Gear_slot_handgun_item1 {
					idc = 123;
					x = 0.733 - 0.502;
					y = 0.551 - 0.09;
				};
				
				class CA_Gear_slot_handgun_item3 : CA_Gear_slot_handgun_item1 {
					idc = 124;
					x = 0.790 - 0.502;
				};
				
				class CA_Gear_slot_handgun_item4 : CA_Gear_slot_handgun_item1 {
					idc = 125;
					x = 0.847 - 0.502;
				};
				
				class CA_Gear_slot_handgun_item5 : CA_Gear_slot_handgun_item1 {
					idc = 126;
					x = 0.674 - 0.502;
					y = 0.628 - 0.09;
				};
				
				class CA_Gear_slot_handgun_item6 : CA_Gear_slot_handgun_item5 {
					idc = 127;
					x = 0.733 - 0.502;
					y = 0.628 - 0.09;
				};
				
				class CA_Gear_slot_handgun_item7 : CA_Gear_slot_handgun_item5 {
					idc = 128;
					x = 0.790 - 0.502;
					y = 0.628 - 0.09;
				};
				
				class CA_Gear_slot_handgun_item8 : CA_Gear_slot_handgun_item5 {
					idc = 129;
					x = 0.847 - 0.502;
					y = 0.628 - 0.09;
				};
				
				class CA_Gear_slot_special1 : CA_Gear_slot_item1 {
					idc = 130;
					x = 0.502 - 0.502;
					y = 0.09 - 0.09;
					w = 0.113;
					h = 0.15;
				};
				
				class CA_Gear_slot_special2 : CA_Gear_slot_special1 {
					idc = 131;
					x = 0.847 - 0.502;
					y = 0.09 - 0.09;
					w = 0.113;
					h = 0.15;
				};
				
				class CA_Gear_slot_inventory1 : CA_Gear_slot_special1 {
					idc = 134;
					x = 0.560 - 0.502;
					y = 0.705 - 0.09;
					w = 0.055;
					h = 0.074;
				};
				
				class CA_Gear_slot_inventory2 : CA_Gear_slot_inventory1 {
					idc = 135;
					x = 0.617 - 0.502;
					y = 0.705 - 0.09;
				};
				
				class CA_Gear_slot_inventory3 : CA_Gear_slot_inventory1 {
					idc = 136;
					x = 0.674 - 0.502;
					y = 0.705 - 0.09;
				};
				
				class CA_Gear_slot_inventory4 : CA_Gear_slot_inventory1 {
					idc = 137;
					x = 0.733 - 0.502;
					y = 0.705 - 0.09;
				};
				
				class CA_Gear_slot_inventory5 : CA_Gear_slot_inventory1 {
					idc = 138;
					x = 0.790 - 0.502;
					y = 0.705 - 0.09;
				};
				
				class CA_Gear_slot_inventory6 : CA_Gear_slot_inventory1 {
					idc = 139;
					x = 0.847 - 0.502;
					y = 0.705 - 0.09;
				};
				
				class CA_Gear_slot_inventory7 : CA_Gear_slot_inventory1 {
					idc = 140;
					x = 0.560 - 0.502;
					y = 0.782 - 0.09;
				};
				
				class CA_Gear_slot_inventory8 : CA_Gear_slot_inventory7 {
					idc = 141;
					x = 0.617 - 0.502;
					y = 0.782 - 0.09;
				};
				
				class CA_Gear_slot_inventory9 : CA_Gear_slot_inventory7 {
					idc = 142;
					x = 0.674 - 0.502;
					y = 0.782 - 0.09;
				};
				
				class CA_Gear_slot_inventory10 : CA_Gear_slot_inventory7 {
					idc = 143;
					x = 0.733 - 0.502;
					y = 0.782 - 0.09;
				};
				
				class CA_Gear_slot_inventory11 : CA_Gear_slot_inventory7 {
					idc = 144;
					x = 0.790 - 0.502;
					y = 0.782 - 0.09;
				};
				
				class CA_Gear_slot_inventory12 : CA_Gear_slot_inventory7 {
					idc = 145;
					x = 0.847 - 0.502;
					y = 0.782 - 0.09;
				};
				
				class CA_Gear_slot_inventory13 : CA_Gear_slot_inventory7 {
					idc = 1122;
					x = 10.1;
					y = 10.1;
				};
			};
		};
		
		class BagItemsGroup : RscControlsGroup {
			x = 0.502;
			y = 0.09;
			w = 0.463;
			h = 0.776;
			idc = 159;
			magW = 0.055;
			magH = 0.074;
			weaponW = 0.226;
			weaponH = 0.15;
			gunW = 0.113;
			gunH = 0.15;
			spacing = 0.002;
			text = "";
			color[] = {1, 1, 1, 1};
			colorBackground[] = {1, 1, 1, 1};
			colorBackgroundSelected[] = {1, 1, 1, 1};
			colorFocused[] = {1, 1, 1, 1};
			soundPush[] = {"", 0.1, 1};
			soundClick[] = {"", 0.1, 1};
			soundDoubleClick[] = {"", 0.1, 1};
			
			class VScrollbar {
				autoScrollSpeed = -1;
				autoScrollDelay = 5;
				autoScrollRewind = 0;
				color[] = {1, 1, 1, 0};
				width = 0.001;
			};
			
			class HScrollbar {
				color[] = {1, 1, 1, 0};
				height = 0.001;
			};
			
			class ScrollBar {
				color[] = {1, 1, 1, 0.6};
				colorActive[] = {1, 1, 1, 1};
				colorDisabled[] = {1, 1, 1, 0.3};
				thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
				arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
				arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
				border = "\ca\ui\data\ui_border_scroll_ca.paa";
			};
			
			class Controls {};
		};
		
		class Break_7 : RscLineBreak {};
		
		class ButtonFilters : RscIGUIShortcutButton {
			idc = 148;
			shortcuts[] = {0x00050000 + 3};
			x = 0.333336;
			y = 0.897067;
			text = $STR_EPOCH_PLAYER_279;
		};
		
		class ButtonRearm : RscIGUIShortcutButton {
			idc = 132;
			shortcuts[] = {0x00050000 + 2};
			x = 0.554743;
			y = 0.897067;
			text = $STR_EPOCH_PLAYER_280;
		};
		
		class ButtonOpenBag : RscIGUIShortcutButton {
			idc = 157;
			shortcuts[] = {0x00050000 + 2};
			x = 0.554743;
			y = 0.897067;
			text = $STR_EPOCH_PLAYER_281;
		};
		
		class ButtonCloseBag : RscIGUIShortcutButton {
			idc = 158;
			shortcuts[] = {0x00050000 + 2};
			x = 0.554743;
			y = 0.897067;
			text = $STR_EPOCH_PLAYER_282;
		};
		
		class ButtonContinue : RscIGUIShortcutButton {
			idc = 1;
			shortcuts[] = {0x00050000 + 0, 28, 57, 156};
			x = 0.77615;
			y = 0.897066;
			default = 1;
		};
		
		class ButtonClose : RscIGUIShortcutButton {
			idc = 2;
			shortcuts[] = {0x00050000 + 1};
			x = 0.0392216;
			y = 0.897066;
			text = $STR_EPOCH_PLAYER_283;
		};
	};
	
	class Filters {
		class All {
			name = $STR_EPOCH_PLAYER_284;
			mask = -1;
			image = "\ca\ui\data\igui_gear_filter_1_ca.paa";
		};
		
		class Primary {
			name = $STR_EPOCH_PLAYER_285;
			mask = 769;
			image = "\ca\ui\data\igui_gear_filter_2_ca.paa";
		};
		
		class Secondary {
			name = $STR_EPOCH_PLAYER_286;
			mask = 516;
			image = "\ca\ui\data\igui_gear_filter_3_ca.paa";
		};
		
		class HandGun {
			name = $STR_EPOCH_PLAYER_287;
			mask = 18;
			image = "\ca\ui\data\igui_gear_filter_4_ca.paa";
		};
		
		class Items {
			name = $STR_EPOCH_PLAYER_288;
			mask = 135168;
			image = "\ca\ui\data\igui_gear_filter_5_ca.paa";
		};
	};
	movingEnable = 1;
	emptyGun = "\ca\ui\data\ui_gear_gun_gs.paa";
	emptySec = "\ca\ui\data\ui_gear_sec_gs.paa";
	emptyEq = "\ca\ui\data\ui_gear_eq_gs.paa";
	emptyMag = "\ca\ui\data\ui_gear_mag_gs.paa";
	emptyMag2 = "\ca\ui\data\ui_gear_mag2_gs.paa";
	emptyHGun = "\ca\ui\data\ui_gear_hgun_gs.paa";
	emptyHGunMag = "\ca\ui\data\ui_gear_hgunmag_gs.paa";
	onLoad = "setMousePosition [0.5, 0.5];_this call fn_gearMenuChecks;[] spawn object_monitorGear; call gear_ui_init; call ui_gear_sound;if (isNil('IGUI_GEAR_activeFilter')) then { IGUI_GEAR_activeFilter = 0;}; private ['_dummy']; _dummy = [_this,'initDialog'] call compile preprocessFile	'\z\addons\dayz_code\system\handleGear.sqf'; _dummy = [_this,'onLoad'] execVM	'\z\addons\dayz_code\system\handleGear.sqf'; _dummy;";
	
	class ControlsBackground {
		class Mainback : RscPicture {
			idc = 1005;
			x = 0.04;
			y = 0.01;
			w = 1.2549;
			h = 1.6732;
			moving = 1;
			text = "\ca\ui\data\igui_background_gear_ca.paa";
		};
	};
};