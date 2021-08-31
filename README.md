# Voice Box
![Dumbtalk Script Icon - Running_128](https://user-images.githubusercontent.com/5974879/118271520-af706a80-b4c1-11eb-8d0a-18f69c791f4c.png)

This script replaces what you type with more dumb stuff.

## CW and Background
The original project this is forked from was about a rather nortorious strain of Bimbo Hypno, hence forth being referred to as Disney Deer. This README and the downloaded project should be relatively free from references, but if you'd like to look around the project or contribute, it's something you should be aware of.


## Features

- Most features can be configured through the settings.ini file
- 3rd Person Mode: Forces you to refer to yourself as whatever your Custom Pronoun is set to (ie. "I" => "Doll", "My" => "Toys's"...)
- Compelled contractions (formal): aren't, could've, how're, etc...
- Compelled contractions (Informal): aint, gonna, wanna, etc... (will override some formal contractions)
- Giggles: Replaces common laugh sounds (haha, lol, etc...) with *giggles*
- Word Replacer: Replaces common words with simpler or more bimbo-like versions. (ie. "best" => "bestest", "confused" => "ditzy"...)
- Words randomizers: Replace some words from a pool of more fitting synonyms. (like world replacer, but with several possible outcome)
- Phonetic: Replaces some common word sounds with phonetically similar ones (ie. "-ome" => "-um", "-ing" => "-in")
- Status Codes: Allows easy typing of HexCorp drone status codes by typing d### https://www.hexcorp.net/drone-status-codes-v2 (A few of the codes have been slightly modified to be more generic to make them appropiate for a wider variety of drones)
- Verbs synonyms: Replaces some specifics verbs with more fitting synonyms. ("Pet laughs" => Pet giggles")
- Punctuation: Randomly turns periods into questions, exclamations or tilde
- Hesitation Marks: Inserts some hesitation marks (ie. "ummm..." or "like...") from time to time
- No Big Words: Replaces words of the specified length or over with confused noises. 
- Show Mistakes: Will disable the backspace key and chide you whenever you attempt to use it
- App specific: Can set the script to only function for specific apps i.e Discord

## Installation instructions

- Download
- Extract the archive
- Edit the file "settings.ini" (changes to that file are only taken into account when the script starts)
- Double-click on the exe file to launch the script. It should now work on the Discord desktop app

> Keep the two files in the same folder. The .exe needs the settings.ini file in order to work

## Usage

- You can pause the script by right-clicking on its tray icon (on the lower right of your screen) then click on "Suspend Hotkeys". You just need to click on it again to unpause it.


## Configuration

You can edit some script settings. In order to do that, edit the "settings.ini" file with a text editor.
To disable a feature, simply replace its value by "false" and save
You will need to exit and restart the script in order for the new settings to be taken into account (Clicking on the .exe again will restart the script)

## Known bugs I made

- Not all deers may be gone
- Big Word Replacer and Show Mistakes settings are currently mutually exclusive, if you would like to be chided for using the backspace key, Big Word Replacer will need to be disabled (Set to 0)
- Big Word Replacer can also cause some weirdness if it is set lower then the size of a word the script inserts, this is mostly harmless but can sometimes make HexCodes look funny (Cute tho, silly lil bimbo drones) 
- Some verbs will sometimes automatically be conjugated to third person when they shouldn't, seems to be a limitation with Autohotkey
- On rare occasions, " have" will be replaced by " has" in deer mode. I've tried to fix it, but it seems to be the only way to have the "I have" replaced by "deer has" working, which is more important. And since "has" instead of "have" often sounds cute, I guess we can live with that.
- Horny Thoughts is currently entirely non functional (Sorry for breaking the build)

## Features to come
- Clown Mode *honk*
- No swearing
- Disable the icon to make script harder to turn off
- Default HexCorp codes for the actual HexDrones out there

