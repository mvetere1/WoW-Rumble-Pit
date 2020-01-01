## Rumble Pit WoW Addon and hardware
### Objective: Make a device that can read data out of the world of warcraft game and adjust a motorized rumble pack based on damage done to give player live feedback 

#### Limitations
The game does not allow data to be streamed out while combat is happening.  Only after combat can logs etc be read to figure out damage done by the group.  Alledgely this is to deter botters from extracting too much data out of game live.  Addons are able to efficiently proceess data in-game to give good stats for group damage.

#### On-going development
Because you are limited to extracting data from the software in a non-live way, a method using hardware could be used instead.
* Data might be able to get exported from the game in the form of live running mp3.  A series of mp3 files could be made that encodes the desired level of vibration (based on damage) that is read by a microntroller directly controller the rumble pack.  I figure the mp3 file could be direct recordings of a UART sending out 0->10 in binary.
  * Benefits: Should be a pretty reliable form of communication, it's easy to play mp3 files in-game through a certain audio port
  * Drawback: Mp3s would need to get pre-recorded, one for each power level so it could add up to a lot of mp3

* Data could be exported from the game optically. The game could print a color box on the screen and flash the box black/white in a way that is encoding power level.  The most efficient way would do this without a microntroller, it could flash pulses of white/black with varying duty-cycles to control the motor at different speeds.


* bullet
  * another bullet*
1. sdf
1. sdf
1. sdf
  1. sdf
  1. sdf
  
![amplifier schematic](/Images/PhotoDiodeSchematic.PNG)
