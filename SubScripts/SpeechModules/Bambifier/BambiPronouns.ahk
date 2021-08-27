;------------------------------------------------------------------------------
; Custom Pronouns
;------------------------------------------------------------------------------
; Forces you to refer to yourself as a custom pronoun you set (ie. "I" => "drone", "My" => "drone's"...)

loadBambiPronouns(state) {
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

