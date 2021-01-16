// https://github.com/acemod/ACE3/blob/03576b86b96cc363f70590de5936725a05c209e7/addons/medical_statemachine/functions/fnc_conditionSecondChance.sqf
#include "\z\ace\addons\medical_statemachine\script_component.hpp"
/*
 * Author: mharis001
 * Condition for going into cardiac arrest upon receiving a fatal injury.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player] call brm_ace_main_fnc_conditionSecondChance
 *
 * Public: No
 */

params ["_unit"];

if (isPlayer _unit) then {
	private _secondChance = GVAR(fatalInjuriesPlayer) != FATAL_INJURIES_ALWAYS;
	if (_secondChance) then {
		private _secondChances = _unit getVariable ["brm_ace_secondChances", -1];
		if (_secondChances > -1) then {
			_secondChance = _secondChances > 0;
			_secondChances = [-1, _secondChances - 1] select _secondChance;
			_unit setVariable ["brm_ace_secondChances", _secondChances];
			["brm_ace_secondChances", [_unit, _secondChance, _secondChances]] call CBA_fnc_localEvent;
		};
	};

	_secondChance
} else {
	GVAR(fatalInjuriesAI) != FATAL_INJURIES_ALWAYS
}
