;------------------------------------------------------------------------------
; Verbs synonyms
;------------------------------------------------------------------------------
; Replaces some specifics verbs with more fitting synonyms. ("Drone laughs" => "Drone giggles")

loadVerbsSynonyms(state) {
	if (state == true) {
		Hotstring("B Z")
		Hotstring(":: laugh", " giggles")
		Hotstring(":: laughs", " giggles")
		Hotstring(":: think", " believes") ; don't think
		Hotstring(":: thinks", " believes")
		Hotstring("reset")
	}
}