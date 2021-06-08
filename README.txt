Disclaimer: This mission must be hosted on a dedicated server or it will not function properly.

Setup:
This mission was created to be played on a map I created called VolcIsland. Which was created for a balanced CQB game.
I thought it would more useful if I made it so that the player can play it on any map they want just by creating some markers and such.

Open a map of your choice in the editor.
1. Create 4 markers where you want Blufor to spawn. Name them bP1S, bP2S, bP3S and bP4S.
2. Create 4 bluFor rifleman preferably on those bluFor spawn markers (bP1S etc.).(this doesnt really affect anything because they get teleported anyways). Name them bp1, bp2, bp3, and bp4.
3. Create 4 markers where you want opFor to spawn. Name them oP1S, oP2S, oP3S and oP4S.
4. Create 4 opFor rifleman on the opFor spawn markers (op1s etc.).
5. Be sure to make all rifleman "Playable".
6. For each bluFor unit add this text into the init field. "blueGroup = group this; removeAllWeapons this;  removeAllItems this;  removeAllAssignedItems this;  removeUniform this;  removeVest this;  removeBackpack this;  removeHeadgear this;  removeGoggles this;"
	Do not include quotations.
7. For each opFor unit add this text into the init field. "redGroup = group this; removeAllWeapons this;  removeAllItems this;  removeAllAssignedItems this;  removeUniform this;  removeVest this;  removeBackpack this;  removeHeadgear this;  removeGoggles this;"
	Again, do not inclue quotations.
8. For "Role Description", Make bluFor players 1-4, RANGER 1, 2, 3, 4, and opFor players 1-4 TERRORIST 1, 2, 3, and 4.
9. Create a marker in the center of your play field and name it "taskArea".

Optional Changes:
1.Open Scripts\setPosition and adjust the direction players spawn.