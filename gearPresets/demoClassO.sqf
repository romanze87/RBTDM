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
player forceAddUniform "U_BG_Guerilla1_1";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
player addVest "V_PlateCarrier2_blk";
player addItemToVest "30Rnd_45ACP_Mag_SMG_01";
player addItemToVest "16Rnd_9x21_Mag";
player addItemToVest "Chemlight_red";
player addItemToVest "O_IR_Grenade";
player addBackpack "B_AssaultPack_rgr";
for "_i" from 1 to 4 do {player addItemToBackpack "HandGrenade";};
player addItemToBackpack "APERSTripMine_Wire_Mag";
player addItemToBackpack "APERSBoundingMine_Range_Mag";
player addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";
player addItemToBackpack "APERSMine_Range_Mag";
player addHeadgear "H_ShemagOpen_khk";

comment "Add weapons";
player addWeapon "SMG_01_F";
player addPrimaryWeaponItem "optic_Aco";
player addWeapon "hgun_Rook40_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles_OPFOR";

comment "Set identity";
player setFace "WhiteHead_10";
player setSpeaker "male01per";
