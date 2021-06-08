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
player forceAddUniform "U_I_C_Soldier_Para_5_F";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToUniform "MiniGrenade";};
player addVest "V_PlateCarrierSpec_mtp";
player addItemToVest "16Rnd_9x21_Mag";
player addItemToVest "Chemlight_red";
player addItemToVest "O_IR_Grenade";
for "_i" from 1 to 4 do {player addItemToVest "30Rnd_556x45_Stanag";};
for "_i" from 1 to 6 do {player addItemToVest "1Rnd_HE_Grenade_shell";};
player addHeadgear "H_Bandanna_blu";

comment "Add weapons";
player addWeapon "arifle_TRG21_GL_F";
player addPrimaryWeaponItem "acc_flashlight";
player addPrimaryWeaponItem "optic_Aco";
player addWeapon "hgun_Rook40_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";

comment "Set identity";
player setFace "WhiteHead_15";
player setSpeaker "male10eng";
