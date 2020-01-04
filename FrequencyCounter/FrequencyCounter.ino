int pin = 7;
unsigned long durationUs = 0;
float frequency = 0.0f;
float dutyCycle = 0;
const int cycleCount = 250;
const int xMin = 241;
const int xMax = 348;
const float slope = (100)/(348-244);

void setup() 
{
  Serial.begin(9600);
  pinMode(pin, INPUT);
}

void loop() {
  for (int i = 0; i < cycleCount; i++)
  {
     durationUs = pulseIn(pin, HIGH);
     frequency += (1000000/durationUs)/2;
  }
  frequency = frequency/cycleCount;
  dutyCycle = (frequency - xMin)*.96;
  Serial.println(frequency);
  Serial.println(dutyCycle);
}
