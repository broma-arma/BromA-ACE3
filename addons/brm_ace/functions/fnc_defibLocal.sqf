#include "ace_script_component.hpp"
/*
 * Author: BromA
 * Local callback for finishing performing defibrillation on the patient.
 *
 * Arguments:
 * 0: The patient <OBJECT>
 *
 * Return Value:
 * None
 *
 * Public: No
 */

params ["_patient"];

if !([_medic, _patient] call brm_ace_main_fnc_canDefib) exitWith {};

[QEGVAR(medical,CPRSucceeded), _patient] call CBA_fnc_localEvent;
