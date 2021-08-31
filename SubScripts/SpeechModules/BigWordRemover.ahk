;------------------------------------------------------------------------------
; Big Word Remover
;------------------------------------------------------------------------------
; Removes any word over the chosen character limit and replaces it with a confused noise

; NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

 ;regex hotstring library https://github.com/menixator/hotstring
#Include %A_ScriptDir%\SubScripts\Libraries\hotstring-master\Hotstring.ahk

loadBigWordRemover() {
	;Hotstring("B Z0")
	Hotstring2("\w{" . bigWordLength . ",}\s", generateConfusedWord() . " ", 3)
	;Hotstring("reset")
}

;due to how Hotstring works, this is only evaluated once. It is changed on separate runs of the program.
generateConfusedWord() { 
	confusedWords := ["uhh...", "um?", "buh."]
	chosenIndex = 1
	Random, chosenIndex, 1, confusedWords.MaxIndex()
	word = % confusedWords[chosenIndex]
	return %word%
}