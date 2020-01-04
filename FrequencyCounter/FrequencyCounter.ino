int pin = 7;
unsigned long durationUs;
float frequency = 0.0f;
  
void setup() 
{
  Serial.begin(9600);
  pinMode(pin, INPUT);
}

void loop() {
  durationUs = pulseIn(pin, HIGH);
  frequency = 1000000/durationUs;
  Serial.println(frequency);
}
