;------------------------------------------------------------------------------
; 3rd Person Pronouns
;------------------------------------------------------------------------------
;Forces you to refer to yourself as whatever your Custom Pronoun is set to (ie. "I" => "Doll", "My" => "Toys's"...)

load3rdPronouns(state) {
	if (state == true) {
		Hotstring("B Z0")
		Hotstring("::do i", "does " . customPronoun)
		Hotstring("::am i", "is " . customPronoun)
		Hotstring("::have i", "has " . customPronoun)
		Hotstring("::i", customPronoun)
		Hotstring("::me", customPronoun)
		Hotstring("::my", customPronoun . "'s")
		Hotstring("::mine", customPronoun . "'s")
		Hotstring("::myself", customPronoun . "self")
		Hotstring("reset")
	}
}

