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

version = 2.0.0
#Include %A_ScriptDir%\SubScripts\Utils\Settings.ahk

SetTitleMatchMode, 2
GroupAdd, handledApps, %applicationHandled%
#IfWinActive ahk_group handledApps

#InstallKeybdHook
#NoEnv
#SingleInstance force
SetWorkingDir %A_ScriptDir%
;------------------------------------------------------------------------------
; SubScripts Imports
;------------------------------------------------------------------------------
; Order matters: Hotstrings in Includes at the bottom have a higher priority

; Utils
#Include %A_ScriptDir%\SubScripts\Utils\Initializer.ahk
#Include %A_ScriptDir%\SubScripts\Utils\Functions.ahk

; Speech Modules
#Include %A_ScriptDir%\SubScripts\SpeechModules\ContractionsFormal.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\ContractionsInformal.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\ThirdPerson\3rdPronouns.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\Giggles.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\WordsReplacer.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\ThirdPerson\3rdPersonVerbs.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\WordsRandomizer.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\Phonetic.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\StatusCodes.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\VerbsSynonyms.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\Punctuation.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\SentencesInsertions.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\BigWordRemover.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\ShowMistakes.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\NoSwears.ahk
;#Include %A_ScriptDir%\SubScripts\SpeechModules\ModuleOne.ahk



