;------------------------------------------------------------------------------
; Random sentences insertion (Hesitation Marks & Horny Thoughts)
;------------------------------------------------------------------------------
; Hesitation Marks: Inserts some hesitation marks (ie. "ummm..." or "like...") from time to time
; Horny Thoughts: Inserts some horny thoughts (ie. "... *god deer is horny*...") from time to time (less common than hesitation marks)

; Script had some issues and weirdness with random insertion, so it had to only be allowed after some specific words
if (hornyThoughts == 1 OR hesitationMarks == 1){
	Hotstring("B0 Z")
	Hotstring(":*:and ", Func("insertHesitationsAndHornyThoughts"))
	Hotstring(":*:to ", Func("insertHesitationsAndHornyThoughts"))
	Hotstring(":?*:, ", Func("insertHesitationsAndHornyThoughts"))
	if (contractionsFormal = 0) { ; Breaks formal contraction, only activate these hotstrings if it's off
		Hotstring(":*:could ", Func("insertHesitationsAndHornyThoughts"))
		Hotstring(":*:should ", Func("insertHesitationsAndHornyThoughts"))
		Hotstring(":*:would ", Func("insertHesitationsAndHornyThoughts"))
	}
	Hotstring("reset")
}

insertHesitationsAndHornyThoughts() {
	global hesitationMarks
	global hornyThoughts
	global 3rdPronouns
	global Pronoun
	;TODO Rework the way probabilities are handled (Maybe add configuration from the .ini)
	Random, Var, 1, 4 ; will trigger one of the next two outcomes
	if (var = 1) {
		if (hesitationMarks = 1) {
			Random, Var, 1, 5 ; 1 chance out of 5 to trigger this if we enter this block
			if (var = 1) {
				sStrings := "like... |like, |like, |hmm... |like... |uhhh... |ummm... |um |er |uh |"
				randomString(sStrings, 10)
			}
		} else {
			
			if (hornyThoughts = 1) {
				Random, Var, 1, 15 ; 1 chance out of 15 to trigger this if we enter this block
				if (var = 1) {
					SendInput {BS 1}
					if (3rdPronouns = 1) {
						sStrings := "... *god " . Pronoun . " is horny*... |... *" . Pronoun . " needs to be fucked*... |... *" . Pronoun . " wants to suck cock soooooo bad*... |... *gosh, " . Pronoun . " is like, so ditzy*... |... *Why is " . Pronoun . " so wet?*... |"
					} else {
						sStrings := "... *god I'm horny*... |... *I need to be fucked*... |... *I want to suck cock soooooo bad*... |... *gosh, I'm like, so ditzy*... |... *Why am I so wet?*... |"
					}
					randomString(sStrings, 5)
				}
			}
		}		 
	} 
}


