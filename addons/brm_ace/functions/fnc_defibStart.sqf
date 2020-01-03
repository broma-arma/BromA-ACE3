#include "script_component.hpp"
/*
 * Author: BromA
 * Handles starting the defibrillation treatment.
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

params ["_medic", "_patient"];

playSound3D [QPATHTO_R(sounds\defib\start.ogg), _medic, false, getPosASL _medic, 2, 1, 50];
