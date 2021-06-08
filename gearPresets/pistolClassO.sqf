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
player forceAddUniform "U_BG_Guerilla2_1";
player addItemToUniform "FirstAidKit";
player addItemToUniform "11Rnd_45ACP_Mag";
player addVest "V_TacVest_camo";
for "_i" from 1 to 5 do {player addItemToVest "11Rnd_45ACP_Mag";};
player addItemToVest "Chemlight_red";
player addItemToVest "O_IR_Grenade";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addHeadgear "H_ShemagOpen_tan";

comment "Add weapons";
player addWeapon "hgun_Pistol_heavy_01_F";
player addHandgunItem "muzzle_snds_acp";
player addHandgunItem "optic_MRD";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles_OPFOR";

comment "Set identity";
player setFace "GreekHead_A3_08";
player setSpeaker "male03per";
