;------------------------------------------------------------------------------
; Giggles
;------------------------------------------------------------------------------
; Replaces common laugh sounds (haha, lol, etc...) with *giggles*
if (giggles = 1){
		Hotstring("B Z0")
		Hotstring("::hehe", "*giggles*")
		Hotstring("::haha", "*giggles*")
		Hotstring("::*laughs*", "*giggles*")
		Hotstring("::lol", "*giggles*")
		Hotstring("::lel", "*giggles*")
		Hotstring("::kek", "*giggles*")
		Hotstring("::^^", "*giggles*")
		Hotstring("::hihi", "*giggles softly*")
		Hotstring("::lmao", "omg{!} *giggles*")
		Hotstring("reset")
	}
