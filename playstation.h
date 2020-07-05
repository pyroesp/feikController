#ifndef _PLAYSTATION_H
#define	_PLAYSTATION_H

/*
 * https://problemkaputt.de/psx-spx.htm#controllersandmemorycards
 * Playstation send cmd :       01h     42h     00h     00h     00h
 * Controller responds with :   FFh     ID      5Ah     key1    key2
 * Serial data transfered LSB first
 * Acknowledge bit needs to be more than 2usec
 * Clock is 250kHz 
     ____                                                              _____
/SEL     |____________________________________________________________|
     ______        ____        ____        ____        ____        _________
CLK        ||||||||    ||||||||    ||||||||    ||||||||    ||||||||
     _______________________________________________________________________
CMD       X  01h   XXXX  42h   XXXX  00h   XXXX  00h   XXXX  00h   XXXX
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          _____________________________________________________________
DAT  -----XXXXXXXXXXXXX   ID   XXXX  5Ah   XXXX  key1  XXXX  key2  XXXX-----
          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/ACK ---------------|_|---------|_|---------|_|---------|_|-----------------
 
*/

/** PlayStation 1 Configuration **/
#define CONTROLLER_SEL 0x01
#define MEMCARD_SEL 0x81

/* Controller & Button configuration */
#define CONTROLLER_IDHI 0x5A 
#define CONTROLLER_IDLO 0x41 // Digital Pad ID (Original controller)
#define CONTROLLER_BUTTON_RESET 0xFF

/* Controller Button Status */
#define BUTTON_PRESSED 0
#define BUTTON_RELEASED 1

/* Controller Buttons */
#define BUTTON_SELECT 0
#define BUTTON_L3 1
#define BUTTON_R3 2
#define BUTTON_START 3
#define BUTTON_UP 4
#define BUTTON_RIGHT 5
#define BUTTON_DOWN 6
#define BUTTON_LEFT 7
#define BUTTON_L2 8
#define BUTTON_R2 9
#define BUTTON_L1 10
#define BUTTON_R1 11
#define BUTTON_TRIANGLE 12
#define BUTTON_CIRCLE 13
#define BUTTON_CROSS 14
#define BUTTON_SQUARE 15


/* PlayStation Data Buffer */
#define PS1_CTRL_BUFF_SIZE 5

/* PlayStation Controller Command Union */
union PS1_Cmd{
    uint8_t buff[PS1_CTRL_BUFF_SIZE];
    struct{
        uint8_t device_select; // 0x01 or 0x81
        uint8_t command; // 0x42 for read switch
        uint8_t unused[PS1_CTRL_BUFF_SIZE-2]; // always 0 for controller
    };
};

/* PlayStation Controller Data Union */
union PS1_Ctrl_Data{
    uint8_t buff[PS1_CTRL_BUFF_SIZE + 1]; // buffer to read data
    struct{
        uint8_t unused1; // always 0xFF
        uint8_t id_lo; // id lo
        uint8_t id_hi; // id hi
        uint8_t keys_lo; // keys lo
        uint8_t keys_hi; // keys hi
        uint8_t unused2; // always 0xFF
    };
};


#endif	/* _PLAYSTATION_H */
