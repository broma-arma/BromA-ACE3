class CfgVehicles {
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
