/*
 * pvz-izombie-bungee-glitch.ahk
 * 25 September 2023
 * Exploits the Bungee Zombie glitch in the I, Zombie puzzle game mode in Plants vs. Zombies: Game of the Year Edition
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