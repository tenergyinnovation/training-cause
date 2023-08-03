
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


//-------------------------------------------------------//



/******** page 205 ********/

var timeZone = "GMT+7"; //get yours at https://www.timeanddate.com/time/zones/
var dateTimeFormat = "dd/MM/yyyy HH:mm:ss";

var enableSendingEmails = true;
var emailAddress = ""; // comma separate for several emails
// 'bob@example.com';
// 'bob@example.com,admin@example.com';



function doGet(e) {
      var result = 'Ok'; // default result
    if (e.parameter == 'undefined') {
        result = 'No Parameters';
    } else {
      
        var alarm= e.parameter.alarm;
        if (typeof alarm != 'undefined') {

            sendEmail("alarm text:" + stripQuotes(alarm));
            return ContentService.createTextOutput(result);
        }

        var sheet = getSpreadSheet();
        var lastRow = sheet.getLastRow();
        var newRow = 1;
        if (lastRow > 0) {
            var lastVal = sheet.getRange(lastRow, 1).getValue();
          //if there was no info for (sentEmailIfUnitIsOutForMinutes) checkIfDead() function will append row with 'dead' text
          // so checking do we need to override it
            if (lastVal == 'dead')
                newRow = lastRow; //to overwrite "dead" value
            else
                newRow = lastRow + 1;

        }

        var rowData = [];
        var namesOfParams=[];
        for (var param in parseQuery(e.queryString))
          namesOfParams.push(param);
//      namesOfParams=namesOfParams.reverse();
      
      //creatating headers if first row
        if (newRow == 1) {
            rowData[0] = "Date";
            var i = 1;
            for (var i=0; i<namesOfParams.length;i++  ) {
                rowData[i+1] = namesOfParams[i];

            }
            var newRange = sheet.getRange(newRow, 1, 1, rowData.length);
            newRange.setValues([rowData]);
            rowData = [];
            newRow++;
        }

        rowData[0] = Utilities.formatDate(new Date(), timeZone, dateTimeFormat);
    
        for (var i=0; i<namesOfParams.length;i++  ) {

            var value = stripQuotes(e.parameter[namesOfParams[i]]);

            rowData[i+1] = value;

        }
        var newRange = sheet.getRange(newRow, 1, 1, rowData.length);
        newRange.setValues([rowData]);
    }
    // Return result of operation
    return ContentService.createTextOutput(result);
}


/**
 * Remove leading and trailing single or double quotes
 */
function stripQuotes(value) {
    return value.replace(/^["']|['"]$/g, "");
}

function parseQuery(queryString) {
    var query = {};
    var pairs = (queryString[0] === '?' ? queryString.substr(1) : queryString).split('&');
    for (var i = 0; i < pairs.length; i++) {
        var pair = pairs[i].split('=');
        query[decodeURIComponent(pair[0])] = decodeURIComponent(pair[1] || '');
    }
    return query;
}

function sendEmail(message) {

   if (!enableSendingEmails)
        return;
    var subject = 'Something wrong with your esp';
   MailApp.sendEmail(emailAddress, subject, message);

}


function getSpreadSheet() {
    return SpreadsheetApp.getActiveSheet();

}



//-------------------------------------------------------//


/******** page 212 ********/


/***********************************************************************
 * Project      :     googlesheet_record
 * Description  :     โปรแกรมตัวอย่างการบันทึกค่าไว้ที่ Google Spread Sheet
 * Hardware     :     tiny32         
 * Author       :     Tenergy Innovation Co., Ltd.
 * Date         :     12/05/2022
 * Revision     :     1.0
 * Rev1.0       :     Initial
 * website      :     http://www.tenergyinnovation.co.th
 * Email        :     admin@innovation.co.th
 * TEL          :     +66 82-380-3299
 ***********************************************************************/
#include <Arduino.h>
#include <WiFi.h>
#include <HTTPClient.h>
#include <tiny32.h>

//Change SSID and password of WiFi router here
const char * ssid = "TENERGYINNOVATION";
const char * password = "L0vemel0vemydog";

String GOOGLE_SCRIPT_ID = "AKfycbxzYMyws5BvjL7Kr7qN6WQgqYpnlF17FmHCMXAPD9PwBz6cSz1rf3SuFhxMETGPiewq";  //Change Deployment ID here

const char * root_ca=\
"-----BEGIN CERTIFICATE-----\n" \
"MIIDujCCAqKgAwIBAgILBAAAAAABD4Ym5g0wDQYJKoZIhvcNAQEFBQAwTDEgMB4G\n" \
"A1UECxMXR2xvYmFsU2lnbiBSb290IENBIC0gUjIxEzARBgNVBAoTCkdsb2JhbFNp\n" \
"Z24xEzARBgNVBAMTCkdsb2JhbFNpZ24wHhcNMDYxMjE1MDgwMDAwWhcNMjExMjE1\n" \
"MDgwMDAwWjBMMSAwHgYDVQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMjETMBEG\n" \
"A1UEChMKR2xvYmFsU2lnbjETMBEGA1UEAxMKR2xvYmFsU2lnbjCCASIwDQYJKoZI\n" \
"hvcNAQEBBQADggEPADCCAQoCggEBAKbPJA6+Lm8omUVCxKs+IVSbC9N/hHD6ErPL\n" \
"v4dfxn+G07IwXNb9rfF73OX4YJYJkhD10FPe+3t+c4isUoh7SqbKSaZeqKeMWhG8\n" \
"eoLrvozps6yWJQeXSpkqBy+0Hne/ig+1AnwblrjFuTosvNYSuetZfeLQBoZfXklq\n" \
"tTleiDTsvHgMCJiEbKjNS7SgfQx5TfC4LcshytVsW33hoCmEofnTlEnLJGKRILzd\n" \
"C9XZzPnqJworc5HGnRusyMvo4KD0L5CLTfuwNhv2GXqF4G3yYROIXJ/gkwpRl4pa\n" \
"zq+r1feqCapgvdzZX99yqWATXgAByUr6P6TqBwMhAo6CygPCm48CAwEAAaOBnDCB\n" \
"mTAOBgNVHQ8BAf8EBAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUm+IH\n" \
"V2ccHsBqBt5ZtJot39wZhi4wNgYDVR0fBC8wLTAroCmgJ4YlaHR0cDovL2NybC5n\n" \
"bG9iYWxzaWduLm5ldC9yb290LXIyLmNybDAfBgNVHSMEGDAWgBSb4gdXZxwewGoG\n" \
"3lm0mi3f3BmGLjANBgkqhkiG9w0BAQUFAAOCAQEAmYFThxxol4aR7OBKuEQLq4Gs\n" \
"J0/WwbgcQ3izDJr86iw8bmEbTUsp9Z8FHSbBuOmDAGJFtqkIk7mpM0sYmsL4h4hO\n" \
"291xNBrBVNpGP+DTKqttVCL1OmLNIG+6KYnX3ZHu01yiPqFbQfXf5WRDLenVOavS\n" \
"ot+3i9DAgBkcRcAtjOj4LaR0VknFBbVPFd5uRHg5h6h+u/N5GJG79G+dwfCMNYxd\n" \
"AfvDbbnvRG15RjF+Cv6pgsH/76tuIMRQyV+dTZsXjAzlAcmgQWpzU/qlULRuJQ/7\n" \
"TBj0/VLZjmmx6BEP3ojY+x1J96relc8geMJgEtslQIxq/H5COEBkEveegeGTLg==\n" \
"-----END CERTIFICATE-----\n";

/**** Pre-define functon ****/
void sendData(String params);


/*** Define Object variable ***/
WiFiClientSecure client;
tiny32 mcu;

int B_var = 0;
int C_var = 0;
int D_var = 0;
float E_var = 0;
float F_var = 0;
float G_var = 0;


void setup() {
  Serial.begin(115200);
  Serial.println("**** googlesheet_record ****"); 


  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  Serial.println("Started");
  Serial.print("Connecting");

  while (WiFi.status() != WL_CONNECTED) {
    vTaskDelay(500);
    Serial.print(".");
  }

  Serial.print("\r\nSSID: ");
  Serial.println(WiFi.SSID());
  Serial.print("IP: ");
  Serial.println(WiFi.localIP());
  Serial.println("Ready to go");
  
  vTaskDelay(3000);
  mcu.buzzer_beep(2);
  mcu.library_version();
}

void loop() {

  vTaskDelay(5000);

  //Record data to google sheet
  String DataString = "Row_B="; //label of row don't have space bar (ชื่อหัวข้อต้องไม่มีเว้นช่องว่าง) *
  DataString += String(B_var);
  DataString += "&Row_C=";   //ใช้เครื่องหมาย & เป็นตัวแบ่ง row
  DataString += String(C_var);
  DataString += "&Row_D=";
  DataString += String(D_var);
  DataString += "&Row_E=";
  DataString += String(E_var);
  DataString += "&Row_F=";
  DataString += String(F_var,1); //แสดงทศนิยม 1 ตำแหน่ง
  DataString += "&Row_G=";
  DataString += String(G_var,2); //แสดงทศนิยม 2 ตำแหน่ง
  sendData(DataString);
  
  //เพิ่มค่าตัวแปร
  B_var++;
  C_var+=5;
  D_var+=10;
  E_var+=0.1;
  F_var+=0.11;
  G_var+=0.22;
}

void sendData(String params) {
    mcu.buzzer_beep(1);
    HTTPClient http;
    String url="https://script.google.com/macros/s/"+GOOGLE_SCRIPT_ID+"/exec?"+params;
    Serial.print(url);
    Serial.print("Making a request");
    http.begin(url, root_ca); //Specify the URL and certificate
    int httpCode = http.GET();  
    http.end();
    Serial.println(": done "+httpCode);
}


