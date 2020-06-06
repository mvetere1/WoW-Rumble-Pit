## Rumble Pit WoW Addon and hardware
### Objective: Make a device that can read data out of the world of warcraft game and adjust a motorized rumble pack based on damage done to give player live feedback 

#### Limitations
The game does not allow data to be streamed out while combat is happening.  Only after combat can logs etc be read to figure out damage done by the group.  Alledgely this is to deter botters from extracting too much data out of game live.  Addons are able to efficiently proceess data in-game to give good stats for group damage.

### 1. Initial Thoughts and Development
#### Motor Control
The motorized rumble pack control is pretty straightforward and not likely to change. A DC motor controller lets you control the speed of a motor by powering a high amperage motor with a low amperage signal from a micontroller.  The 293D is a really popular bidirectional motor control chip for <600ma at 4.5v-36v.   Using pulse-width modulation, you basically power the motor in short bursts.  The slower you want the motor, the longer the power is off.  If you want the max speed, the motor is powered 100% of the time.  So to control the motor speed, you just need a signal that you can vary the on/off state fairly quickly.  Sources for images can be found in Usefulinks.txt.

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
#### Optical LED transitor circuit
The first method I tried was the first listed optical choice.  I wanted to see if a simple light detector circuit would be sensitive enough to detect a white box vs a black box on a computer screen.  Since I had the parts, I went with the following:
![amplifier schematic](/Images/PhotoDiodeSchematic.PNG)
Transitor used was a common NPN 2N222.  The most sensitive combination of parts I found was an orange LED and a 470k resistor.  The higher the R, the more gain.  When light of the same color hits the led, a small current is generated, so with the transistor applying a large gain, the voltage at the collector can vary up to Vp to respond to changes in light.  When the LED in this circuit has another LED of the same type blasting full strength right next to it, the voltage drops to 0v.  When in just ambient light, voltage is 5v.  So if the white box on the screen put out enough light, to drop voltage to 0, this the timing of the light pulses could be used to PWM the motor to the correct speed.

The issue is that the LCD monitor does not put out enough light at the right frequency to have any voltage response that could be used for PWM of the motor.  Potentially a light detector circuit that is more appropriate just an led and transistor would work better but that is unavailable right now.

#### Optical Color light to frequency converter
I tried a module based on the TSC3200 chip that is used as a color sensor.    

![Color Sensor](/Images/ColortoFreqDiagram.PNG)

Based on the selection for pin S2 and S3, you can detect how much of that color is present where the sensor/chip is pointing. If I have it set to red, a full red color will produce 370hz while black would produce 250hz.  A decent oscilloscope will show you apprximate frequency of the output.  So if you have 10 divisions, each divisions would have a range of ~12hz.  You would probably need to sample for 100ms+ to get a good average of frequency but the 10 levels could probably be done.  

There's also the option of switching the full scale output frequency at 2%, 20% or 100%.  The faster the frequency, the quicker  you can get an average of 100 cycles for example but the sampling device would need to be able to keep up.  I chose 2% because that is still 250hz+ so 100 cycles could be sampled in 400ms, defintely fast enough for this application.  Updating the motor speed 2 times a second would be pretty smooth.

![Color Settings](/Images/SettingForColorDetection.PNG)

This method seems to be the most viable to far but it would probably need a type of calibration because once you change position of the sensor pointed on the screen, the min/max frequency changes.  Tt probably has to do with the positioning and reflection off the screen.  After installing on the screen with ambient lighting running, you would get the max and min frequency switching from red to black.  You would then need to program this back into the microcontroller thats calculating frequency so you can properly map max frequency to 100% duty cycle for max motor speed.  The min frequency would be 0% duty cycle, no motor speed.

I decided to go with the red color selection at 2% full scale frequency, and am planning for black to be ~250hz and red to be ~370hz.  Going with 10 divisions (10%, 20%, 30%.. etc motor strength) means each power level will have a 12hz bucket.  I am interpolating the data here but in reality it might not be so linear.  The equation is: % Duty cycle = (output frequenxy[hz] - 250[hz])(0.8[%]/[hz]).  This equation would change depending on the specific frequencies that red and black produce on that particular setup.


![Frequency Response](/Images/FrequencyConversion.png)

#### Microntroller Frequency Counting

The output of the sensor needs to be plugged into something that can convert the frequency into a PWN signal.  Based on the one off nature of this project, I'm going with an arduino uno.  
update 05Jun20
