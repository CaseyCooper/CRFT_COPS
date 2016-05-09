/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default Sheriff gear.
player addUniform "U_Competitor";
player addVest "TRYK_V_Sheriff_BA_OD";
player addHeadgear "A3M_Leo_SherHat";
player addGoggles "G_Aviator";

//Stuff in vest
player addItemToVest "DDOPP_X26";
player addItemToVest "DDOPP_1Rnd_X26";
player addItemToVest "DDOPP_1Rnd_X26";
player addItemToVest "DDOPP_1Rnd_X26";
player addItemToVest "DDOPP_1Rnd_X26";



player addWeapon "hgun_mas_glocksf_F";
player addMagazine "12Rnd_mas_45acp_Mag";
player addMagazine "12Rnd_mas_45acp_Mag";
player addMagazine "12Rnd_mas_45acp_Mag";
player addMagazine "12Rnd_mas_45acp_Mag";
player addMagazine "12Rnd_mas_45acp_Mag";
player addMagazine "12Rnd_mas_45acp_Mag";

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";

[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;