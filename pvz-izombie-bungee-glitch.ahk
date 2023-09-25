/*
 * pvz-izombie-bungee-glitch.ahk
 * 25 September 2023
 * Exploits the Bungee Zombie glitch in the "I, Zombie" puzzle game mode in Plants vs. Zombies: Game of the Year Edition
 */

; Positions
; ---------------------------- 
BungeeZombieX := 0  ; REPLACE
BungeeZombieY := 0  ; REPLACE
SunflowerX := 0     ; REPLACE
SunflowerY := 0     ; REPLACE

; Functions
; ----------------------------
ToggleGamePause(delay := 5) {
    Send "{Space down}"
    Sleep delay
    Send "{Space up}"
}

FlashPauseWindow(delay := 20) {
    ToggleGamePause()
    Sleep delay
    ToggleGamePause()
}

PlaceBungeeZombie(delay := 20) {
    Click BungeeZombieX, BungeeZombieY
    Sleep delay
    FlashPauseWindow()
    Sleep delay
    Click SunflowerX, SunflowerY
    Sleep delay
    FlashPauseWindow()
    Sleep delay
}

PlaceBungeeZombies(count) {
    Loop count
	    PlaceBungeeZombie()
}

GatherSun() {
    Click SunflowerX, SunflowerY
}

; Key bindings
; ----------------------------
NumpadMult::PlaceBungeeZombies(8)
NumpadSub::GatherSun()
r::Reload
Esc::ExitApp