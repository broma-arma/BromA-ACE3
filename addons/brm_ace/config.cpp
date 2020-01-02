#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {"ACE_Defibrillator"};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ace_medical"};
        author = "";
        authors[] = {"BromA"};
        authorUrl = "http://broma.onozuka.info";
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
#include "ACE_Medical_Treatments.hpp"

class ACE_newEvents {
    treatmentAdvanced_DEFLocal = QGVAR(treatmentAdvanced_DEFLocal);
};

class CfgFunctions {
    class ace_medical {
        class medical {
            class itemCheck { file = "\z\brm_ace\addons\main\functions\fnc_itemCheck.sqf"; };
            class treatmentAdvanced_CPR { file = "\z\brm_ace\addons\main\functions\fnc_treatmentAdvanced_CPR.sqf"; };
            class treatmentAdvanced_CPRLocal { file = "\z\brm_ace\addons\main\functions\fnc_treatmentAdvanced_CPRLocal.sqf"; };
            class treatmentAdvanced_fullHealLocal { file = "\z\brm_ace\addons\main\functions\fnc_treatmentAdvanced_fullHealLocal.sqf"; };
        };
    };
};
