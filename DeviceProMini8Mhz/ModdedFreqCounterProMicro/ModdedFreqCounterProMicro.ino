volatile int xMin = 0;
volatile int xMax = 0;

//float dutyCycle = 0;

void setup() 
{
  Serial.begin(9600);
  //Connections with other modules
  pinMode(10,INPUT); //Frequency read in from color sensor
  pinMode(11,OUTPUT); //PWM output to motor driver
  
  //These output pinModes are for LED status stuff
  pinMode(4,OUTPUT); // Power 100% Blue or orange
  pinMode(5,OUTPUT); // Power 80% Green or purple
  pinMode(6,OUTPUT); // Power 60% Green or blue
  pinMode(7,OUTPUT); // Power 40% Yellow or green
  pinMode(8,OUTPUT); // Power 20% Yellow or white
  pinMode(9,OUTPUT); // Power  0% Red or red

  //Indicator LEDs
  pinMode(12,OUTPUT); // Black calibration indicator (0% red of 300-400 hz)
  pinMode(13,OUTPUT); // Red calibration indicator (100% red or 600-800 hz)
  pinMode(14,OUTPUT); // Calibrated and working
  pinMode(15,OUTPUT); // anything?
  
  //TCCR2B = TCCR2B & B11111000 | B00000110; //122 hz PWM
  TCCR2B = TCCR2B & B11111000 | B00000111;  //30 hz pwm
  attachInterrupt(digitalPinToInterrupt(2),updateXMin,RISING);
  attachInterrupt(digitalPinToInterrupt(3),updateXMax,RISING);
  
}

void loop() 
{
//xMin and xMax are only set via button press interrupts
float frequency = 0;
float dutyCycle = 0;
float processedDutyCycle = 0;
while(1)
  {
  if (xMin && xMax)
    {
    digitalWrite(14,HIGH);
    while(1)
      {
      frequency = getFrequency();
      dutyCycle = freqToDutyCycle(frequency);
      
      processedDutyCycle = processDutyCycle(dutyCycle);
      updateStatusLEDs(processedDutyCycle);
      analogWrite(11,int(processedDutyCycle));
      
      Serial.println(frequency);
      Serial.println(processedDutyCycle);
      }
    }
  }
}
//need to get current freq when block is black
void updateXMin()
{
  xMin = getFrequency();
  digitalWrite(12,HIGH);
  
}
//need to get current freq when block is red
void updateXMax()
{
  xMax = getFrequency();
  digitalWrite(13,HIGH);
  
}

float freqToDutyCycle(float freq)
{
  float slope = (100)/float((xMax-xMin));
  return (freq - xMin)*slope;

}

float getFrequency()
{
  float frequency = 0.0f;
  unsigned long durationUs = 0;
  const int cycleCount = 100;
  
  for (int i = 0; i < cycleCount; i++)
  {
     durationUs = pulseIn(7, HIGH);
     frequency += (1000000/durationUs)/2;
  }
  frequency = frequency/cycleCount;
  return frequency;
}
//clamps and * by 2.55 for outputting
float processDutyCycle(float dutyCycle)
{
  if(dutyCycle > 100)
  {
    dutyCycle = 100;
  }
  if(dutyCycle < 5)
  {
    dutyCycle = 0;
  }
  
  return dutyCycle*2.55;

}
void updateStatusLEDs(float dutyCycle)
{
  digitalWrite(9,HIGH);
  
  if (dutyCycle > 20){
      digitalWrite(8,HIGH);
  }
  else
      digitalWrite(8,LOW);
      
  if (dutyCycle> 40){
      digitalWrite(7,HIGH);
  }
  else
      digitalWrite(7,LOW);
      
  if (dutyCycle > 60){
      digitalWrite(6,HIGH);
  }
  else
      digitalWrite(6, LOW);
      
  if (dutyCycle > 80){
      digitalWrite(5,HIGH);
  }
  else
      digitalWrite(5,LOW);
  
  if (dutyCycle > 100) {
      digitalWrite(4,HIGH);
  }
  else
      digitalWrite(4,LOW);
}
//
