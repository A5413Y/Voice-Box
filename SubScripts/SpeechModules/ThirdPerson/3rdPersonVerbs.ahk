;------------------------------------------------------------------------------
; 3rd Person Verbs
;------------------------------------------------------------------------------
; Changes verbs to the 3rd person when refering to yourself (Non exhaustive list)

#Hotstring B Z ; Conjugates verbs to third person

:: bend:: bends
:: bounce:: bounces
:: feel:: feels
:: fuck:: fucks
:: kneel:: kneels
:: like:: likes
:: love:: loves
:: obey:: obeys
:: please:: pleases
:: suck:: sucks
:: want:: wants ; should be replaced insted
:: wish:: wishes
:: melt:: melts
:: drop:: drops
:: sink:: sinks
:: masturbate:: masturbates
:: jerk:: jerks

; Common action verbs
:: act:: acts
:: agree:: agrees
:: arrive:: arrives
:: ask:: asks
:: brings:: brings
:: build:: builds
:: buy:: buys
:: call:: calls
:: climb:: climbs
:: close:: closes
:: come:: comes
:: cry:: cries
:: dance:: dances
:: dream:: dreams
:: drink:: drinks
:: eat:: eats
:: enter:: enters
:: exit:: exits
:: fall:: falls
:: fix:: fixes
:: guess:: guesses
:: give:: gives
:: go:: goes
:: grab:: grabs
:: help:: helps
:: hit:: hits
:: hop:: hops
:: joke:: jokes
:: jump:: jumps
:: kick:: kicks
:: know:: knows
:: leave:: leaves
:: lift:: lifts
:: listen:: listens
:: make:: makes
:: march:: marches
:: mean:: means
:: move:: moves
:: need:: needs
:: nod:: nods
:: open:: opens
:: play:: plays
:: push:: pushes
:: read:: reads
:: ride:: rides
:: run:: runs
:: scream:: screams
:: send:: sends
:: shout:: shouts
:: sing:: sings
:: sit:: sits
:: smile:: smiles
:: spend:: spends
:: stand:: stands
:: talk:: talks
:: throw:: throws
:: touch:: touches
:: turn:: turns
:: visit:: visits
:: vote:: votes
:: wait:: waits
:: walk:: walks
:: write:: writes
:: yell:: yells

; Other verbs
:: accept:: accepts
:: ache:: aches
:: achieve:: achieves
:: acquire:: acquires
:: add:: adds
:: adjust:: adjusts
:: admire:: admires
:: advise:: advises
:: allow:: allows
:: announce:: announces
:: answer:: answers
:: apologize:: apologizes
:: applaud:: applauds
:: approache:: approaches
:: approve:: approves
:: argue:: argues
:: arise:: arises
:: arrange:: arranges
:: attract:: attracts
:: avoid:: avoids
:: awake:: awakes
:: banishe:: banishes
:: beg:: begs
:: begin:: begins
:: behave:: behaves
:: believe:: believes
:: belong:: belongs
:: bet:: bets
:: bite:: bites
:: blow:: blows
:: blushe:: blushes
:: break:: breaks
:: breathe:: breathes
:: breed:: breeds
:: caresse:: caresses
:: carry:: carries
;more to add: https://www.worldclasslearning.com/english/five-verb-forms.html
:: hope:: hopes
:: see:: sees
:: meet:: meets
:: thank:: thanks
:: type:: types
:: use:: uses
return


load3rdPersonVerbs(state) {
	if (state == true) {
		Hotstring("B Z")
		; removes "'" just for this hotstring + reset automatic replacement (to avoid stuff like "toy would likes")
		; Hotstring("EndChars", "-()[]{}:;""/\,.?!`n `t")
		Hotstring(":: am", customPronoun . " is")
		Hotstring("::i'm", customPronoun . " is")
		Hotstring("::im", customPronoun . " is")
		Hotstring(":: have", " has")
		Hotstring("::i've", customPronoun . " has")
		Hotstring("::ive", customPronoun . " has")
		Hotstring("::i'll", customPronoun . " will")
		Hotstring("::i'd", customPronoun . " would")
		Hotstring("reset")
	}
}