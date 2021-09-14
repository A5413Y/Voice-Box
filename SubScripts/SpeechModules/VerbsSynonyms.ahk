;------------------------------------------------------------------------------
; Verbs synonyms
;------------------------------------------------------------------------------
; Replaces some specifics verbs with more fitting synonyms. ("Drone laughs" => "Drone giggles")
if (verbsSynonyms = 1){
		Hotstring("B Z")
		Hotstring(":: laugh", " giggles")
		Hotstring(":: laughs", " giggles")
		Hotstring(":: think", " believes") ; don't think
		Hotstring(":: thinks", " believes")
		Hotstring("reset")
	}
