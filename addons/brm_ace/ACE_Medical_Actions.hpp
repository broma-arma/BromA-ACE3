class ACE_Torso {
    class FieldDressing;
    class Defibrillator: fieldDressing {
        displayName = CSTRING(Use_Defibrillator);
        condition = QUOTE([ARR_4(_player, _target, 'body', 'Defibrillator')] call ace_medical_fnc_canTreatCached);
        statement = QUOTE([ARR_4(_player, _target, 'body', 'Defibrillator')] call ace_medical_fnc_treatment);
        EXCEPTIONS
        icon = PATHTOF(UI\icons\defibrillator.paa);
    };
};
