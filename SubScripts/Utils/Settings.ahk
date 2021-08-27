;------------------------------------------------------------------------------
; Settings Handler
;------------------------------------------------------------------------------
; Assign setting values from the ini file to global variables

; 3rd Person Mode: Forces you to refer to yourself as whatever your Custom Pronoun is set to (ie. "I" => "Doll", "My" => "Toys's"...)
IniRead, 3rdMode_Setting, %A_ScriptDir%\settings.ini, SETTINGS, 3rdMode
global 3rdMode = %3rdMode_Setting%

; Formal contractions: aren't, could've, how're, etc...
IniRead, formalContractions_Setting, %A_ScriptDir%\settings.ini, SETTINGS, formalContractions
global formalContractions = %formalContractions_Setting%

; Informal contractions: aint, gonna, wanna, etc... (will override some formal contractions)
IniRead, informalContractions_Setting, %A_ScriptDir%\settings.ini, SETTINGS, informalContractions
global informalContractions = %informalContractions_Setting%

; Giggles: Replaces common laugh sounds (haha, lol, etc...) with *giggles*
IniRead, giggles_Setting, %A_ScriptDir%\settings.ini, SETTINGS, giggles
global giggles = %giggles_Setting%

; Word Replacer: Replaces common words with simpler or more bimbo-like versions. (ie. "best" => "bestest", "confused" => "ditzy"...)
IniRead, wordReplacer_Setting, %A_ScriptDir%\settings.ini, SETTINGS, wordReplacer
global wordReplacer = %wordReplacer_Setting%

; Words randomizers: Replace some words from a pool of more fitting synonyms. (like world replacer, but with several possible outcome)
IniRead, wordsRandomizer_Setting, %A_ScriptDir%\settings.ini, SETTINGS, wordsRandomizer
global wordsRandomizer = %wordsRandomizer_Setting%

; Phonetic: Replaces some common word sounds with phonetically similar ones (ie. "-ome" => "-um", "-ing" => "-in")
IniRead, phonetic_Setting, %A_ScriptDir%\settings.ini, SETTINGS, phonetic
global phonetic = %phonetic_Setting%

; Status Codes: Allows easy typing of HexCorp drone status codes by typing d### https://www.hexcorp.net/drone-status-codes-v2 (A few of the codes have been slightly modified to be more generic to make them appropiate for a wider variety of drones)
IniRead, statusCodes_Setting, %A_ScriptDir%\settings.ini, SETTINGS, statusCodes
global statusCodes = %statusCodes_Setting%

; Verbs synonyms: Replaces some specifics verbs with more fitting synonyms. ("Pet laughs" => Pet giggles")
IniRead, verbsSynonyms_Setting, %A_ScriptDir%\settings.ini, SETTINGS, verbsSynonyms
global verbsSynonyms = %verbsSynonyms_Setting%

; Punctuation: Randomly turns periods into questions, exclamations or tilde
IniRead, punctuation_Setting, %A_ScriptDir%\settings.ini, SETTINGS, punctuation
global punctuation = %punctuation_Setting%

; Hesitation Marks: Inserts some hesitation marks (ie. "ummm..." or "like...") from time to time
IniRead, hesitationMarks_Setting, %A_ScriptDir%\settings.ini, SETTINGS, hesitationMarks
global hesitationMarks = %hesitationMarks_Setting%

; Horny Thoughts: Inserts some horny thoughts (ie. "... *god deer is horny*...") from time to time (less common than hesitation marks)
IniRead, hornyThoughts_Setting, %A_ScriptDir%\settings.ini, SETTINGS, hornyThoughts
global hornyThoughts = %hornyThoughts_Setting%

; Big Word Remover: Replaces big words with confused noises
IniRead, bigWordLength_Setting, %A_ScriptDir%\settings.ini, SETTINGS, bigWordLength
global bigWordLength = bigWordLength_Setting

; Show Mistakes: Makes sure you show off all your silliness by not letting you undo things
IniRead, ShowMistakes_Setting, %A_ScriptDir%\settings.ini, SETTINGS, ShowMistakes
global ShowMistakes = %ShowMistakes_Setting%
;------------------------------------------------------------------------------
; DEBUG
;------------------------------------------------------------------------------

; Set which application will be handled by the script
IniRead, applicationHandled_Setting, %A_ScriptDir%\settings.ini, SETTINGS, applicationHandled
global applicationHandled = applicationHandled_Setting
if (applicationHandled == "ERROR") {
	applicationHandled =
}
if (applicationHandled == "ALL") {
	applicationHandled =
}


; Custom Pronouns: replaces I, etc, with user input name etc
IniRead, customPronoun_Setting, %A_ScriptDir%\settings.ini, SETTINGS, customPronoun
global customPronoun = customPronoun_Setting


; Display settings summary at startup
IniRead, settingSummary_Setting, %A_ScriptDir%\settings.ini, DEBUG, settingSummary
if (%settingSummary_Setting%) {
	MsgBox,
	(LTrim
		Version : %version%
		
		[SETTINGS]
		Application Handled = %applicationHandled_Setting%
		Third Person Mode = %3rdMode_Setting%
		Informal Contractions = %informalContractions_Setting%
		Formal Contractions = %formalContractions_Setting%
		Giggles = %giggles_Setting%
		Word Replacer = %wordReplacer_Setting%
		Words Randomizer = %wordsRandomizer_Setting%
		Verbs Synonyms = %verbsSynonyms_Setting%
		Punctuation = %punctuation_Setting%
		Hesitation Marks = %hesitationMarks_Setting%
		Horny Thoughts = %hornyThoughts_Setting%
		Custom Pronoun = %customPronoun_Setting%
		Phonetic Setting = %phonetic_Setting%
		Status Codes = %statusCodes_Setting%
		Big Word Remover = %bigWordLength_Setting%
		Show Mistakes = %ShowMistakes_Setting%
		
		(You can prevent this window to show up by setting the key "settingSummary" to false in the "setting.ini" file)
	)
}