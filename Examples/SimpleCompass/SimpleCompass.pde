/*
 * Simple compass example
 */
 
#include <HM55B_Compass.h>

// Compass. Clock on pin 8, Enable on pin 9, dataIO on pin 10
HM55B_Compass compass(8, 9, 10);

void setup() {
  Serial.begin(57600);
  // Initialize the HM55B chip
  compass.initialize();
}

void loop() {
  // Read uncalibrated compass value. This takes ~45 ms.
  // Gives angle +/- 180° from north. Negative values to east,
  // positive to west.
  int angle = compass.read();
  Serial.println(angle);
}
