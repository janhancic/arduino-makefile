#ifndef __WRAP_ARDUINO_H__
#define __WRAP_ARDUINO_H__

#ifndef _TESTING 
#include "Arduino.h"
#else
#include <stdint.h>
#include <string.h>
#include <stdio.h>

#define OUTPUT -10
#define HIGH 1
#define LOW 0

#define RISING 1

void delay(int time);
long millis();
void digitalWrite(int, int);
void attachInterrupt(uint8_t, void (*)(void), int mode);


/* math.h */
double atan2(double __y, double __x);
double asin(double __x);
double atan(double __x);
double sqrt(double); 


#endif
#endif /* __WRAP_ARDUINO_H__ */
