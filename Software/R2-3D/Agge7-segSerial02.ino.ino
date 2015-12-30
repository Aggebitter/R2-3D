#include "LedControl.h"
/*
 Now we need a LedControl to work with.
 ***** These pin numbers will probably not work with your hardware *****
 pin 12 is connected to the DataIn 
 pin 11 is connected to the CLK 
 pin 10 is connected to LOAD 
 We have only a single MAX72XX.
 */
LedControl lc=LedControl(12,11,10,1);
/* we always wait a bit between updates of the display */
unsigned long delaytime=250;





/*
Example of processing incoming serial data without blocking.

Author:   Nick Gammon
Date:     13 November 2011. 
Modified: 31 August 2013.

Released for public use.
*/

// how much serial data we expect before a newline
const unsigned int MAX_INPUT = 50;
String matchingString = "T:";    // match the first two letters in M105 response
String inputString = ""; 
void setup ()
  {
  Serial.begin (250000);
  /*
   The MAX72XX is in power-saving mode on startup,
   we have to do a wakeup call
   */
  lc.shutdown(0,false);
  /* Set the brightness to a medium values */
  lc.setIntensity(0,1);
  /* and clear the display */
  lc.clearDisplay(0);
  writeAggeOn7Segment();
  } // end of setup


/*
 This method will display the characters for the
   word "Arduino" rolling on 8pc 7segment
   */
  void writeAggeOn7Segment() {
   lc.clearDisplay(0);
  for(int i=-8;i<8;i++) {
  lc.setChar(0,i,' ',false);      // Space
  lc.setChar(0,i+1,' ',false);    // Space
  lc.setChar(0,i+2,' ',false);    // Space
  lc.setChar(0,i+3,' ',false);    // Space
  lc.setChar(0,i+4,'E',false);    // E
  lc.setChar(0,i+5,'6',false);    // G
  lc.setChar(0,i+6,'6',false);    // G
  lc.setChar(0,i+7,'a',false);    // A

  delay(delaytime);
 lc.setChar(0,4,'1',false);
  }
} 


// here to process incoming serial data after a terminator received
// void process_data (const char * data)
void process_data (const String data)
  {
  // for now just display it
  // (but you could compare it to some value, convert to an integer, etc.)
   
String currentTemp0;
String targetTemp0;
String currentTemp1;
String targetTemp1;
String current7Seg0;
float cTemp0;
float tTemp0;

int indexCurrent0;
int indexCurrent1;
int indexCurrent2;
int indexCurrent3;
  //inputString = data;
  if (data.substring(0, 2) == matchingString) {
    // format is T:18.76 /0 B:17.78 /0 B@:0 @:0   
    // get the indexes för the 8 temperatures
    indexCurrent0 = data.indexOf(' ');
    indexCurrent1 = data.indexOf(' ',indexCurrent0 + 1);
    indexCurrent2 = data.indexOf(' ',indexCurrent1 + 1);
    indexCurrent3 = data.indexOf(' ',indexCurrent2 + 1);
    
    currentTemp0 =  data.substring(2, indexCurrent0);
    targetTemp0 =  data.substring(indexCurrent0 +2 , indexCurrent1);


    currentTemp1 =  data.substring(indexCurrent1 + 3, indexCurrent2);
    targetTemp1 =  data.substring(indexCurrent2 +2 , indexCurrent3);

      
       current7Seg0 = currentTemp0.substring(4, 5);
       lc.setChar(0,4,(current7Seg0.toInt()),false);
         current7Seg0 = currentTemp0.substring(3, 4);
         lc.setChar(0,5,(current7Seg0.toInt()),false);
           current7Seg0 = currentTemp0.substring(1, 2);
           lc.setChar(0,6,(current7Seg0.toInt()),false);
             current7Seg0 = currentTemp0.substring(0, 1);
             lc.setChar(0,7,(current7Seg0.toInt()),false);
             
    // convert to float
    cTemp0 = currentTemp0.toFloat();
    cTemp0 = cTemp0 * 100 ;
    tTemp0 = targetTemp0.toFloat(); 
             
        Serial.println(cTemp0);
  }
else {
   Serial.println (data);
}
  }  // end of process_data
  
void processIncomingByte (const byte inByte)
  {
  static char input_line [MAX_INPUT];
  static unsigned int input_pos = 0;

  switch (inByte)
    {

    case '\n':   // end of text
      input_line [input_pos] = 0;  // terminating null byte
      
      // terminator reached! process input_line here ...
      process_data (input_line);
      
      // reset buffer for next time
      input_pos = 0; 

      break;

    case '\r':   // discard carriage return
      break;

    default:
      // keep adding if not full ... allow for terminating null byte
      if (input_pos < (MAX_INPUT - 1))
        input_line [input_pos++] = inByte;
      break;

    }  // end of switch
   
  } // end of processIncomingByte  

void loop()
  {
  // if serial data available, process it
  while (Serial.available () > 0)
    processIncomingByte (Serial.read ());
    
  // do other stuff here like testing digital input (button presses) ...

  }  // end of loop
