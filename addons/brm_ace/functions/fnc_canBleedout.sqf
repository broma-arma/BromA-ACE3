#include "script_component.hpp"
/*
 * Author: BromA
 * Checks if the unit can bleedout.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * Can bleedout <BOOL>
 *
 * Public: No
 */

params ["_unit"];

switch (GVAR(bleedout)) do {
	case 0: { false }; // No
	case 2: { !isPlayer _unit }; // AI Only
	default { true }; // Yes
};
