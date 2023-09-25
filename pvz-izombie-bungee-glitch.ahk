/*
 * pvz-izombie-bungee-glitch.ahk
 * 24 September 2023
 * Exploits the Bungee Zombie glitch in the "I, Zombie" game mode in Plants vs. Zombies
 */

; Zombie/Plant Positions
; ---------------------------- 
BungeeZombieX := 320
BungeeZombieY := 40
SunflowerX := 80
SunflowerY := 220

; Functions
; ----------------------------
ToggleGamePause(delay := 5) {
    Send "{Space down}"
    Sleep delay
    Send "{Space up}"
}

PlaceBungeeZombie(delay := 20) {
    Click BungeeZombieX, BungeeZombieY
    Sleep delay
    ToggleGamePause()
    Sleep delay
    ToggleGamePause()
    Sleep delay
    Click SunflowerX, SunflowerY
    Sleep delay
    ToggleGamePause()
    Sleep delay
    ToggleGamePause()
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
Esc::ExitApp