//Crystal frequency
#ifndef F_CPU 
#define F_CPU 20000000UL
#endif

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "uart.h"
#include "i2c.h"
#include "ds1307.h"
#include "ws2812b.h"

unsigned char TimeBin[7] = {0x58,0x59,0x11,0x05,0x02,0x04,0x10};

int main(void)
{
  unsigned char i,hour,minute,second,result;

  //C4 and C5 used for I2C 
  PORTC = 0x00;
  DDRC = 0x00;
  init_uart();
  
  clr_send_buffer();

  //D3 is for WS2812B DIN port.
  DDRD |= 0x08;
  PORTD |= 0x00;
   
#if 0
  TWSR = 0x00;

  result = i2c_write(0x80,0x00);

  for(count=1;count<7;count++)
  {
    result = i2c_write(TimeBin[count],count);
    uart_printf("i2c_write %d result:%d\r\n",count,result);
  }

  result = i2c_write(0x00,0x00);
  
#endif
  while(1)
  {
#if 0
    for(i=0; i<7; i++)
    {
      result = i2c_read(i);
      if(255 != result)
      {
        TimeBin[i];
      }
    }
    
    RtcBINtoDEC();
    hour = TimeDec[2];
    minute = TimeDec[1];
    second = TimeDec[0];
    uart_printf("hour-%d:min-%d:sec-%d\r\n",hour,minute,second);
#endif
    for(i=0; i< MAX_UART_READ_BUF; i++)
    {
      read_uart_buffer[i] =read_char();
      if((Read_UART == '\r') || (Read_UART == '\n'))
      {
        break;
      }
    }

    hour =   (read_uart_buffer[0] - '0')*10 + (read_uart_buffer[1] - '0');
    minute = (read_uart_buffer[2] - '0')*10 + (read_uart_buffer[3] - '0');
    second = (read_uart_buffer[4] - '0')*10 + (read_uart_buffer[5] - '0');
 
    for(i=1; i< MAX_UART_READ_BUF; i++)
    {
      read_uart_buffer[i] = 0x00;
    }

    clr_send_buffer();
    fill_time(hour,minute,second);
    send_data();
    _delay_ms(50);
  }
}
