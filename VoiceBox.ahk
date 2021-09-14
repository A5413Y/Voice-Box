/*
 * * * Compile_AHK SETTINGS BEGIN * * *

[AHK2EXE]
Exe_File=%In_Dir%\VoiceBox.exe
Compression=0
Created_Date=1
[VERSION]
Set_Version_Info=2
Company_Name=VoiceBox
File_Description=A large number of configurable automatic typing changes to help you sound dumber, or otherwise more conditioned
File_Version=2
Inc_File_Version=1
Internal_Name=VoiceBox.ahk
Legal_Copyright= Free Use (Hehe)
Original_Filename=VoiceBox.ahk
Product_Name=VoiceBox
[ICONS]
Icon_1=%In_Dir%\Resources\img\voice_box.ico
Icon_2=%In_Dir%\Resources\img\voice_box.ico
Icon_3=%In_Dir%\Resources\img\voice_box_paused.ico
Icon_4=%In_Dir%\Resources\img\voice_box.ico
Icon_5=%In_Dir%\Resources\img\voicebox_paused.ico

* * * Compile_AHK SETTINGS END * * *
*/

/*
Native Compile SETTINGS BEGIN
; @Ahk2Exe-SetMainIcon %A_ScriptDir%\Resources\img\Dumbtalk-Script-Icon-Running.ico
; @Ahk2Exe-ExeName %A_ScriptDir%\VoiceBox.ahk
Native Compile SETTINGS END
*/

;------------------------------------------------------------------------------
; VoiceBox
;------------------------------------------------------------------------------

version = 3.0.0

SetTitleMatchMode, 2

#InstallKeybdHook
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
SetWorkingDir %A_ScriptDir%

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#Hotstring EndChars -()[]{}:;"/\,.?!`n `t
;------------------------------------------------------------------------------
; SubScripts Imports
;------------------------------------------------------------------------------
; Order matters: Hotstrings in Includes at the bottom have a higher priority


; Utils
;A5 you giant dingus, try having it gui submit after each click, and then run all the ifs on submit
Gui, Add, GroupBox, x22 y9 w150 h510 , Basics
Gui, Add, GroupBox, x202 y9 w150 h510 , Bimbo
Gui, Add, GroupBox, x382 y9 w150 h510 , Drone
Gui, Add, GroupBox, x562 y9 w150 h510 , Pet
Gui, Add, GroupBox, x742 y9 w150 h510 , Clown
Gui, Add, GroupBox, x922 y9 w150 h510 , Other Catagory
Gui, Add, Progress, x832 y409 w-790 h-300 , 25
Gui, Add, Picture, x72 y479 w50 h40 , J:\Voice-Box\Resources\img\voice_box.ico
Gui, Add, Edit, x32 y49 w120 h20 gClick vPronoun, Edit
Gui, Add, Text, x32 y29 w120 h20 , Third Person Pronoun
Gui, Add, CheckBox, x212 y29 w120 h30 vgiggles, Giggles
Gui, Add, CheckBox, x212 y109 w120 h30 gClick vwordsRandomizer, Word Randomizer
Gui, Add, CheckBox, x212 y149 w120 h30 gClick vverbsSynonyms, Verb Synonyms
Gui, Add, CheckBox, x212 y189 w120 h30 gClick vpunctuation, Punctuation
Gui, Add, CheckBox, x212 y229 w120 h30 gClick vhesitationMarks, Hesitation
Gui, Add, CheckBox, x212 y269 w120 h30 gClick vhornyThoughts, Horny Thoughts
;Gui, Add, CheckBox, x212 y309 w120 h30 gClick vshowMistakes, Show Mistakes
Gui, Add, Text, x212 y349 w120 h20 , Big Word Remover
Gui, Add, DropDownList, x212 y369 w120 h10 AltSubmit gClick vbigWordLength , Off|2|3|4|5|6|7|8|9|10|11|12
Gui, Add, CheckBox, x32 y69 w120 h30 gClick v3rdPronouns, Third Person Mode
Gui, Add, CheckBox, x212 y69 w120 h30 gClick vwordReplacer, Word Replacer
Gui, Add, CheckBox, x32 y109 w120 h30 gClick vcontractionsInformal, Informal Contractions
Gui, Add, CheckBox, x32 y149 w120 h30 gClick vcontractionsFormal, Formal Contractions
Gui, Add, CheckBox, x32 y189 w120 h30 gClick vphonetic, Phonetics
;Gui, Add, CheckBox, x32 y229 w120 h30 , Option 6
;Gui, Add, CheckBox, x32 y269 w120 h30 , Option 7
;Gui, Add, CheckBox, x32 y309 w120 h30 , Option 8
Gui, Add, CheckBox, x752 y29 w120 h30 gClick vNoSwears, No Swearing
Gui, Add, CheckBox, x392 y29 w120 h30 gClick vstatusCodes, Status Codes
;Gui, Add, CheckBox, x32 y349 w120 h30 , Basic Option 9
;Gui, Add, CheckBox, x32 y389 w120 h30 , Basic Option 10
;Gui, Add, CheckBox, x32 y429 w120 h30 , Basic Option 11
;Gui, Add, CheckBox, x392 y69 w120 h30 , Drone Option 2
;Gui, Add, CheckBox, x392 y109 w120 h30 , Drone Option 3
;Gui, Add, CheckBox, x392 y149 w120 h30 , Drone Option 4
;Gui, Add, CheckBox, x392 y189 w120 h30 , Drone Option 5
;Gui, Add, CheckBox, x392 y229 w120 h30 , Drone Option 6
;Gui, Add, CheckBox, x392 y269 w120 h30 , Drone Option 7
;Gui, Add, CheckBox, x392 y309 w120 h30 , Drone Option 8
;Gui, Add, CheckBox, x392 y349 w120 h30 , Drone Option 9
;Gui, Add, CheckBox, x392 y389 w120 h30 , Drone Option 10
;Gui, Add, CheckBox, x392 y429 w120 h30 , Drone Option 11
;Gui, Add, CheckBox, x572 y29 w120 h30 , Pet Option 1
;Gui, Add, CheckBox, x572 y69 w120 h30 , Pet Option 2
;Gui, Add, CheckBox, x572 y109 w120 h30 , Pet Option 3
;Gui, Add, CheckBox, x572 y149 w120 h30 , Pet Option 4
;Gui, Add, CheckBox, x572 y189 w120 h30 , Pet Option 5
;Gui, Add, CheckBox, x572 y229 w120 h30 , Pet Option 6
;Gui, Add, CheckBox, x572 y269 w120 h30 , Pet Option 7
;Gui, Add, CheckBox, x572 y309 w120 h30 , Pet Option 8
;Gui, Add, CheckBox, x572 y349 w120 h30 , Pet Option 9
;Gui, Add, CheckBox, x572 y389 w120 h30 , Pet Option 10
;Gui, Add, CheckBox, x572 y429 w120 h30 , Pet Option 11
;Gui, Add, CheckBox, x752 y69 w120 h30 , Clown Option 2
;Gui, Add, CheckBox, x752 y109 w120 h30 , Clown Option 3
;Gui, Add, CheckBox, x752 y149 w120 h30 , Clown Option 4
;Gui, Add, CheckBox, x752 y189 w120 h30 , Clown Option 5
;Gui, Add, CheckBox, x752 y229 w120 h30 , Clown Option 6
;Gui, Add, CheckBox, x752 y269 w120 h30 , Clown Option 7
;Gui, Add, CheckBox, x752 y309 w120 h30 , Clown Option 8
;Gui, Add, CheckBox, x752 y349 w120 h30 , Clown Option 9
;Gui, Add, CheckBox, x752 y389 w120 h30 , Clown Option 10
;Gui, Add, CheckBox, x752 y429 w120 h30 , Clown Option 11
;Gui, Add, CheckBox, x932 y29 w120 h30 , Other Option 1
;Gui, Add, CheckBox, x932 y69 w120 h30 , Other Option 2
;Gui, Add, CheckBox, x932 y109 w120 h30 , Other Option 3
;Gui, Add, CheckBox, x932 y149 w120 h30 , Other Option 4
;Gui, Add, CheckBox, x932 y189 w120 h30 , Other Option 5
;Gui, Add, CheckBox, x932 y229 w120 h30 , Other Option 6
;Gui, Add, CheckBox, x932 y269 w120 h30 , Other Option 7
;Gui, Add, CheckBox, x932 y309 w120 h30 , Other Option 8
;Gui, Add, CheckBox, x932 y349 w120 h30 , Other Option 9
;Gui, Add, CheckBox, x932 y389 w120 h30 , Other Option 10
;Gui, Add, CheckBox, x932 y429 w120 h30 , Other Option 11
Gui, Add, Button, x392 y539 w100 h30 , Exit
Gui, Add, Button, x582 y539 w100 h30 gButtonRun, Run
; Generated using SmartGUI Creator 4.0
Gui, Show, x127 y87 h587 w1170, New GUI Window
#Include %A_ScriptDir%\SubScripts\Utils\Functions.ahk
return

Click:
Gui, Submit, NoHide
return
; Currently scripts will randomly stop or start working depending on what other scripts are or aren't commented out, can't find any pattern.
; Not all scripts have been updated with the new settings check code, anything that does simple substitution should be however.
ButtonRun:
Gui,Submit, Hide
#Include %A_ScriptDir%\SubScripts\SpeechModules\ThirdPerson\3rdPronouns.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\WordsRandomizer.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\ContractionsFormal.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\ContractionsInformal.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\Giggles.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\WordsReplacer.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\Phonetic.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\StatusCodes.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\VerbsSynonyms.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\Punctuation.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\SentencesInsertions.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\BigWordRemover.ahk
;#Include %A_ScriptDir%\SubScripts\SpeechModules\ShowMistakes.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\NoSwears.ahk
;#Include %A_ScriptDir%\SubScripts\SpeechModules\ModuleOne.ahk
return

;Had to put label here to stop it auto executing
Show_Mistake:
MsgBox, Good dummies show off how dumb they are
return



