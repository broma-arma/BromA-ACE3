#include "ace_script_component.hpp"
/*
 * Author: BromA
 * Checks if the patient can be PAK'd.
 *
 * Arguments:
 * 0: Medic (not used) <OBJECT>
 * 1: Patient <OBJECT>
 *
 * Return Value:
 * Can PAK <BOOL>
 *
 * Public: No
 */

params ["", "_patient"];

switch (brm_ace_main_conditionPAK) do {
	case 0: { true }; // Anytime
	case 1: { GET_WOUND_BLEEDING(_patient) == 0 }; // Not Bleeding
	default { _patient call EFUNC(medical_status,isInStableCondition) }; // Stable
};
