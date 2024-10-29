//Place the following in the QM's .init in the editor 
//this addAction["<t color='#38c12e'>5-1 Rifleman</t>", {player execVM "Loadouts\RecceRifleman.sqf";}, [],8,false,false,"","_this distance _target < 10"];

//Reset Unit traits 
_this setVariable ["ace_medical_medicclass",0, true];
_this setVariable ["ACE_IsEngineer",0, true];

//Create Needed Variables
_PlayerUniform = uniform _this;
_PlayerVest = vest _this;
_PlayerBackpack = backpack _this;
_PlayerHelmet = headgear _this;


// Remove Contents of Uniform / Weapons to prevent Duping
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;


// Give player the Basic Weapons needed (including Binos)
_this addWeapon "UK3CB_BAF_L85A3";
_this addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
_this addPrimaryWeaponItem "RKSL_optic_LDS";
_this addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";
_this addPrimaryWeaponItem "UK3CB_underbarrel_acc_grippod";
_this addWeapon "rhsusf_weap_glock17g4";
_this addHandgunItem "UK3CB_BAF_9_17Rnd";
_this addWeapon "Binocular";

// Give the Player the basic needed items such as Map
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "TFAR_microdagr";
_this linkItem "TFAR_rf7800str";

// Uniform Items
if (_PlayerUniform isEqualTo "") then {
	_this forceAddUniform "QAC_UBACS_MTP";
	for "_i" from 1 to 5 do {_this addItemToUniform "ACE_CableTie";};
	_this addItemToUniform "ACE_Canteen";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_EarPlugs";};
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};}
else {
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_CableTie";};
	_this addItemToUniform "ACE_Canteen";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_EarPlugs";};
	_this addItemToUniform "ACE_Flashlight_XL50";
	_this addItemToUniform "ACE_MapTools";
	for "_i" from 1 to 2 do {_this addItemToUniform "ACE_MRE_BeefStew";};
};	

// Vest Items
if (_PlayerVest isEqualTo "") then {
	_this addVest "Virtus_D_4";
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_556_30Rnd";};
	for "_i" from 1 to 4 do {_this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};}
else {
	for "_i" from 1 to 3 do {_this addItemToVest "UK3CB_BAF_556_30Rnd";};
	for "_i" from 1 to 4 do {_this addItemToVest "UK3CB_BAF_556_30Rnd_T";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_SmokeShell";};
	for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
	for "_i" from 1 to 2 do {_this addItemToVest "UK3CB_BAF_9_17Rnd";};
};

// Backpack Items
if (_PlayerBackpack isEqualTo "") then {
	_this addBackpack "mpx_daysack8";
	_this addItemToBackpack "ACE_EntrenchingTool";
	_this addItemToBackpack "UK3CB_BAF_HMNVS";
	_this addItemToBackpack "H2H_acc_bayo_M12";
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_Tourniquet";};
	_this addItemToBackpack "ACE_epinephrine";
	_this addItemToBackpack "ACE_morphine";
	_this addItemToBackpack "UK3CB_BAF_762_100Rnd_T";
	_this addItemToBackpack "ACE_bodyBag";
	_this addItemToBackpack "ACE_Painkillers";
	_this addItemToBackpack "UK3CB_BAF_H_Beret_RA_PRR";
	_this addItemToBackpack "kat_chestSeal";
	_this addItemToBackpack "kat_guedel";
	_this addItemToBackpack "UK3CB_BAF_762_L42A1_20Rnd";
	_this addItemToBackpack "UK3CB_BAF_762_L42A1_20Rnd_T";
	_this addItemToBackpack "ACE_microDAGR";
	_this addItemToBackpack "ACE_Tripod";
	_this addItemToBackpack "ACE_SpottingScope";}    
	else {
	_this addItemToBackpack "ACE_EntrenchingTool";
	_this addItemToBackpack "UK3CB_BAF_HMNVS";
	_this addItemToBackpack "H2H_acc_bayo_M12";
	for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_IR_Strobe_Item";};
	for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 8 do {_this addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_Tourniquet";};
	_this addItemToBackpack "ACE_epinephrine";
	_this addItemToBackpack "ACE_morphine";
	_this addItemToBackpack "UK3CB_BAF_762_100Rnd_T";
	_this addItemToBackpack "ACE_bodyBag";
	_this addItemToBackpack "ACE_Painkillers";
	_this addItemToBackpack "UK3CB_BAF_H_Beret_RA_PRR";
	_this addItemToBackpack "kat_chestSeal";
	_this addItemToBackpack "kat_guedel";
	_this addItemToBackpack "UK3CB_BAF_762_L42A1_20Rnd";
	_this addItemToBackpack "UK3CB_BAF_762_L42A1_20Rnd_T";
    	_this addItemToBackpack "ACE_microDAGR";
	_this addItemToBackpack "ACE_Tripod";
	_this addItemToBackpack "ACE_SpottingScope";
};

// Check for Helmet 
if (_PlayerHelmet isEqualTo "") then{
	_this addHeadgear "Rev_One";
};

//Assign Unit traits

//Hint to confirm full script Load
hint "Reconnaissance Rifleman kit successfully loaded!";
sleep 15;
hintSilent "";
