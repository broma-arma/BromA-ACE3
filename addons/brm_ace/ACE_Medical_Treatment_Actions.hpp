#include "\z\ace\addons\medical_engine\script_macros_medical.hpp"

class ace_medical_treatment_actions {
    class BasicBandage;
    class Defibrillator: BasicBandage {
        displayName = CSTRING(Use_Defibrillator);
        displayNameProgress = CSTRING(DEFAction);
        icon = PATHTOF(UI\icons\defibrillator.paa);
        category = "advanced";
        treatmentLocations = TREATMENT_LOCATIONS_ALL;
        allowedSelections[] = {"Body"};
        allowSelfTreatment = 0;
        medicRequired = 1;
        treatmentTime = 5;
        items[] = {"ACE_Defibrillator"};
        condition = QFUNC(canDefib);
        callbackStart = QFUNC(defibStart);
        callbackProgress = "";
        callbackSuccess = QFUNC(defib);
        callbackFailure = "";
        animationMedic = "AinvPknlMstpSlayW[wpn]Dnon_medicOther";
        animationMedicProne = "AinvPpneMstpSlayW[wpn]Dnon_medicOther";
        animationMedicSelf = "";
        animationMedicSelfProne = "";
        consumeItem = 0;
        litter[] = {};
    };
};
