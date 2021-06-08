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
for "_i" from 1 to 2 do {player addItemToUniform "11Rnd_45ACP_Mag";};
player addVest "V_TacVest_blk";
for "_i" from 1 to 5 do {player addItemToVest "11Rnd_45ACP_Mag";};
player addItemToVest "Chemlight_blue";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "B_IR_Grenade";
player addHeadgear "H_Watchcap_blk";

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
player setFace "WhiteHead_10";
player setSpeaker "male01per";
