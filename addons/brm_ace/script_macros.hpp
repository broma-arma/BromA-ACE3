#include "\z\ace\addons\medical_engine\script_macros_medical.hpp"
#include "\z\ace\addons\main\script_macros.hpp"

#define PATHTO_FNC(func) class func {\
	file = QPATHTOF(functions\DOUBLES(fnc,func).sqf);\
	CFGFUNCTION_HEADER;\
	RECOMPILE;\
}
