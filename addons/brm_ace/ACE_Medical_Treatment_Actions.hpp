class ace_medical_treatment_actions {
	class BasicBandage;

	class PersonalAidKit: BasicBandage {
        condition = QFUNC(canPAK);
	};

	class ApplyTourniquet: BasicBandage {
        treatmentTime = QGVAR(tourniquetTime);
	};
};
