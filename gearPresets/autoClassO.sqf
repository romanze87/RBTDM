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
player forceAddUniform "U_BG_Guerilla2_3";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
player addVest "V_TacVest_khk";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addItemToVest "16Rnd_9x21_Mag";
player addItemToVest "Chemlight_red";
player addItemToVest "O_IR_Grenade";
player addBackpack "B_AssaultPack_ocamo";
for "_i" from 1 to 2 do {player addItemToBackpack "150Rnd_762x54_Box_Tracer";};
player addHeadgear "H_ShemagOpen_khk";
player addGoggles "G_Bandanna_blk";

comment "Add weapons";
player addWeapon "LMG_Zafir_F";
player addWeapon "hgun_Rook40_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles_OPFOR";

comment "Set identity";
player setFace "GreekHead_A3_08";
player setSpeaker "male03per";
