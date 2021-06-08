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
for "_i" from 1 to 2 do {player addItemToUniform "FirstAidKit";};
for "_i" from 1 to 5 do {player addItemToUniform "SmokeShell";};
player addVest "V_PlateCarrier1_blk";
for "_i" from 1 to 6 do {player addItemToVest "FirstAidKit";};
player addItemToVest "30Rnd_556x45_Stanag";
player addItemToVest "Chemlight_blue";
player addItemToVest "B_IR_Grenade";
player addBackpack "B_AssaultPack_blk";
player addItemToBackpack "Medikit";
for "_i" from 1 to 4 do {player addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
player addHeadgear "H_Watchcap_blk";

comment "Add weapons";
player addWeapon "arifle_Mk20_GL_F";
player addPrimaryWeaponItem "optic_ACO_grn";
player addWeapon "hgun_P07_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles_OPFOR";

comment "Set identity";
player setFace "WhiteHead_15";
player setSpeaker "male10eng";
