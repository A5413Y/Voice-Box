# Dumtalk AHK
![Dumbtalk Script Icon - Running_128](https://user-images.githubusercontent.com/5974879/118271520-af706a80-b4c1-11eb-8d0a-18f69c791f4c.png)

This script replaces what you type with more dumb stuff.

## Features

- Most features can be configured through the settings.ini file
- In addition to the existing ones:
- New custom pronouns
- Long word go poof

## Installation instructions

- Download
- Extract the archive
- Edit the file "settings.ini" (changes to that file are only taken into account when the script starts)
- Double-click on the exe file to launch the script. It should now work on the Discord desktop app

> Keep the two files in the same folder. The .exe needs the settings.ini file in order to work

## Usage

- You can pause the script by right-clicking on its tray icon (on the lower right of your screen) then click on "Suspend Hotkeys". You just need to click on it again to unpause it.
- Keep in mind that, by default, the script is only active on the desktop Discord app. if you want to change that, you need to edit the setting.ini file accordingly


## Configuration

You can edit some script settings. In order to do that, edit the "settings.ini" file with a text editor.
To disable a feature, simply replace its value by "false" and save
You will need to exit and restart the script in order for the new settings to be taken into account (Clicking on the .exe again will restart the script)

## Known bugs from original

- Some verbs will sometimes automatically be conjugated to third person when they shouldn't, seems to be a limitation with Autohotkey
- On rare occasions, " have" will be replaced by " has" in deer mode. I've tried to fix it, but it seems to be the only way to have the "I have" replaced by "deer has" working, which is more important. And since "has" instead of "have" often sounds cute, I guess we can live with that.

## Known bugs I made

- a bunch of deers (anything but the deerifier basically) arent replaced by custom pronouns 
