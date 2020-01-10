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
