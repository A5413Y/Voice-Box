/*
 * * * Compile_AHK SETTINGS BEGIN * * *

[AHK2EXE]
Exe_File=%In_Dir%\Voice Box.exe
Compression=0
Created_Date=1
[VERSION]
Set_Version_Info=1.02
Company_Name=Triskelia, Cinder, A541
File_Description=Script A large number of configurable automatic typing changes to help you sound dumber, or otherwise more conditioned
File_Version=1.0.1.2
Inc_File_Version=0
Internal_Name=Voice Box
Legal_Copyright= Free Use (Hehe)
Original_Filename=Voice Box.ahk
Product_Name=Voice Box
[ICONS]
Icon_1=%In_Dir%\Resources\img\Dumbtalk-Script-Icon-Running.ico
Icon_2=%In_Dir%\Resources\img\Dumbtalk-Script-Icon-Running.ico
Icon_3=%In_Dir%\Resources\img\Dumbtalk-Script-Icon-Paused.ico
Icon_4=%In_Dir%\Resources\img\Dumbtalk-Script-Icon-Running.ico
Icon_5=%In_Dir%\Resources\img\Dumbtalk-Script-Icon-Paused.ico

* * * Compile_AHK SETTINGS END * * *
*/

/*
Native Compile SETTINGS BEGIN
; @Ahk2Exe-SetMainIcon %A_ScriptDir%\Resources\img\Dumbtalk-Script-Icon-Running.ico
; @Ahk2Exe-ExeName %A_ScriptDir%\Voice Box.ahk
Native Compile SETTINGS END
*/

;------------------------------------------------------------------------------
; Voice Box
;------------------------------------------------------------------------------
; a fun script made by Trisky and modified by others for everyone with this same specific fetish <3

version = 1.0.1
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


