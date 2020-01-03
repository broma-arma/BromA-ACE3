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

#include "ACE_Medical_Treatment_Actions.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgReplacementItems.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
