﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

loadNoSwears(state) {
	if (state == true) {
		Hotstring("B Z")
		Hotstring("::piece of shit", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::cumstain", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::cumrag", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::shitter", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::asswipe", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::dumbfuck", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::whore", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::slut", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::bitch", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::bastard", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::dickface", Func("randomString").Bind("muffin head|meanie|goober|silly face|poopy head|smelly|", 6))
		Hotstring("::stupid","stoopid")
		Hotstring("::Motherfucker","stoopid head")
		Hotstring("::crap","heck")
		Hotstring("::hell","heck")
		Hotstring("::fuck","fooey")
		Hotstring("::bastard","bully")
		Hotstring("::cunt","meanie")
		Hotstring("::bitch","goober")
		Hotstring("::damn","darn")
		Hotstring("::shit","jeez")
		Hotstring("reset")
	}
}