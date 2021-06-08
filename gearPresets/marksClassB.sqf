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
player forceAddUniform "U_B_CTRG_3";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
player addVest "V_TacVest_oli";
for "_i" from 1 to 3 do {player addItemToVest "20Rnd_762x51_Mag";};
player addItemToVest "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {player addItemToVest "MiniGrenade";};
player addItemToVest "Chemlight_blue";
player addItemToVest "B_IR_Grenade";
player addHeadgear "H_Watchcap_khk";

comment "Add weapons";
player addWeapon "srifle_EBR_F";
player addPrimaryWeaponItem "bipod_01_F_snd";
player addWeapon "hgun_P07_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles_OPFOR";

comment "Set identity";
player setFace "GreekHead_A3_09";
player setSpeaker "male12eng";
