class ace_medical_treatment {
    class Bandaging {
        class FieldDressing;
        class QuikClot: FieldDressing {
            class Abrasion;
            class AbrasionLarge: Abrasion {
				// Fix 100% chance of reopening on quikclot'd large abrasions
				// https://github.com/acemod/ACE3/pull/7383
                reopeningChance = 0.5;
            };
        };
    };
};
