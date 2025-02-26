;------------------------------------------------------------------------------
; Phonetic
;------------------------------------------------------------------------------
; Replaces some common word sounds with phonetically similar ones (ie. "-ome" => "-um", "-ing" => "-in'")

if (phonetic = 1){
		Hotstring("B Z")
		; Place exceptions here, words which shouldn't be altered by the next hotstrings
		Hotstring("::cock", "cock")
		Hotstring("::suck", "suck")

		; Phonetic alterations
		Hotstring(":?:ck", "k")
		Hotstring(":?:ome", "um")
		Hotstring(":?:ewd", "ood")
		Hotstring(":?:ph", "f")
		Hotstring(":?:ing", "in")
		Hotstring(":?:kn", "n")
		Hotstring("reset")
}	

