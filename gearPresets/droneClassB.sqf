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
player forceAddUniform "U_B_CTRG_Soldier_3_F";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToUniform "HandGrenade";};
player addVest "V_Chestrig_blk";
player addItemToVest "16Rnd_9x21_Mag";
player addItemToVest "Chemlight_blue";
player addItemToVest "B_IR_Grenade";
for "_i" from 1 to 6 do {player addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 4 do {player addItemToVest "30Rnd_556x45_Stanag";};
player addBackpack "B_UAV_01_backpack_F";
player addHeadgear "H_Watchcap_khk";

comment "Add weapons";
player addWeapon "arifle_Mk20_plain_F";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "optic_ACO_grn";
player addWeapon "hgun_P07_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "B_UavTerminal";
player linkItem "NVGoggles_OPFOR";

comment "Set identity";
player setFace "WhiteHead_15";
player setSpeaker "male10eng";
