#include "ace_script_component.hpp"
/*
 * Author: BromA
 * Callback for finishing performing defibrillation on the patient.
 *
 * Arguments:
 * 0: Medic <OBJECT>
 * 1: Patient <OBJECT>
 *
 * Return Value:
 * None
 *
 * Public: No
 */

_this spawn {
	params ["_medic", "_patient"];

	if ([_medic, _patient] call brm_ace_main_fnc_canDefib) then {

		playSound3D ["z\brm_ace\addons\main\sounds\defib\successful.ogg", _medic, false, getPosASL _medic, 2, 1, 50];

		sleep 0.6;

		if (GET_BLOOD_VOLUME(_patient) > BLOOD_VOLUME_FATAL && { random(1) >= 0.1 }) then {
			playSound3D ["z\brm_ace\addons\main\sounds\defib\good_beep.ogg", _medic, false, getPosASL _medic, 2, 1, 50];

			[_patient, "activity", "STR_BRM_ACE_Main_Activity_DEF_Good", [[_medic, false, true] call EFUNC(common,getName)]] call FUNC(addToLog);

			["brm_ace_main_defibLocal", _patient, _patient] call CBA_fnc_targetEvent;
		} else {
			playSound3D ["z\brm_ace\addons\main\sounds\defib\bad_beep.ogg", _medic, false, getPosASL _medic, 2, 1, 50];

			[_patient, "activity", "STR_BRM_ACE_Main_Activity_DEF_Bad", [[_medic, false, true] call EFUNC(common,getName)]] call FUNC(addToLog);
		};
	} else {
		playSound3D ["z\brm_ace\addons\main\sounds\defib\bad_beep.ogg", _medic, false, getPosASL _medic, 2, 1, 50];
	};
};
