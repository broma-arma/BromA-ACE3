class ACE_Medical_Actions {
    class Advanced {
        class FieldDressing;
        class Defibrillator: fieldDressing {
            displayName = CSTRING(Use_Defibrillator);
            displayNameProgress = CSTRING(DEFAction);
            category = "advanced";
            items[] = {"ACE_Defibrillator"};
            allowSelfTreatment = 0;
            requiredMedic = 1;
			condition = QUOTE(((_this select 1) getVariable [ARR_2('ACE_medical_inCardiacArrest', false)]) || ((_this select 1) getVariable [ARR_2('ACE_medical_inReviveState', false)]));
            callbackSuccess = QUOTE(_player setVariable [ARR_2('ace_brmfmk_medical_defibStarted', false)]; _this call FUNC(treatmentAdvanced_DEF));
            callbackProgress = QUOTE(if !(_player getVariable [ARR_2('ace_brmfmk_medical_defibStarted', false)]) then { _player setVariable [ARR_2('ace_brmfmk_medical_defibStarted', true)]; playSound3D [ARR_7(QUOTE(QPATHTO_R(sounds\def\start.ogg)), _player, false, getPosASL _player, 2, 1, 50)]; }; true);
            callbackFailure = QUOTE(_player setVariable [ARR_2('ace_brmfmk_medical_defibStarted', false)];);
            animationPatient = "";
            animationPatientUnconscious = "AinjPpneMstpSnonWrflDnon_rolltoback";
            animationCaller = "AinvPknlMstpSlayWnonDnon_medicOther";
            animationCallerProne = "AinvPpneMstpSlayW[wpn]Dnon_medicOther";
            animationCallerSelf = "";
            animationCallerSelfProne = "";
            allowedSelections[] = {"body"};
            treatmentLocations[] = {"All"};
            treatmentTime = 5;
            itemConsumed = 0;
            litter[] = {};
        };
    };
};
