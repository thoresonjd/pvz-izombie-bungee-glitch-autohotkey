<div width="fit-content" style="display: flex; justify-content: center" align="center">
    <img src="./assets/bungee-zombie.jpg" style="height: 10vw;" alt="Bungee Zombie"/>
    <img src="./assets/pvz.png" style="height: 10vw;" alt="Plants vs. Zombies"/>
    <img src="./assets/izombie-endless-icon.jpg" style="height: 10vw;" alt="I, Zombie Endless"/>
</div>
<div align="center">
    <img src="./assets/ahk.png" style="height: 5vw;" alt="AutoHotkey"/>
    <h1>Plants vs. Zombies I, Zombie Bungee Glitch AutoHotkey</h1>
</div>

AutoHotkey script exploiting the Bungee Zombie glitch in the I, Zombie puzzle game mode in Plants vs. Zombies: Game of the Year Edition on PC.

## The Glitch

In the I, Zombie game mode, Bungee Zombies, instead of eating plants, descend from above and remove the plants by pulling them upwards out of the ground. When removed, sunflowers will drop 200 sun points each. Unlike when being eaten, a sunflower drops all the sun at once when removed by a Bungee Zombie. The glitch allows for multiple Bungee Zombies to be simultaneously placed on a single sunflower. If timed correctly, the sunflower will be removed multiple times and will drop 200 sun for each Bungee Zombie that was placed on top of it, yielding a greater sun profit.

Here's how it works:
1. Click the Bungee Zombie's "seed" card to select it
2. Quickly pause the game
3. Move the mouse cursor to the desired sunflower
4. Unpause the game
5. Rapidly click on the sunflower to place the Bungee Zombie on top of it
6. Quickly pause the game once more
7. Move the mouse cursor back to the Bungee Zombie's "seed" card
8. Quickly unpause the game again
9. Repeat steps 1 through 8 as many times as possible

Each Bungee Zombie costs 125 sun points to use, and each sunflower will grant 200 sun points when removed. If *n* Bungee Zombies are placed, the total profit, when timed correctly, becomes: `200(n) - 125(n) = 75(n)`.

This glitch is often exploited in I, Zombie Endless to obtain the [Better Off Dead](https://plantsvszombies.fandom.com/wiki/Better_Off_Dead) achievement on Steam. The achievement requires the player to gain a win streak of ten in I, Zombie Endless.

<div align="center">
    <img src="./assets/better-off-dead.jpg" style="height: 10vw;" alt="AutoHotkey"/>
    <p>The Steam icon for the Better Off Dead achievement</p>
</div>

## Usage

This script was created specifically for Windows and conforms to AutoHotkey version 2.0.19 at the time of this writing. It is recommended to play the game in windowed mode when running this script.

The script requires the positions of the Bungee Zombie's "seed" card and the sunflower's tile. The screen coordinates for both can be retrieved from AutoHotkey Window Spy. Simply move the mouse cursor over the target and mark down the default client coordinates. The x-coordinate is on the left, and the y-coordinate is on the right.

<div align="center">
    <img src="./assets/ahk-window-spy.png" style="height: 10vw;" alt="Window Spy"/>
    <p>Mouse coordinates shown in AutoHotkey Window Spy</p>
</div>

Under the "Constants" section of the script, set the variables (each assigned to 0 by default as a placeholder) to the proper and desired values. The positions are expected to vary by game. The delays and number of zombies you can place may differ from system to system, as every machine is unique. Hence, it is up to you to fill in these values. 
```
...

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

...
```

The following values worked for me (at least at the time of writing this sentence), but again, it may be different for you. It may take some minimal trial and error to get these right.
```
...

; Delays
DelayBetweenSpaceDownUpMs          := 5  ; Milliseconds between space bar press and release
DelayBetweenPauseResumeMs          := 15 ; Milliseconds between game pause and resume
DelayBetweenZombiePlacementStepsMs := 15 ; Milliseconds between each step in placing a bungee zombie

; Counts
BungeeZombieCount := 8 ; Number of bungee zombies to place

...
```

The multiplication key (*) on the number pad is used to place the Bungee Zombies on the specified sunflower. The subtraction key (-) on the number pad is used to collect the sun dropped when the Bungee Zombies have picked up the sunflower. One press of the multiplication key will place multiple Bungee Zombies, whereas one press of the subtraction key will collect one instance of sun; therefore, it is recommended to hold down the subtraction key to collect all the sun quickly. Manually move the mouse as necessary to collect any sun that may be scattered too far out.

## References

- Video explanation of the glitch and how to exploit it, by NecroarcanistXIII: https://www.youtube.com/watch?v=uk5jtypY4Wk | Last accessed 2025-01-26
- Plants vs. Zombies Wiki: https://plantsvszombies.fandom.com/ | Last accessed 2025-01-26
