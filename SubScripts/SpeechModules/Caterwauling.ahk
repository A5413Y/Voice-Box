;Kitten Mode
;Inserts random Nyaa's into your sentences, forces a few cat puns, and certain word substituations
;caterwauling

if (caterWauling = 1){
	Hotstring("B Z")
	;Forced catpuns, set to only trigger 1/4 times so they're not too memey	
	Hotstring(":*:perfect", Func("randomString").Bind("perfect|perfect|perfect|purrfect", 4))
	Hotstring("::apologies", Func("randomString").Bind("apologies|apologies|apologies|apawlogies", 4))
	Hotstring("::you", Func("randomString").Bind("you|you|you|mew|", 4))
	Hotstring("::howdy", Func("randomString").Bind("howdy|howdy|howdy|meowdy|", 4))
	Hotstring("::y'all", Func("randomString").Bind("y'all|y'all|y'all|nyaa'll|", 4))
	;Hotstring("::you", Func("randomString").Bind("you|you|you|mew|", 4))
	;Hotstring("::you", Func("randomString").Bind("you|you|you|mew|", 4))
	;Hotstring("::you", Func("randomString").Bind("you|you|you|mew|", 4))
	;Hotstring("::a lot of", Func("randomString").Bind("hella|lotta|", 2))
	;Hotstring("::lot of", Func("randomString").Bind("hella|lotta|", 2))
	;Hotstring("::lots of", Func("randomString").Bind("hella|lotta|", 2))
	;Hotstring("::cool", Func("randomString").Bind("coool|kewl|", 2))
	;Hotstring("::coolest", Func("randomString").Bind("cooolest|kewlest|", 2))

	Hotstring("::hand", "paw")
	Hotstring("::hands", "paws")
	Hotstring("::foot", "paw")
	Hotstring("::feet", "paws")
	Hotstring("::hair", "fur")
	Hotstring("::nails", "claws")
	Hotstring("::toilet", "litterbox")
	;Hotstring("::gods", "gawd")
	;Hotstring("::wow", "oh gawd")
	;Hotstring("::hot", "hawt")
	;Hotstring("::probably", "totally")

	Hotstring("reset")
	}