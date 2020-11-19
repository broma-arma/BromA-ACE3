class ace_medical_treatment_actions {
	class BasicBandage;
	class FieldDressing;

	class PersonalAidKit: BasicBandage {
        condition = QFUNC(canPAK);
	};

	class SurgicalKit: FieldDressing {
        condition = QFUNC(canStitch);
	};
};
