long motor_direction = 1500;

void setup()
{
 pinMode(10,OUTPUT);
 pinMode(11,OUTPUT);
 
 pinMode(3,INPUT); 
}

void loop()
{
  motor_direction = pulseIn(3,HIGH);
  
  if (motor_direction < 1700)
  {
   if (motor_direction > 1200)
   {
    digitalWrite(10,LOW);
    digitalWrite(11,LOW);
   } 
  }
  
  if (motor_direction > 1700)
  {
   digitalWrite(10,HIGH);
   digitalWrite(11,LOW); 
  }
  
  if (motor_direction < 1200)
  {
   digitalWrite(10,LOW);
   digitalWrite(11,HIGH);
  }
}
