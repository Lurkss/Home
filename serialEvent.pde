int howManyVals = 1;
int tagNum;
String inString;

Serial myPort;


void serialEvent(Serial myPort) { 
  // get the ASCII string:
  inString = myPort.readStringUntil('\n');
  //if inString is not empty
  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    // split the string on the commas and convert the 
    // resulting substrings into an integer array:
    int [] incomingVals = int(split(inString, ","));
    if (incomingVals.length >=howManyVals) {
      // map them to the range 0-255:
      tagNum = int(incomingVals[0]);
    }
  }
}