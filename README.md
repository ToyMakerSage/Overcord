# Overcord
AHK Script to give transparrency, clickthrough and always on top properties to an existing instance of discord.

### This is still heavily under development and is currently a mix of prototype and frankencode, but is functional. Use provides no risk to user but codebase is likely to change significantly between builds.

## Features
As of 8th of April 2018, Overcord currently provides the following key features:
* Ability to set a discord window to be Always on Top
* Ability to set a discord window to be Clickthrough and Transparrent (Toggleable)
* Ability to hide a discord window entirely while preserving it's appearance settings (Toggleable)
* Two toggleable levels of transparency 

## Requirements
Overcord requires the following:
* Autohotkey v1.X (It may work with 2.x as well but I have not tested this)
* Discord (You can change the defined process to target for it to work with other programs, but this is targeting discord in development)

While not required, I STRONGLY advise also using the following with Overcord:
* BetterDiscord
* BetterDiscord Transparency Fix Plugin
* BetterDiscord Channel and Server hiding plugin (This one is REALLY helpful)

## Hotkeys
**Ctrl + Alt + S** - *Target Discord Process*  
**Ctrl + Alt + X** - *Toggle Clickthrough + Transparency* **_(Not useable when Hidden)_**  
**Ctrl + Alt + Z** - *Toggle Transparency Level* **_(Not useable when Hidden AND Must be Transparrent/Clickthrough)_**  
**Ctrl + Alt + CAPSLOCK** - *Hide/Show Discord Window*
