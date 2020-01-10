#include "ace_script_component.hpp"
/*
 * Author: BromA
 * Checks if the patient can be stitched.
 *
 * Arguments:
 * 0: Medic <OBJECT>
 * 1: Patient <OBJECT>
 *
 * Return Value:
 * Can stitch <BOOL>
 *
 * Public: No
 */

params ["_medic", "_patient"];

// Not Bleeding
if (brm_ace_main_conditionSurgicalKit == 1 && { GET_WOUND_BLEEDING(_patient) > 0 }) exitWith { false };

_this call FUNC(canStitch)
