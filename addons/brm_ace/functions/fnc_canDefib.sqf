#include "ace_script_component.hpp"
/*
 * Author: BromA
 * Checks if defibrillation can be performed on the patient.
 *
 * Arguments:
 * 0: Medic <OBJECT>
 * 1: Patient <OBJECT>
 *
 * Return Value:
 * Can defibrillate <BOOL>
 *
 * Public: No
 */

params ["_medic", "_patient"];

alive _patient && IN_CRDC_ARRST(_patient)
