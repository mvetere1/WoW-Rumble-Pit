
unsigned long durationUs = 0;
float frequency = 0.0f;
float dutyCycle = 0;
const int cycleCount = 100;
const int xMin = 675;
const int xMax = 1250;
const float slope = (100)/float((xMax-xMin));

void setup() 
{
  Serial.begin(9600);
  pinMode(7, INPUT);
  pinMode(11,OUTPUT);
  //TCCR2B = TCCR2B & B11111000 | B00000110; //122 hz PWM
  TCCR2B = TCCR2B & B11111000 | B00000111;  //30 hz pwm
}

void loop() {
  for (int i = 0; i < cycleCount; i++)
  {
     durationUs = pulseIn(7, HIGH);
     frequency += (1000000/durationUs)/2;
  }
  frequency = frequency/cycleCount;
  dutyCycle = (frequency - xMin)*slope;

  if(dutyCycle > 100)
  {
    dutyCycle = 100;
  }
  if(dutyCycle < 5)
  {
    dutyCycle = 0;
  }
  analogWrite(11,int(dutyCycle*2.55));
  
  Serial.println(frequency);
  Serial.println(dutyCycle);
}
//
