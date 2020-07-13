#ifndef _PEDAL_H
#define _PEDAL_H

#include "playstation.h"

/* Pedal Configuration (RA5) */
#define PEDAL_PORT PORTA
#define PEDAL_TRIS TRISA
#define PEDAL_ANSEL ANSELA
#define PEDAL_PULL_UP WPUA
#define PEDAL_INPUT 5
#define PEDAL_NORMAL_CLOSE 0
#define PEDAL_NORMAL_OPEN 1
#define PEDAL_BUTTON_MODE PEDAL_NORMAL_CLOSE
#define PEDAL_BUTTON BUTTON_CROSS

#endif /* _PEDAL_H */
