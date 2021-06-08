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
player forceAddUniform "U_BG_leader";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToUniform "HandGrenade";};
player addVest "V_Chestrig_khk";
player addItemToVest "16Rnd_9x21_Mag";
player addItemToVest "Chemlight_red";
player addItemToVest "O_IR_Grenade";
for "_i" from 1 to 6 do {player addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 4 do {player addItemToVest "30Rnd_556x45_Stanag";};
player addBackpack "O_UAV_01_backpack_F";
player addHeadgear "H_Bandanna_khk_hs";

comment "Add weapons";
player addWeapon "arifle_TRG21_F";
player addPrimaryWeaponItem "acc_flashlight";
player addPrimaryWeaponItem "optic_Aco";
player addWeapon "hgun_Rook40_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "O_UavTerminal";

comment "Set identity";
player setFace "WhiteHead_15";
player setSpeaker "male10eng";
