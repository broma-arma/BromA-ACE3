#include "\z\ace\addons\advanced_fatigue\script_component.hpp"
/*
 * Author: BaerMitUmlaut
 * Calculates the duty of the current animation.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Animation name <STRING>
 *
 * Return Value:
 * Duty <NUMBER>
 *
 * Example:
 * [player, "AidlPercMstpSlowWrflDnon_G05"] call ace_advanced_fatigue_fnc_getAnimDuty
 *
 * Public: No
 */
params ["_unit", "_animName"];

private _duty = 1;
private _animType = _animName select [1, 3];

GVAR(isSwimming) = false;
GVAR(isProne) = (stance _unit) == "PRONE";

if (_animType in ["idl", "mov", "adj"]) then {
    switch (_animName select [5, 3]) do {
        case ("knl"): {
            _duty = brm_ace_main_advfatigue_animDutyCrouch;
        };
        case ("pne"): {
            _duty = brm_ace_main_advfatigue_animDutyProne;
            GVAR(isProne) = true; // #4880 - Unarmed sprint->prone has wrong `stance`
        };
        default {
            _duty = brm_ace_main_advfatigue_animDutyDefault;
        };
    };

    if (currentWeapon _unit != handgunWeapon _unit) then {
        if (_animName select [13, 3] == "ras") then {
            // low ready jog
            _duty = _duty * brm_ace_main_advfatigue_animDutyLowReady;
            if (_animName select [9, 3] == "tac") then {
                // high ready jog/walk
                _duty = _duty * brm_ace_main_advfatigue_animDutyHighReady;
            };
        };
    };
} else {
    // swimming and diving
    switch (true) do {
        case (_animType in ["swm", "ssw", "bsw"]): {
            _duty = brm_ace_main_advfatigue_animDutySwimming;
            GVAR(isSwimming) = true;
        };
        case (_animType in ["dve", "sdv", "bdv"]): {
            _duty = brm_ace_main_advfatigue_animDutyDiving;
            GVAR(isSwimming) = true;
        };
    };
};

_duty
