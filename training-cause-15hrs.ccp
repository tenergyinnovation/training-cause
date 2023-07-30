
/******** page 60 ********/
https://wokwi.com/projects/371584656970629121

/******** page 62 ********/
void setup() {
 Serial.begin(115200);
}

void loop{
 Serial.println("Hello TINY32");
 delay(1000); 
}


/******** page 65 ********/
void setup() {
Serial.begin(115200);
pinMode(4, OUTPUT); //RED LED
}
void loop() {
int x = 121;

if(x>120)
{
	digitalWrite(4, HIGH);
}
}


/******** page 67 ********/
void setup() {
Serial.begin(115200);
pinMode(4, OUTPUT); //Red LED
pinMode(12,OUTPUT); //Blue LED
}
void loop() {
	int x = 119;
	if(x>120)
	{	
		digitalWrite(4, HIGH);
	}
	else
	{
		digitalWrite(12,HIGH);
	}
}

/******** page 69 ********/
void setup() {
Serial.begin(115200);
pinMode(4, OUTPUT); //Red LED
pinMode(12,OUTPUT); //Blue LED
}
void loop() {
	int x = 119;
	if(x==120)
	{	
		digitalWrite(4, HIGH);
	}
	else if (x==125)

	{
		digitalWrite(12,HIGH);
	}
	else
	{
		digitalWrite(4, HIGH);
		digitalWrite(12,HIGH);
	}
}

/******** page 71 ********/
void setup() {
	Serial.begin(115200);
}
void loop() {
Serial.println(1);
Serial.println(2);
Serial.println(3);
Serial.println(4);
Serial.println(5);
Serial.println(6);
Serial.println(7);
Serial.println(8);
Serial.println(9);
Serial.println(10);

while(true); //ให้โปรแกรมหยุดตรงนี้
}


/******** page 72 ********/
void setup() {
	Serial.begin(115200);
}
void loop() {
	int x;
for(x=1; x<11; x++)
{
	Serial.println(x);
}
while(true); //ให้โปรแกรมหยุดตรงนี้
}


/******** page 74 ********/
int x = 0;
void setup() {
	Serial.begin(115200);
}
void loop() {
	while(x<10)
	{
		Serial.print("x =");
		Serial.println(x);
		x = x+1;
	}
}


/******** page 76 ********/
int x = 0;
void setup() {
	Serial.begin(115200);
}
void loop() {
	do{
		Serial.print("x =");
		Serial.println(x);
		x = x+1;
	} while(x<10);
}


/******** page 78 ********/
void setup() {
	Serial.begin(115200);
}
void loop() {
	int var=1;
	switch(x)
{
case 1:
Serial.println("var is 1");
break;
case 2:
Serial.println("var is 2");
break;
default:
Serial.println("Not match any case!");
break;
}
	while(true); //ให้โปรแกรมหยุดตรงนี้
}

/******** page 80 ********/
void setup() {
	Serial.begin(115200);
}
void loop() {
	int var=1;
	switch(x)
{
case 1:
Serial.println("var is 1");
break;
case 2:
Serial.println("var is 2");
break;
default:
Serial.println("Not match any case!");
break;
}
	while(true); //ให้โปรแกรมหยุดตรงนี้
}

/******** page 86 ********/
https://www.arduino.cc


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

