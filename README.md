## Rumble Pit WoW Addon and hardware
### Objective: Make a device that can read data out of the world of warcraft game and adjust a motorized rumble pack based on damage done to give player live feedback 

#### Limitations
The game does not allow data to be streamed out while combat is happening.  Only after combat can logs etc be read to figure out damage done by the group.  Alledgely this is to deter botters from extracting too much data out of game live.  Addons are able to efficiently proceess data in-game to give good stats for group damage.

### On-going development
##### Motor Control
The motorized rumble pack control is pretty straightforward and not likely to change. A DC motor controller lets you control the speed of a motor by powering a high amperage motor with a low amperage signal from a micontroller.  The 293D is a really popular bidirectional motor control chip for <600ma at 4.5v-36v.   Using pulse-width modulation, you basically power the motor in short bursts.  The slower you want the motor, the longer the power is off.  If you want the max speed, the motor is powered 100% of the time.  So to control the motor speed, you just need a signal that you can vary the on/off state fairly quickly.   

##### Potential Audio Output
Because you are limited to extracting data from the software in a non-live way, a method using hardware could be used instead.
* Data might be able to get exported from the game in the form of live running mp3.  A series of mp3 files could be made that encodes the desired level of vibration (based on damage) that is read by a microntroller directly controller the rumble pack.  I figure the mp3 file could be direct recordings of a UART sending out 0->10 in binary.
  * Benefits: Should be a pretty reliable form of communication, it's easy to play mp3 files in-game through a certain audio port
  * Drawback: Mp3s would need to get pre-recorded, one for each power level so it could add up to a lot of mp3
##### Potential Optical Output
* Data could be exported from the game optically. The game could print a box on the screen and flash the box black/white in a way that is encoding power level for the rumble pack motor.  The most efficient way would do this is without a microntroller, it could flash pulses of white/black with varying duty-cycles to control the motor at different speeds.  
  * Benefits - No microcontroller needed,
A type of light sensor would act as the optical-> voltage transducer.  Alternatively, the flashing could try to emulate the entirety of UART and the bits could be read from a microcontroller with the UART peripheral.  A third way would be the have the box adjust the shade of black or white and have a color sensor correlate   


* bullet
  * another bullet*
1. sdf
1. sdf
1. sdf
  1. sdf
  1. sdf
  
![amplifier schematic](/Images/PhotoDiodeSchematic.PNG)
