#ifndef _PEDAL_H
#define _PEDAL_H

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

/* Acknowledge Configuration (RC5) */
#define ACK_LAT LATC
#define ACK_TRIS TRISC
#define ACK_ANSEL ANSELC
#define ACK_OUTPUT 5

#endif /* _PEDAL_H */
