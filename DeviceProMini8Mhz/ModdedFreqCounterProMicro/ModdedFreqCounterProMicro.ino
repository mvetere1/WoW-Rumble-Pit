volatile int xMin = 0;
volatile int xMax = 0;
float dutyCycle = 0;

void setup() 
{
  Serial.begin(9600);
  pinMode(7, INPUT);
  pinMode(11,OUTPUT);
  //TCCR2B = TCCR2B & B11111000 | B00000110; //122 hz PWM
  TCCR2B = TCCR2B & B11111000 | B00000111;  //30 hz pwm
  attachInterrupt(digitalPinToInterrupt(2),updateXMin,RISING);
  attachInterrupt(digitalPinToInterrupt(3),updateXMax,RISING);
  
}

void loop() {
  if (xMin && xMax){
      float frequency = getFrequency();
      dutyCycle = freqToDutyCycle(frequency);
      dutyCycle = processDutyCycle(dutyCycle);
    
      analogWrite(11,int(dutyCycle));
      
      Serial.println(frequency);
      Serial.println(dutyCycle);
  }
}
void updateXMin()
{
  xMin = getFrequency();
  //need to get current freq when block is black
}

void updateXMax()
{
  xMax = getFrequency();
  //need to get current freq when block is red
}

float freqToDutyCycle(float freq)
{
  float slope = (100)/float((xMax-xMin));
  dutyCycle = (freq - xMin)*slope;

  return dutyCycle;
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
//
