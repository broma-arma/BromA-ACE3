class ACE_Medical_StateMachine {
	class FatalInjury {
		class SecondChance {
			condition = QUOTE(call FUNC(conditionSecondChance));
		};
	};
	class CardiacArrest {
		class Bleedout {
			condition = QUOTE(call FUNC(canBleedout));
		};
	};
};
