#include "script_component.hpp"

// Fix AI aiming/shooting at hidden/unconscious units
// https://github.com/acemod/ACE3/issues/7299
["ace_common_setHidden", {
    params ["_object", "_set"];

    private _audible = [_object getUnitTrait "audibleCoef"] param [0, 1];
    if (_set > 0) then {
        if (_audible != 0) then {
            _object setVariable [QGVAR(oldAudibility), _audible];
            _object setUnitTrait ["audibleCoef", 0];
        };
    } else {
        _audible = _object getVariable [QGVAR(oldAudibility), _audible];
        _object setUnitTrait ["audibleCoef", _audible];
    };
}] call CBA_fnc_addEventHandler;

// Show remaining lives to medics
["ace_medicalMenuOpened", {
	params ["_player", "_target", "_display"];

	if (ace_medical_statemachine_fatalInjuriesPlayer != 0 && { [_player] call ace_medical_treatment_fnc_isMedic }) then {
		private _secondChances = _target getVariable ["brm_ace_secondChances", -1];
		if (_secondChances > -1) then {
			private _ctrlTitle = _display displayCtrl 1200;
			_ctrlTitle ctrlSetText format ["%1 (Lives: %2)", ctrlText _ctrlTitle, _secondChances];
		};
	};
}] call CBA_fnc_addEventHandler;
