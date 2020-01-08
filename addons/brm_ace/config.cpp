#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ace_medical"};
        author = "";
        authors[] = {"BromA"};
        authorUrl = "http://broma.onozuka.info";
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
