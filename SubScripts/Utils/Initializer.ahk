;------------------------------------------------------------------------------
; Initializer
;------------------------------------------------------------------------------
; Initialize some parts of the scripts based on the settings

Hotstring("EndChars", "-()[]{}:;""/\,.?!`n `t")

loadContractionsFormal(formalContractions)
loadContractionsInformal(informalContractions)
load3rdPronouns(3rdMode)
loadGiggles(giggles)
loadWordReplacer(wordReplacer)
load3rdPersonVerbs(3rdMode)
loadWordsRandomizer(wordsRandomizer)
loadPhonetic(phonetic)
loadStatusCodes(statusCodes)
loadVerbsSynonyms(verbsSynonyms)
loadPunctuation(punctuation)
LoadShowMistakes(ShowMistakes)
;LoadModuleOne(ModuleOne)
if (bigWordLength > 0) {
	loadBigWordRemover()
}
if (hesitationMarks or hornyThoughts) {
	loadHesitationsAndHornyThoughts(true)
}
; thoughtsBetweenWords(true) ; Doesn't work
