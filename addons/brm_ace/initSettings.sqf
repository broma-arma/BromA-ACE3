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
	QGVAR(bleedout),
	"LIST",
	[LSTRING(bleedout_DisplayName), LSTRING(bleedout_Description)],
	["STR_ace_medical_Category", LSTRING(SubCategory)],
	[[1, 2, 0], ["Yes", "AI Only", "No"], 0],
	true
] call CBA_fnc_addSetting;

[
	QGVAR(advfatigue_animDutyDefault),
	"SLIDER",
	[LSTRING(advfatigue_animDutyDefault_DisplayName), LSTRING(advfatigue_animDutyDefault_Description)],
	["STR_ace_advanced_fatigue_DisplayName", LSTRING(SubCategory)],
	[0, 10, 1, 1],
	true
] call CBA_fnc_addSetting;

[
	QGVAR(advfatigue_animDutyCrouch),
	"SLIDER",
	[LSTRING(advfatigue_animDutyCrouch_DisplayName), LSTRING(advfatigue_animDutyCrouch_Description)],
	["STR_ace_advanced_fatigue_DisplayName", LSTRING(SubCategory)],
	[0, 10, 1.5, 1],
	true
] call CBA_fnc_addSetting;

[
	QGVAR(advfatigue_animDutyProne),
	"SLIDER",
	[LSTRING(advfatigue_animDutyProne_DisplayName), LSTRING(advfatigue_animDutyProne_Description)],
	["STR_ace_advanced_fatigue_DisplayName", LSTRING(SubCategory)],
	[0, 10, 10, 1],
	true
] call CBA_fnc_addSetting;

[
	QGVAR(advfatigue_animDutySwimming),
	"SLIDER",
	[LSTRING(advfatigue_animDutySwimming_DisplayName), LSTRING(advfatigue_animDutySwimming_Description)],
	["STR_ace_advanced_fatigue_DisplayName", LSTRING(SubCategory)],
	[0, 10, 6.5, 1],
	true
] call CBA_fnc_addSetting;

[
	QGVAR(advfatigue_animDutyDiving),
	"SLIDER",
	[LSTRING(advfatigue_animDutyDiving_DisplayName), LSTRING(advfatigue_animDutyDiving_Description)],
	["STR_ace_advanced_fatigue_DisplayName", LSTRING(SubCategory)],
	[0, 10, 2.5, 1],
	true
] call CBA_fnc_addSetting;

[
	QGVAR(advfatigue_animDutyLowReady),
	"SLIDER",
	[LSTRING(advfatigue_animDutyLowReady_DisplayName), LSTRING(advfatigue_animDutyLowReady_Description)],
	["STR_ace_advanced_fatigue_DisplayName", LSTRING(SubCategory)],
	[0, 10, 1.2, 1],
	true
] call CBA_fnc_addSetting;

[
	QGVAR(advfatigue_animDutyHighReady),
	"SLIDER",
	[LSTRING(advfatigue_animDutyHighReady_DisplayName), LSTRING(advfatigue_animDutyHighReady_Description)],
	["STR_ace_advanced_fatigue_DisplayName", LSTRING(SubCategory)],
	[0, 10, 1.5, 1],
	true
] call CBA_fnc_addSetting;
