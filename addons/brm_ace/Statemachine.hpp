class ACE_Medical_StateMachine {
	class CardiacArrest {
		class Bleedout {
			condition = QUOTE(call FUNC(canBleedout));
		};
	};
};
