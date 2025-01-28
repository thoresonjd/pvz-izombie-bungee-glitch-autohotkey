; File: pvz-izombie-bungee-glitch.ahk
; Author: Justin Thoreson
; Last modified: 2025-01-27
; Description: Exploits the Bungee Zombie glitch in the I, Zombie puzzle game mode in Plants vs. Zombies: Game of the Year Edition.


; ============================
; Constants
; ============================

; Positions
BungeeZombieX := 0  ; Bungee zombie card x-coordinate
BungeeZombieY := 0  ; Bungee zombie card y-coordinate
SunflowerX    := 0  ; Sunflower tile x-coordinate
SunflowerY    := 0  ; Sunflower tile y-coordinate

; Delays
DelayBetweenSpaceDownUpMs          := 0 ; Milliseconds between space bar press and release
DelayBetweenPauseResumeMs          := 0 ; Milliseconds between game pause and resume
DelayBetweenZombiePlacementStepsMs := 0 ; Milliseconds between each step in placing a bungee zombie

; Counts
BungeeZombieCount := 0 ; Number of bungee zombies to place


; ============================
; Functions
; ============================
ToggleGamePause() {
    Send "{Space down}"
    Sleep DelayBetweenSpaceDownUpMs
    Send "{Space up}"
}

FlashPauseWindow() {
    ToggleGamePause()
    Sleep DelayBetweenPauseResumeMs
    ToggleGamePause()
}

PlaceBungeeZombie() {
    Click BungeeZombieX, BungeeZombieY
    Sleep DelayBetweenZombiePlacementStepsMs
    FlashPauseWindow()
    Sleep DelayBetweenZombiePlacementStepsMs
    Click SunflowerX, SunflowerY
    Sleep DelayBetweenZombiePlacementStepsMs
    FlashPauseWindow()
    Sleep DelayBetweenZombiePlacementStepsMs
}

PlaceBungeeZombies() {
    Loop BungeeZombieCount
	    PlaceBungeeZombie()
}

GatherSun() {
    Click SunflowerX, SunflowerY
}


; ============================
; Key bindings
; ============================
NumpadMult::PlaceBungeeZombies()
NumpadSub::GatherSun()
r::Reload
Esc::ExitApp


/*
                                                                    !KZMGw:     
                               _)cjPMdZMMZdMKzl*'                 "8w^;;;*I8-   
                           )KOKYr!!::!!:!:!!:!~)c3Oh!            mI:!<;<({(xB!  
                        (EH\::::::::::::::::::::::!~}ZZ^      !5B!":~;^d#@#K\#, 
                      kEv     '::!!::::::::::::!::::v35MZZ3HdmL, ":~;<H@@@@#Pe# 
        ,=^^~,      vQ]        :::::::::::::!:!!!:!!:c##Y!:::::  :!;;i#@@@@@B?B-
    xM6GhkyVed$QH- MZ=-       "!:::::!::::!*IdQRl!!=5B##M:::::' ::=;;5@@@@@@#VMz
  G3ulccccj3OE9OH$@P!!,    ',:::::::::!:::~z  h##O!!^kRdr:!:::  ::~;;$@@@@@@#3k8
 8)i}}uccccccyKO8#D!!::::::!::::::::::!:::~$dZ####!:!!!!::::::  ::;;<8@@@@@@#PVB
ZclKGPXcucccccck&@x!!::::::!:::::!!:::::::!v8####K!:::::::::::-':!;;;0@@@@@@#eXD
8$Q8Q!"u6Zmkyy3&$@~~!!::!:!:::::::!::::!::!!~xVcr!!!:::::::::::.:^r;;3@@@@@@BlOl
!#GB'     .~**-  @**<~=!!::::::::::::::!:::::::::::::::!!::!!!~~:;x;;v#@@@@#Qv# 
  c8             QV*r*^~=!!!:!!:::::::!::::::::::::::::!!!!=~^*vX:L^;<k@@@@ByZ8 
                 .#rv?)**^;~=!!!!!::::::::::::::::::!!!=~~^**)?vmZr{^;<IB#Qu{#  
                  xB)]]v\)r**^<~~==!!!!!!!!!!!!!!==~~;^**r)\LX5ddB#juv^;;<^3B   
                   ,B]v{Lixv\()r***^^^<<;;;;<<^^^***r)(\vxm8e:    ~ZBdXlu3QY    
                     ER{Y}}{LL]xvvv?())))rr))))(?\vvx]LLeQy          :vYv-      
                       d$Il}}{}}{{YLLLiii]]iiiLLLY{{{uMQy                       
                         v9$GV}}{{{{{{{{{{{{{{{}}}kM8d!                         
                            _cMgEMKkVu}}}}uVjKZD$5x-                            
                                 QQQBBBBBBBB#L                                  
                                  _E000&g8QX                                    
                                    z3OEE6Q                                     
                                     IVeKZB                                     
                                     :VkedB                                     
                                      uLIMQ'       '___-                        
                          ^vyPG5MMMI^  jyH0{  =cZMP3P3H08QH                     
                        6gO3L333333MGM6gLXdQlEmPPP333PgKHZ3hzkkjePMy*           
                        H$:zYj33333PHGM5HlPRRGPP3P3P6OPj3KhjkkkkkkkkkMy         
                          _OelyKPP33P3KMDHkGDZGHPPZEMPKKzwkkkkkkkkkkkkVZ        
                          -dXjjjmK3PGMZM3RZXMEgH3d$GXykkkkkkkkkkkkkkkklVd       
                      =uhVl}}}}}}}llllukGMg&hHE9OQhykkkkkkkkkkVuuullulllM       
                    ccLLiiiiiiiii{lcVyywwkkIKPZDQIkkkkkkkkkkkcll}YLLLY}}m_      
                   cdYvvvvvvvvviYl}l}l}}}}}l}lykZ3wyyVVVVccul}Lyy~' -uL{5       
                   xLvvvvvvvvL}l}}}}}}}}}}}}}}lkzdc}}}}}}}l}]kl       xuM       
                  rLvvvvvvvvill}}}}}}}}}}}}}}}lkX$u}}ll}lY]im         xk        
                  }vvvvvvx]x{l}}}}}}}}}}}}}}}lVk6*hulk}xx{j;       .-=,         
                  :cvvc}:    _^yhcl}}}}}}}}lKKmM   ,cMgy^                       
                   ;uyu           !xzG3IzkkMly.                                 
                     )lv=
*/
