[
    QGVAR(conditionPAK),
	"LIST",
	[LSTRING(conditionPAK_DisplayName), LSTRING(conditionPAK_Description)],
	["STR_ace_medical_Category", LSTRING(SubCategory)],
	[[0, 1, 2], ["Anytime", "Not Bleeding", "Stable"], 2],
	true
] call CBA_fnc_addSetting;

[
    QGVAR(conditionSurgicalKit),
	"LIST",
	[LSTRING(conditionSurgicalKit_DisplayName), LSTRING(conditionSurgicalKit_Description)],
	["STR_ace_medical_Category", LSTRING(SubCategory)],
	[[0, 1], ["Anytime", "Not Bleeding"], 0],
	true
] call CBA_fnc_addSetting;

[
    QGVAR(tourniquetTime),
	"SLIDER",
	[LSTRING(tourniquetTime_DisplayName), LSTRING(tourniquetTime_Description)],
	["STR_ace_medical_Category", LSTRING(SubCategory)],
	[1, 10, 7, 2],
	true
] call CBA_fnc_addSetting;

[
    QGVAR(bleedout),
	"LIST",
	[LSTRING(bleedout_DisplayName), LSTRING(bleedout_Description)],
	["STR_ace_medical_Category", LSTRING(SubCategory)],
	[[1, 2, 0], ["Yes", "AI Only", "No"], 0],
	true
] call CBA_fnc_addSetting;
