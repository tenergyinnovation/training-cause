/******** page 102 ********/
void setup() {
 Serial.begin(115200);
 Serial.println("*** Start Program ***");
}

void loop{
 Serial.println("Hello TINY32");
 delay(1000); 
}




/******** page 105 ********/
void setup() {
    Serial.begin(115200);
    pinMode(4,OUTPUT); //pin4 RED LED
    pinMode(12, OUTPUT); //pin12 BLUE LED
    Serial.println("*** Start Program ***");
}
void loop() {
    digitalWrite(4, HIGH);
    digitalWrite(12,LOW);
    delay(1000);
    digitalWrite(4, LOW);
    digitalWrite(12,HIGH);
    delay(1000);
}


/******** page 106 ********/
#define RED_LED   4
#define BLUE_LED  12
void setup() {
    Serial.begin(115200);
    pinMode(RED_LED,OUTPUT); //pin4 RED LED
    pinMode(BLUE_LED, OUTPUT); //pin12 BLUE LED
    Serial.println("*** Start Program ***");
}

void loop() {
    digitalWrite(RED_LED, HIGH);
    digitalWrite(BLUE_LED,LOW);
    delay(1000);
    digitalWrite(RED_LED, LOW);
    digitalWrite(BLUE_LED,HIGH);
    delay(1000);
}


/******** page 110 ********/
#define SW1   34
#define SW2   35
void setup() {
    Serial.begin(115200);
    pinMode(SW1,INPUT); 
    pinMode(SW2, INPUT); 
    Serial.println("*** Start Program ***");
}
void loop() {
    if(!digitalRead(SW1)){
      Serial.println("SW1 is pressing");
      delay(500);
    }
    if(!digitalRead(SW2)){
      Serial.println("SW2 is pressing");
      delay(500);
    }
    delay(300);
}

/******** page 111 ********/
https://github.com/tenergyinnovation/tiny32_v3


/******** page 122 ********/
#include <tiny32_v3.h>
tiny32_v3 mcu; //define object
void setup() {
  Serial.begin(115200);
  Serial.println("*** Start program ***");
  mcu.buzzer_beep(2);
}
void loop() {
  if(mcu.Sw1())
  {
    mcu.buzzer_beep(1);
    while(mcu.Sw1());
    mcu.Relay(1); //NO disconnect COM  
    Serial.printf("Ramp => ON\r\n");
  }
  if(mcu.Sw2())
  {
    mcu.buzzer_beep(1);
    while(mcu.Sw2());
    mcu.Relay(0);
    Serial.printf("Ramp => OFF\r\n");
  }
}

