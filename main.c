/* 
 * File:   main.c
 * Author: pyroesp
 * Project: Pedal Switch Controller PS1
 * Created on: May 20, 2020, 3:41 PM
 */


#include "pic_config.h"

/** Freq Definition **/
#define _XTAL_FREQ 32000000

/** Includes **/
#include <xc.h>
#include <stdint.h>

#include "playstation.h"
#include "pedal.h"

/*
 Connection:
    RA2 = /SS
    RC0 = CLK
    RC1 = DATA (SDO1)
    RC2 = CMD (SDI1)

    RA5 = Pedal Switch
    RC5 = /ACK
*/

#define CLR_BIT(v,b) ((v) &= ~(1 << (b)))
#define SET_BIT(v,b) ((v) |= 1 << (b))
#define GET_BIT(v,b) (!!((v) & (1 << (b))))

/* Global variables */
volatile union PS1_Cmd cmd;
volatile union PS1_Ctrl_Data data;
volatile uint8_t cnt;
volatile uint8_t send_ack;
volatile uint8_t memcard_spi;

/** Reverse byte order **/
void _reverseByte(volatile uint8_t *b);

/* Interrupt */
void __interrupt() _spi_int(void) {
    uint8_t temp_spi;
    // SPI1 interrupt
    if (PIR1bits.SSP1IF){
        // Copy received SPI byte into temp variable
        temp_spi = SSP1BUF;
        _reverseByte(&temp_spi);
        /*
         * Reset the SSP1BUF so SDO is always high whenever the PlayStation
         * reads data from the memory card
         */
        // If the SPI byte is the first one
        if (cnt == 0){
            // Write first SPI byte into the cmd device select
            cmd.device_select = temp_spi;
            cnt++;
        }
        /*
         * If the device select is the controller byte (01h)
         * output data to the PlayStation.
         * The cnt counter will be reset when SS is high.
         *
         * If the device select is the memory card byte (81h),
         * all received bytes will be ignored
         */
        SSP1BUF = 0xFF; // clear output
        if (cmd.device_select == CONTROLLER_SEL){
            if (cnt < PS1_CTRL_BUFF_SIZE){
                temp_spi = data.buff[cnt];
                _reverseByte(&temp_spi);
                SSP1BUF = temp_spi;
                cnt++;
                send_ack = 1;
            }
        }else{ // If PlayStation is trying to read the memory card
            SSP1CON1bits.SSPEN = 0; // disable SPI1
            TRISCbits.TRISC1 = 1; // SDO1 set to input
            memcard_spi = 1;
        }
        PIR1bits.SSP1IF = 0; // clear SPI1 flag
    }
}


void main(){    
    // Setup PlayStation structure
    cmd.device_select = 0x00;
    cmd.command = 0x00;
    data.unused1 = 0xFF;
    data.unused2 = 0xFF;
    data.id_hi = CONTROLLER_IDHI;
    data.id_lo = CONTROLLER_IDLO;
    data.keys_hi = CONTROLLER_BUTTON_RESET;
    data.keys_lo = CONTROLLER_BUTTON_RESET;
    cnt = 0;
    send_ack = 0;
    
    /* Configure IO for the pedal */
    CLR_BIT(PEDAL_ANSEL, PEDAL_INPUT); // Set to digital IO
    SET_BIT(PEDAL_TRIS, PEDAL_INPUT); // Set to input
#ifdef PEDAL_PULL_UP
    SET_BIT(PEDAL_PULL_UP, PEDAL_INPUT); // Enable pull-up
#endif
    
    /* Configure IO for the ACK signal */
    CLR_BIT(ACK_ANSEL, ACK_OUTPUT); // Set to digital IO
    SET_BIT(ACK_TRIS, ACK_OUTPUT); // Set to input
    CLR_BIT(ACK_LAT, ACK_OUTPUT); // Set output latch low
    
    LATA = 0; // clear output latch port A
    LATC = 0; // clear output latch port C

    ANSELAbits.ANSA2 = 0; // set to IO
    TRISAbits.TRISA2 = 1; // SS set to input
    ANSELCbits.ANSC0 = 0; // set to IO
    TRISCbits.TRISC0 = 1; // SCK set to input
    ANSELCbits.ANSC2 = 0; // set to IO
    TRISCbits.TRISC2 = 1; // SDI1 set to input
    ANSELCbits.ANSC1 = 0; // set to IO
    TRISCbits.TRISC1 = 0; // SDO1 set to output

    // SETUP SPI1 I/O
    SSP1CLKPPSbits.SSP1CLKPPS = 0x10; // SCK1 = RC0
    SSP1SSPPSbits.SSP1SSPPS = 0x02; // SS1 = RA2
    SSP1DATPPSbits.SSP1DATPPS = 0x12; // SDI1 = RC2
    RC1PPS = 0x19; // SDO1 = RC1

    // SETUP SPI1
    SSP1STATbits.SMP = 0; // slave mode SPI1
    SSP1STATbits.CKE = 0;
    SSP1CON1bits.CKP = 1; // clock idle high
    SSP1CON1bits.SSPM = 0x04; // slave mode: CLK = SCK pin; SS enabled
    SSP1CON3bits.BOEN = 1; // ignore BF flag
    SSP1CON1bits.SSPEN = 1; // enable SPI1

    SSP1BUF = 0xFF;
    
    /* Enable interrupts */
    PIR1bits.SSP1IF = 0; // clear SPI1 flag
    PIE1bits.SSP1IE = 1; // enable MSSP interrupt (SPI1)

    INTCONbits.PEIE = 1; // peripheral interrupt enable
    INTCONbits.GIE = 1; // global interrupt enable
    
    while(1){
        // Send Ack to PlayStation
        if (send_ack){
            // Set the ACK pin to an output, LAT already to 0
            CLR_BIT(ACK_TRIS, ACK_OUTPUT);
            NOP(); // 125ns
            NOP(); // 125ns
            NOP(); // 125ns
            NOP(); // 125ns - 500ns
            NOP(); // 125ns
            NOP(); // 125ns
            NOP(); // 125ns
            NOP(); // 125ns - 1us
            NOP(); // 125ns
            NOP(); // 125ns
            NOP(); // 125ns
            NOP(); // 125ns - 1.5us
            NOP(); // 125ns
            NOP(); // 125ns
            NOP(); // 125ns
            NOP(); // 125ns - 2us
            NOP(); // 125ns
            NOP(); // 125ns
            NOP(); // 125ns
            NOP(); // 125ns - 2.5us
            SET_BIT(ACK_TRIS, ACK_OUTPUT); // Set ACK pin back to input
            send_ack = 0;
        }
        
        // Reset counter whenever SS is high
        if (PORTAbits.RA2 == 1){
            memcard_spi = 0; // when SS high, communication done so reset the variable
            if (SSP1CON1bits.SSPEN){ // if SS high and SPI enabled
                SSP1CON1bits.SSPEN = 0; // disable SPI1
                cnt = 0; // reset counter
            }
        }else{
            // if SS low and SPI disabled and PlayStation isn't reading the memory card anymore
            if (!SSP1CON1bits.SSPEN && !memcard_spi){ 
                SSP1BUF = 0xFF; // clear SPI buffer content
                TRISCbits.TRISC1 = 0; // SDO1 set to output
                SSP1CON1bits.SSPEN = 1; // enable SPI1
            }
        }
        
        // Read pedal switch status
        if (GET_BIT(PEDAL_PORT, PEDAL_INPUT) != PEDAL_BUTTON_MODE){
            #if (PEDAL_BUTTON > 7)
                CLR_BIT(data.keys_hi, (PEDAL_BUTTON - 8));
            #else
                CLR_BIT(data.keys_lo, PEDAL_BUTTON);
            #endif
        }else{
                data.keys_hi = CONTROLLER_BUTTON_RESET;
                data.keys_lo = CONTROLLER_BUTTON_RESET;
        }
    }
    
    for(;;);
}

/*
 * Reverse byte order
 * The PlayStation send data LSb first,
 * but the PIC uses a shift right register
 * so the LSb from the PS1 becomes the MSb of the PIC
 */
void _reverseByte(volatile uint8_t *b){
    *b = (*b & 0xF0) >> 4 | (*b & 0x0F) << 4;
    *b = (*b & 0xCC) >> 2 | (*b & 0x33) << 2;
    *b = (*b & 0xAA) >> 1 | (*b & 0x55) << 1;
}