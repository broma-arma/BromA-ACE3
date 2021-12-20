#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ace_main", "ace_medical_status", "ace_medical_treatment", "ace_medical_statemachine"};
        author = "";
        authors[] = {"BromA"};
        authorUrl = "http://broma.onozuka.info";
        VERSION_CONFIG;
    };
};

#include "ACE_Medical_Treatment_Actions.hpp"
#include "Statemachine.hpp"
#include "CfgSettings.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgFunctions.hpp"
