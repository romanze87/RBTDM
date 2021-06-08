comment "Exported from Arsenal by Roman";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "U_B_CTRG_2";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
player addVest "V_TacVest_oli";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addItemToVest "16Rnd_9x21_Mag";
player addItemToVest "Chemlight_blue";
player addItemToVest "B_IR_Grenade";
player addBackpack "B_AssaultPack_rgr";
player addItemToBackpack "200Rnd_65x39_cased_Box_Tracer";
player addHeadgear "H_Watchcap_blk";

comment "Add weapons";
player addWeapon "LMG_Mk200_F";
player addPrimaryWeaponItem "optic_Holosight";
player addPrimaryWeaponItem "bipod_02_F_blk";
player addWeapon "hgun_P07_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles_OPFOR";

comment "Set identity";
player setFace "GreekHead_A3_08";
player setSpeaker "male03per";
