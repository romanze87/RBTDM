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
player forceAddUniform "U_BG_Guerilla3_1";
for "_i" from 1 to 2 do {player addItemToUniform "FirstAidKit";};
for "_i" from 1 to 5 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToUniform "SmokeShellRed";};
player addVest "V_PlateCarrier1_rgr";
for "_i" from 1 to 6 do {player addItemToVest "FirstAidKit";};
player addItemToVest "16Rnd_9x21_Mag";
for "_i" from 1 to 2 do {player addItemToVest "30Rnd_556x45_Stanag";};
player addItemToVest "Chemlight_red";
player addItemToVest "O_IR_Grenade";
player addBackpack "B_AssaultPack_rgr";
player addItemToBackpack "Medikit";
for "_i" from 1 to 5 do {player addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
player addHeadgear "H_ShemagOpen_khk";

comment "Add weapons";
player addWeapon "arifle_TRG21_GL_F";
player addPrimaryWeaponItem "optic_Aco";
player addWeapon "hgun_Rook40_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles_OPFOR";

comment "Set identity";
player setFace "WhiteHead_15";
player setSpeaker "male10eng";
