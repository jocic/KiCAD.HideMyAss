/*******************************************************************\
|* Author: Djordje Jocic                                           *|
|* Year: 2020                                                      *|
|* License: MIT License (MIT)                                      *|
|* =============================================================== *|
|* Personal Website: http://www.djordjejocic.com/                  *|
|* =============================================================== *|
|* Permission is hereby granted, free of charge, to any person     *|
|* obtaining a copy of this software and associated documentation  *|
|* files (the "Software"), to deal in the Software without         *|
|* restriction, including without limitation the rights to use,    *|
|* copy, modify, merge, publish, distribute, sublicense, and/or    *|
|* sell copies of the Software, and to permit persons to whom the  *|
|* Software is furnished to do so, subject to the following        *|
|* conditions.                                                     *|
|* --------------------------------------------------------------- *|
|* The above copyright notice and this permission notice shall be  *|

|* included in all copies or substantial portions of the Software. *|
|* --------------------------------------------------------------- *|
|* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, *|
|* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES *|
|* OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND        *|
|* NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT     *|
|* HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,    *|
|* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, RISING     *|
|* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR   *|
|* OTHER DEALINGS IN THE SOFTWARE.                                 *|
\*******************************************************************/

/**********************\
|* REQUIRED LIBRARIES *|
\**********************/

#include <xc.h>

/**************************\
|* MCU CONFIGURATION BITS *|
\**************************/

/**
 * Oscillator Selection Bits: Internal oscillator selection,
 * and I/O functions on GP4 & GP5 pins.
 */

#pragma config FOSC = INTRCIO

/**
 * Watchdog Timer Enable Bit: Disabled because of
 * the project requirements.
 */

#pragma config WDTE = OFF

/**
 * GP3/MCLR Pin Function Select: Disabled because of the project
 * requirements. MCLR is internally tied to the VDD and GP3 is
 * freed for I/O functions.
 */

#pragma config MCLRE = OFF

/**
 * Power-Up Timer Enable Bit Disabled because of
 * the project requirements.
 */

#pragma config PWRTE = OFF

/**
 * Brown-Out Detect Enable Bit: Enabled to prevent potential
 * damage to the MCU if power-supply fails.
 */

#pragma config BOREN = ON

/**
 * Code Protection Bit: Disabled for obvious reasons.
 */

#pragma config CP = OFF

/**
 * Data Code Protection Bit: Disabled for obvious reasons.
 */

#pragma config CPD = OFF

/******************\
|* CORE CONSTANTS *|
\******************/

/**
 * Internal oscillator constant used for timing-related
 * functions within the XC library.
 * 
 * @type integer
 */

#define _XTAL_FREQ 4000000

/**
 * Debug flag. Alternative constants will be used when/if set.
 * 
 * @type integer
 */

#define DEBUG 0

/**
 * Delay in milliseconds between the status intervals.
 * 
 * @type integer
 */

#define STS_TIMEOUT 2000

/**
 * Delay in milliseconds between the status "blinks."
 * 
 * @type integer
 */

#define STS_DELAY 200

/*********************\
|* BATTERY CONSTANTS *|
\*********************/

/**
 * Voltage threshold up to which the battery will be considered
 * dead, or disconnected.
 * 
 * Threshold: 1.00
 * 
 * @type integer
 */

#define DEAD_VOLTAGE 80

/**
 * Voltage threshold up to which the CCCV (S1) charging
 * current will be used.
 * 
 * Threshold: 5.25
 * 
 * @type integer
 */

#define CCCV_VOLTAGE 820

/**
 * Number of LED "blinks" that will be used to indicate
 * CCCV (S1) charging.
 */

#define CCCV_INDICATOR 1

/**
 * Voltage threshold up to which the TOPPING (S2) charging
 * current will be used.
 * 
 * Threshold: 6.50
 * 
 * @type integer
 */

#define TOPPING_VOLTAGE 990

/**
 * Number of LED "blinks" that will be used to indicate
 * TOPPING (S2) charging.
 */

#define TOPPING_INDICATOR 2

/**
 * Voltage threshold up to which the FLOAT (S3) charging
 * current will be used.
 * 
 * Threshold: 6.75
 * 
 * @type integer
 */

#define FLOAT_VOLTAGE 1020

/**
 * Number of LED "blinks" that will be used to indicate
 * FLOAT (S3) charging.
 */

#define FLOAT_INDICATOR 3

/**
 * Number of LED "blinks" that will be used to indicate
 * that there is a dead batter connected, or that there
 * is no battery at all.
 */

#define DEAD_INDICATOR 4

/*********************\
|* BATTERY CONSTANTS *|
\*********************/

/**
 * Voltage of the battery that is being charged is monitored in
 * intervals. Length of that interval in milliseconds.
 */

#define MONITOR_INTERVAL 3000

/**
 * Number of milliseconds that the battery charging will be
 * paused after the threshold of the <i>FLOAT</i> voltage
 * has been reached/passed.
 */

#define CHARGING_TIMEOUT 4500

/******************\
|* CORE VARIABLES *|
\******************/

/**
 * Last ADC value ranging from 0 to 1024.
 * 
 * @type unsigned int
 */

 int conversion = 0x00;

/**
 * Current number of "blinks" of an indicator.
 * 
 * @type unsigned char
 */

unsigned char indicator = 0x00;

/**
 * IO stack containing L/H data that is pushed each cycle.
 * 
 * @type unsigned volatile int
 */

unsigned volatile int io_stack = 0x00;

/*******************\
|* OTHER VARIABLES *|
\*******************/

/**
 * Temporary variables for program's loops.
 * 
 * @type unsigned int
 */

unsigned int i = 0x00, j = 0x00;

/*****************\
|* GET FUNCTIONS *|
\*****************/

// GET FUNCTIONS GO HERE

/*****************\
|* SET FUNCTIONS *|
\*****************/

// SET FUNCTIONS GO HERE

/******************\
|* CORE FUNCTIONS *|
\******************/

/**
 * Generic main method for the <i>discrete</i> variant of the
 * <i>HMA</i> project powered by the <i>4 Ah</i> battery.
 * 
 * @author    Djordje Jocic <office@djordjejocic.com>
 * @copyright 2019 All Rights Reserved
 * @version   1.0.0
 * 
 * @return void
 */

void main()
{
    __delay_ms(0x3E8);
    
    // Interrupts
    
    GIE    = 0x01; // Enable Global Interrupts
    T0IE   = 0x00; // Disable TMR0 Interrupts
    TMR1IE = 0x00; // Disable TMR1 Interrupts
    ADIE   = 0x01; // Enable ADC Interrupts
    PEIE   = 0x00; // Disable Peripheral Interrupts
    CMIE   = 0x00; // Disable Comparator Interrupts
    INTE   = 0x00; // Disable GPIO2 External Interrupts
    GPIE   = 0x00; // Disable Port Change Interrupts
    IOC    = 0x00; // Disable Interrupts On Change
    EEIE   = 0x00; // Disable Write Complete Interrupts
    
    // Timer 0
    
    T0CS = 0x00; // Internal Clock Source For T0
    TMR0 = 0x00; // Clear T0
    PSA  = 0x00; // Assign Prescaler To T0
    
    // Prescaler
    
    PS2 = 0x00;
    PS1 = 0x00;
    PS0 = 0x01;
    
    // General
    
    ANSEL = 0x00; // Disable Analog Inputs
    CMCON = 0x07; // Comparator Module Off - CM2:CM0 (Comparator Mode Bits)
    VRCON = 0x00; // Voltage Reference Off
    ADFM  = 0x01; // Right Justified Results - ADRESL (8-bit) + ADRESH (2-bit)
    VCFG  = 0x00; // Vdd As Voltage Reference
    
    /**
     * Battery reference.
     */
    
    TRISIO0 = 0x01; // Make GPIO An Input
    GP0     = 0x00; // Not Needed, Good Practice
    ANS0    = 0x01; // Analog Input Pin Selection
    CHS0    = 0x00; // ADC Channel 00 (AN0 Port)
    CHS1    = 0x00; // ADC Channel 00 (AN0 Port)
    ADCS0   = 0x01; // ADC Clock Bit 0
    ADCS1   = 0x01; // ADC Clock Bit 1
    ADCS2   = 0x00; // ADC Clock Bit 2
    
    /**
     * Switch for Charging.
     */
    
    TRISIO2 = 0x00; // Make GPIO An Output
    GP2     = 0x00; // Set GPIO To Low
    
    /**
     * Switch for CCCV stage.
     */
    
    TRISIO1 = 0x00; // Make GPIO An Output
    GP1     = 0x00; // Set GPIO To Low
    
    /**
     * Switch for Topping stage.
     */
    
    TRISIO5 = 0x00; // Make GPIO An Output
    GP5     = 0x00; // Set GPIO To Low
    
    /**
     * Indicator Status.
     */
    
    TRISIO4 = 0x00; // Make GPIO An Output
    GP4     = 0x00; // Set GPIO To Low

    // Logic
    
    ADON = 0x01; // Enable ADC

    while (0x1) {
        
        // Clear I/O Stack
        
        io_stack = 0x0;
        
        // Turn Off Charging & Deactivate Current Sources
        
        GPIO = io_stack;
        
        __delay_ms(1000); // Take Into The Account GPIO & BJT Turn Off Time
        
        // Start Conversion & Check Voltage
        
        GO = 0x01;
        
        while (GO == 0x01) // Pause Execution During Conversion
        {
            __delay_ms(0x1);
        }
        
        conversion = ((ADRESL & 0xFF) | ((ADRESH & 0x03) << 0x08));
        
        // Turn On Charging & Activate Current Source
        
        if (conversion < DEAD_VOLTAGE) {
            
            indicator = DEAD_INDICATOR;
            
        }
        if (conversion < CCCV_VOLTAGE) {
            
            io_stack |= 0b000110;
            
            indicator = CCCV_INDICATOR;
            
        }
        else if (conversion < TOPPING_VOLTAGE || conversion < FLOAT_VOLTAGE) {
            
            io_stack |= 0b100100;
            
            indicator = FLOAT_INDICATOR;
            
        }
        else {
            
            indicator = 0x00;
            
            __delay_ms(CHARGING_TIMEOUT);
            
        }
        
        GPIO = io_stack;
        
        // Flash Indicator
  
        for (i = 0x00; i < indicator; i ++) { // Flash LED X Times
            
            io_stack |= 0b010000;
            
            __delay_ms(STS_DELAY);
            
            GPIO = io_stack;
            
            io_stack &= 0b101111;
            
            __delay_ms(STS_DELAY);
            
            GPIO = io_stack;
            
        }
        
        // Leave Charging On/Off During An Interval
        
        __delay_ms(MONITOR_INTERVAL);
        
    }
    
}

/*******************\
|* CHECK FUNCTIONS *|
\*******************/

// CHECK FUNCTIONS GO HERE

/*******************\
|* OTHER FUNCTIONS *|
\*******************/

// OTHER FUNCTIONS GO HERE
