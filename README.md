## Rumble Pit WoW Addon and hardware
### Objective: Make a device that can read data out of the world of warcraft game and adjust a motorized rumble pack based on damage done to give player live feedback 

#### Limitations
The game does not allow data to be streamed out while combat is happening.  Only after combat can logs etc be read to figure out damage done by the group.  Alledgely this is to deter botters from extracting too much data out of game live.  Addons are able to efficiently proceess data in-game to give good stats for group damage.

### 1. Initial Thoughts and Development
#### Motor Control
The motorized rumble pack control is pretty straightforward and not likely to change. A DC motor controller lets you control the speed of a motor by powering a high amperage motor with a low amperage signal from a micontroller.  The 293D is a really popular bidirectional motor control chip for <600ma at 4.5v-36v.   Using pulse-width modulation, you basically power the motor in short bursts.  The slower you want the motor, the longer the power is off.  If you want the max speed, the motor is powered 100% of the time.  So to control the motor speed, you just need a signal that you can vary the on/off state fairly quickly.   

![293D Pinout](/Images/293DPinout.PNG)

####  Potential Audio Output
Because you are limited to extracting data from the software in a non-live way, a method using hardware could be used instead.
* Data might be able to get exported from the game in the form of live running mp3.  A series of mp3 files could be made that encodes the desired level of vibration (based on damage) that is read by a microntroller directly controller the rumble pack.  I figure the mp3 file could be direct recordings of a UART sending out 0->10 in binary.
  * Pros: Should be a pretty reliable form of communication, it's easy to play mp3 files in-game through a certain audio port
  * Cons: Mp3s would need to get pre-recorded, one for each power level so it could add up to a lot of mp3
#### Potential Optical Output
* Data could be exported from the game optically. The game could print a box on the screen and flash the box black/white in a way that is encoding power level for the rumble pack motor.  The most efficient way would do this is without a microntroller, it could flash pulses of white/black with varying duty-cycles to control the motor at different speeds.  A type of light sensor would act as the optical-> voltage transducer and could be mounted to the monitor.  
  * Pros - No microcontroller needed, less steps for processing
  * Cons - Light sensor needs to be sensitive/tunable enough to detect on-screen changes.  Timing with LUA would need to be consistent
  
Alternatively, the flashing could try to emulate the entirety of UART and the bits could be read from a microcontroller with the UART peripheral.  
  * Pros - Sending 8 bit packets would open huge doors for sending arbitrary data out of the game, UART supported by 99% of micros
  * Cons - Light sensor needs to be sensitive/tunable for on-screen changes, timing would be critical to control.
  
A third way would be the have the box adjust the shade of black or white.  That shade of color would correlate to a rumble power level.  A color sensor could be mounted to the screen and send the data to a micro.
  * Pros - Should be able to get decent resolution with color shading.  Wouldn't require precise timing within LUA scripts
  * Cons - Color sensing might need a lite-calibration.  Output data format for color is probably more complicated than voltage.
  
### 2.Options tried

The first method I tried was the first listed optical choice.  I wanted to see if a simple light detector circuit would be sensitive enough to detect a white box vs a black box on a computer screen.  Since I had the parts, I went with the following:
![amplifier schematic](/Images/PhotoDiodeSchematic.PNG)
Transitor used was a common 2N222.  The most sensitive combination of parts I found was an orange LED and a 470k resistor.  The higher the R, the more gain.  Basically, the LED is abl
