
/******** page 60 ********/
https://wokwi.com/projects/371584656970629121
//-------------------------------------------------------//




/******** page 62 ********/
void setup() {
 Serial.begin(115200);
}

void loop{
 Serial.println("Hello TINY32");
 delay(1000); 
}
//-------------------------------------------------------//




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
//-------------------------------------------------------//




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
//-------------------------------------------------------//





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
//-------------------------------------------------------//




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
//-------------------------------------------------------//





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
//-------------------------------------------------------//




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
//-------------------------------------------------------//




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
//-------------------------------------------------------//





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
//-------------------------------------------------------//





/******** page 86 ********/
https://www.arduino.cc
//-------------------------------------------------------//




/******** page 102 ********/
void setup() {
 Serial.begin(115200);
 Serial.println("*** Start Program ***");
}

void loop{
 Serial.println("Hello TINY32");
 delay(1000); 
}
//-------------------------------------------------------//




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
//-------------------------------------------------------//




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
//-------------------------------------------------------//



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
//-------------------------------------------------------//




/******** page 111 ********/
https://github.com/tenergyinnovation/tiny32_v3
//-------------------------------------------------------//




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
//-------------------------------------------------------//




/******** page 138 ********/
https://github.com/johnrickman/LiquidCrystal_I2C


/******** page 142 ********/
#include <tiny32_v3.h>
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27,20,4);
tiny32_v3 mcu;

int cursor_line = 0;
void setup()
{
    Serial.begin(115200);  
    lcd.init();
    Serial.println("*** Start program ***");
    lcd.clear();
    lcd.setCursor(0,0);
    lcd.backlight();
    lcd.print("**  Hello Tenergy **");
    mcu.buzzer_beep(2);
    delay(1000);
    lcd.noBacklight();
}
void loop()
{
    if(mcu.Sw1()) //check sw1
    {
        mcu.buzzer_beep(1);
        while(mcu.Sw1()); //check release switch
        switch (cursor_line){
            case 1:
                lcd.backlight();
                lcd.clear();
                lcd.setCursor(0,0);
                lcd.printf("LCD LINE : %d",cursor_line);
                break;
            case 2:
                lcd.clear();
                lcd.setCursor(3,1);
                lcd.printf("LCD LINE : %d",cursor_line);
                break;
            case 3:
                lcd.clear();
                lcd.setCursor(5,2);
                lcd.printf("LCD LINE : %d",cursor_line);
                break;
            case 4:
                lcd.clear();
                lcd.setCursor(8,3);
                lcd.printf("LCD LINE : %d",cursor_line);
                break;
            default:
                cursor_line = 0;
                lcd.clear();
                lcd.noBacklight();
                break;
        }
        cursor_line++;
    }

}
//-------------------------------------------------------//




/******** page 154 ********/
https://github.com/tenergyinnovation/tiny32_SDM120CT_PowerMeter

//-------------------------------------------------------//




/******** page 174 ********/
https://github.com/blynkkk/blynk-library

//-------------------------------------------------------//



/******** page 188 ********/

/*************************************************************
  Blynk is a platform with iOS and Android apps to control
  ESP32, Arduino, Raspberry Pi and the likes over the Internet.
  You can easily build mobile and web interfaces for any
  projects by simply dragging and dropping widgets.

    Downloads, docs, tutorials: https://www.blynk.io
    Sketch generator:           https://examples.blynk.cc
    Blynk community:            https://community.blynk.cc
    Follow us:                  https://www.fb.com/blynkapp
                                https://twitter.com/blynk_app

  Blynk library is licensed under MIT license
 *************************************************************
  Blynk.Edgent implements:
  - Blynk.Inject - Dynamic WiFi credentials provisioning
  - Blynk.Air    - Over The Air firmware updates
  - Device state indication using a physical LED
  - Credentials reset using a physical Button
 *************************************************************/

/* Fill in information from your Blynk Template here */
/* Read more: https://bit.ly/BlynkInject */
#define BLYNK_TEMPLATE_ID           "TMPL4J7EZiAD"
#define BLYNK_TEMPLATE_NAME         "TINY32"

#define BLYNK_FIRMWARE_VERSION        "0.1.0"

#define BLYNK_PRINT Serial
//#define BLYNK_DEBUG

#define APP_DEBUG

// Uncomment your board, or configure a custom board in Settings.h
//#define USE_ESP32_DEV_MODULE
//#define USE_ESP32C3_DEV_MODULE
//#define USE_ESP32S2_DEV_KIT
//#define USE_WROVER_BOARD
//#define USE_TTGO_T7
//#define USE_TTGO_T_OI
#include <tiny32_v3.h>
#include "BlynkEdgent.h"
tiny32_v3 mcu;

BLYNK_WRITE(V0)
{
  int _Relay = param.asInt();
  Serial.printf("Info: Blynk param => %d\r\n",_Relay);
  mcu.Relay(_Relay);
}

void setup()
{
  Serial.begin(115200);
  delay(100);

  BlynkEdgent.begin();
  Serial.println("*** Start program ***");
  mcu.buzzer_beep(2);
}

void loop() {
  BlynkEdgent.run();
}


//-------------------------------------------------------//



/******** page 198 ********/



/*************************************************************
  Blynk is a platform with iOS and Android apps to control
  ESP32, Arduino, Raspberry Pi and the likes over the Internet.
  You can easily build mobile and web interfaces for any
  projects by simply dragging and dropping widgets.

    Downloads, docs, tutorials: https://www.blynk.io
    Sketch generator:           https://examples.blynk.cc
    Blynk community:            https://community.blynk.cc
    Follow us:                  https://www.fb.com/blynkapp
                                https://twitter.com/blynk_app

  Blynk library is licensed under MIT license
 *************************************************************
  Blynk.Edgent implements:
  - Blynk.Inject - Dynamic WiFi credentials provisioning
  - Blynk.Air    - Over The Air firmware updates
  - Device state indication using a physical LED
  - Credentials reset using a physical Button
 *************************************************************/

/* Fill in information from your Blynk Template here */
/* Read more: https://bit.ly/BlynkInject */
#define BLYNK_TEMPLATE_ID           "TMPL4J7EZiAD"
#define BLYNK_TEMPLATE_NAME         "TINY32"

#define BLYNK_FIRMWARE_VERSION        "0.1.0"

#define BLYNK_PRINT Serial
//#define BLYNK_DEBUG

#define APP_DEBUG

// Uncomment your board, or configure a custom board in Settings.h
//#define USE_ESP32_DEV_MODULE
//#define USE_ESP32C3_DEV_MODULE
//#define USE_ESP32S2_DEV_KIT
//#define USE_WROVER_BOARD
//#define USE_TTGO_T7
//#define USE_TTGO_T_OI
#include <tiny32_v3.h>
#include "BlynkEdgent.h"
#include <Wire.h>
#include "Adafruit_SHT31.h"

tiny32_v3 mcu;
Adafruit_SHT31 sht31 = Adafruit_SHT31();

BLYNK_WRITE(V0)
{
  int _Relay = param.asInt();
  Serial.printf("Info: Blynk param => %d\r\n",_Relay);
  mcu.Relay(_Relay);
}

void setup()
{
  Serial.begin(115200);
  delay(100);

  if (! sht31.begin(0x45)) {   // Set to 0x45 for alternate i2c addr
    Serial.println("Couldn't find SHT31");
    while (1) delay(1);
  }

  BlynkEdgent.begin();
  Serial.println("*** Start program ***");
  mcu.buzzer_beep(2);
}

void loop() {
  float t = sht31.readTemperature();
  float h = sht31.readHumidity();

    if (! isnan(t)) {  // check if 'is not a number'
    Serial.print("Temp *C = "); Serial.print(t); Serial.print("\t\t");
    Blynk.virtualWrite(V1,t);
  } else { 
    Serial.println("Failed to read temperature");
  }
  
  if (! isnan(h)) {  // check if 'is not a number'
    Serial.print("Hum. % = "); Serial.println(h);
    Blynk.virtualWrite(V2,h);
  } else { 
    Serial.println("Failed to read humidity");
  }
  delay(5000);

  BlynkEdgent.run();
}



