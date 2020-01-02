class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_Actions {
            // Include actions in body parts for treatment while in the open
            #define EXCEPTIONS exceptions[] = {"isNotSwimming"};
            #define ACTION_CONDITION condition = QUOTE(GVAR(menuTypeStyle) == 0);
            #include "ACE_Medical_Actions.hpp"

            // Create a consolidates medical menu for treatment while boarded
            class ACE_MainActions {
                class Medical {
                    #undef EXCEPTIONS
                    #undef ACTION_CONDITION
                    #define EXCEPTIONS exceptions[] = {"isNotInside", "isNotSwimming"};
                    #define ACTION_CONDITION condition = "true";
                    #include "ACE_Medical_Actions.hpp"
                };
            };
        };
    };

    class Item_Base_F;
    class ACE_DefibrillatorItem: Item_Base_F {
        scope = 2;
        scopeCurator = 2;
        displayName = CSTRING(Defibrillator_Display);
        author = ECSTRING(common,ACETeam);
        model = "\A3\Structures_F_EPA\Items\Medical\Defibrillator_F.p3d";
        vehicleClass = "Items";
        class TransportItems {
            MACRO_ADDITEM(ACE_Defibrillator,1);
        };
    };
    class ACE_medicalSupplyCrate;
    class ACE_medicalSupplyCrate_advanced: ACE_medicalSupplyCrate {
        class TransportItems {
            MACRO_ADDITEM(ACE_Defibrillator,2);
        };
    };
};
