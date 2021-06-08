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
player forceAddUniform "U_BG_Guerrilla_6_1";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
player addVest "V_TacVest_camo";
for "_i" from 1 to 3 do {player addItemToVest "20Rnd_762x51_Mag";};
player addItemToVest "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {player addItemToVest "MiniGrenade";};
player addItemToVest "Chemlight_red";
player addItemToVest "O_IR_Grenade";
player addBackpack "B_AssaultPack_dgtl";
player addHeadgear "H_Shemag_olive";

comment "Add weapons";
player addWeapon "srifle_DMR_06_olive_F";
player addPrimaryWeaponItem "bipod_03_F_oli";
player addWeapon "hgun_Rook40_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles_OPFOR";

comment "Set identity";
player setFace "GreekHead_A3_09";
player setSpeaker "male01pervr";
