## A Digital Compass Library for Arduino

HM55B_Compass is an Arduino library that makes access to the digital compass module from [Parallax](http://www.parallax.com/tabid/768/ProductID/98/Default.aspx) super simple. There is another solution in the [Arduino Playground](http://www.arduino.cc/playground/Main/HM55B) which has great information on how to connect the module, but it's makes your code more cluttered. This library should run a tiny little bit faster and waste a few precious bytes less.

After installing the library (see [here](http://www.arduino.cc/en/Reference/Libraries) on how to install contributed libraries), use it as simple as this:

	#include <HM55B_Compass.h>

	// Compass. Clock on pin 8, Enable on pin 9, dataIO on pin 10
	HM55B_Compass compass(8, 9, 10);

	void setup() {
		Serial.begin(57600);
		// Must initialize the HM55B chip
		compass.initialize();
	}

	void loop() {
		// Read uncalibrated compass value. This takes ~45 ms.
		// Gives angle +/- 180° from north. Negative values to east,
		// positive to west.
		int angle = compass.read();
		Serial.println(angle);
	}

Next version, if there will be one, will support calibration. This is needed in appliances that contain disturbances in the magnetic field.

_Enjoy!_