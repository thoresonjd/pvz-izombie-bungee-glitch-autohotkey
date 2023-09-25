<div width="fit-content" style="display: flex; justify-content: center" align="center">
  <img src="./assets/bungee-zombie.jpg" style="height: 10vw;" alt="Bungee Zombie"/>
  <img src="./assets/pvz.png" style="height: 10vw;" alt="Plants vs. Zombies"/>
  <img src="./assets/izombie-endless-icon.jpg" style="height: 10vw;" alt="I, Zombie Endless"/>
  <br />
</div>
<div align="center">
    <img src="./assets/ahk.png" style="height: 5vw;" alt="AutoHotkey"/>
    <h1>Plants vs. Zombies I, Zombie Bungee Glitch AutoHotkey</h1>
</div>

AutoHotkey script exploiting the Bungee Zombie glitch in the "I, Zombie" puzzle game mode in Plants vs. Zombies: Game of the Year Edition.

## Usage

The script requires a the positions of the Bungie Zombie's "seed" card and the sunflower's tile. These locations can be retrieved from AutoHotkey Window Spy.

Under the "Positions" section, replace the default coordinates with the proper x and y values on your system.
```
...

; Positions
; ---------------------------- 
BungeeZombieX := 0  ; REPLACE
BungeeZombieY := 0  ; REPLACE
SunflowerX := 0     ; REPLACE
SunflowerY := 0     ; REPLACE

...
```

The multiplication key (*) on the number pad is used to place the Bungee Zombies on the specified sunflower. The subtraction key (-) on the number pad is used to collect the sun dropped when the Bungee Zombies have picked up the sunflower. One press of the multiplication key will place multiple Bungee Zombies, whereas one press of the subtraction key will collect one instance of sun; therefore, it is recommended to hold down the subtraction key to collect all the sun quickly.

The default values determining the number of Bungee Zombies to spawn, as well as the values determining the delay between clicks and key presses, can be modified to best meet your preferences.

## Sources

- Video explanation of the glitch and how to exploit it, by NecroarcanistXIII: https://www.youtube.com/watch?v=uk5jtypY4Wk
- Plants vs. Zombies Wiki: https://plantsvszombies.fandom.com/