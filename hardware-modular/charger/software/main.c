/*******************************************************************\
|* Author: Djordje Jocic                                           *|
|* Year: 2021                                                      *|
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

/********************\
|* DEVICE CONSTANTS *|
\********************/

/**
 * Frequency of the internal oscillator.
 */

#define _XTAL_FREQ 4000000

/**
 * Period of the PWM signal. Period of <i>1000</i> will
 * be equal to <i>1000</i> instruction cycles, each one
 * executed every <i>FOSC/4</i> HZ.
 * 
 * Note: Period of <i>1000</i> is equal to <i>1s</i> when
 * internal oscillator is set to <i>4 MHz</i>.
 */

#define _PWM_PERIOD 100

/**********************\
|* CONFIGURATION BITS *|
\**********************/

/**
 * Note: Additional details can be found in the following file:
 *   - xc8\v2.31\docs\chips\16f687.html
 */

#pragma config FOSC = INTRCIO

#pragma config WDTE = OFF

#pragma config PWRTE = OFF

#pragma config MCLRE = OFF

#pragma config CP = OFF

#pragma config CPD = OFF

#pragma config BOREN = OFF

#pragma config IESO = OFF

#pragma config FCMEN = OFF

/*****************\
|* PWM VARIABLES *|
\*****************/

/**
 * Temporary variable used to track the number of instruction
 * cycles for PWM management when PWM output is enabled.
 */

volatile unsigned int PWM_TICKS = 0;

/**
 * Flag used for toggling the PWM signal.
 */

__bit PWM_ENABLED = 0;

/**
 * Number of instruction cycles that the PWM signal
 * should remain in the HIGH state.
 */

unsigned int PWM_ON = 0;

/**
 * Number of instruction cycles that the PWM signal
 * should remain in the LOW state.
 */

unsigned int PWM_OFF = 0;

/**************\
|* INTERRUPTS *|
\**************/

/**
 * Interrupt procedure for timer <i>0</i> used for
 * generating a PWM for battery charging.
 * 
 * @author    Djordje Jocic <office@djordjejocic.com>
 * @copyright 2021 All Rights Reserved
 * @version   1.0.0
 * 
 * @return void
 */

void __interrupt() pwm_routine(void) {
    
    // Logic
    
    if (T0IF) {
        
        if (PWM_ENABLED) {
            
            if (RB4 == 0x0 && PWM_TICKS >= PWM_OFF) {
                RB4       = 0x1;
                PWM_TICKS = 0x0;
            }
            else if (RB4 == 0x1 && PWM_TICKS >= PWM_ON) {
                RB4       = 0x0;
                PWM_TICKS = 0x0;
            }
            
            PWM_TICKS ++;
        }
        else {
            RB4 = 0x0;
        }
        
        T0IF = 0x0;
    }
}

/*************\
|* FUNCTIONS *|
\*************/

/**
 * Appropriately configures the microcontroller.
 * 
 * @author    Djordje Jocic <office@djordjejocic.com>
 * @copyright 2021 All Rights Reserved
 * @version   1.0.0
 * 
 * @return void
 */

void setup(void) {
    
    // Internal Oscillator
    
    IRCF0 = 0x1;
    IRCF1 = 0x1;
    IRCF2 = 0x1;
    OSTS  = 0x0;
    HTS   = 0x1;
    LTS   = 0x1;
    SCS   = 0x1;
    
    // General Configuration
    
    OPTION_REG = 0x80;
    
    // Interrupts
    
    GIE   = 0x1;
    PEIE  = 0x0;
    T0IE  = 0x1;
    INTE  = 0x0;
    RABIE = 0x0;
    
    // Timers
    
    T0CS = 0x0;
    PS2  = 0x0;
    PS1  = 0x1;
    PS0  = 0x0;
    
    // Analog Ports
    
    ANSEL  = 0x0;
    ANSELH = 0x0;
    
    // Digital Ports
    
    TRISB4 = 0x0;
}

/**
 * Sets the duty cycle of the PWM signal.
 * 
 * @author    Djordje Jocic <office@djordjejocic.com>
 * @copyright 2021 All Rights Reserved
 * @version   1.0.0
 * 
 * @param unsigned char cycle
 *   Duty cycle of the PWM signal, ex. <i>50</i>.
 * @return void
 */

void set_pwm_cycle(unsigned char cycle) {
    
    // Logic
    
    PWM_TICKS = 0x0;
    PWM_ON    = ((cycle * _PWM_PERIOD) / 100);
    PWM_OFF   = _PWM_PERIOD - PWM_ON;
    
}

/**
 * Enables or disables the PWM signal.
 * 
 * @author    Djordje Jocic <office@djordjejocic.com>
 * @copyright 2021 All Rights Reserved
 * @version   1.0.0
 * 
 * @param unsigned char enabled
 *   Value <i>1</i> or <i>0</i> to enable/disable the
 *   PWM signal respectively.
 * @return void
 */

void set_pwm_enabled(unsigned char enabled) {
    
    // Logic
    
    PWM_ENABLED = (enabled & 0x1);
    PWM_TICKS   = 0x0;
    
    if (PWM_ON == 0x0 && PWM_OFF == 0x0) {
        set_pwm_cycle(50);
    }
    
    RB4 = (enabled & 0x1);
}

/**
 * Does nothing right now.
 */

void charge(void) {
    
    // TBI
    
}

void main(void) {
    
    __delay_ms(1000);
    
    setup();
    
    //set_pwm_enabled(0x1);
    
    while (0x1) {
        charge();
    }
}
