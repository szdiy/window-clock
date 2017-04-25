#include <avr/io.h>

//Crystal frequency
#ifndef F_CPU 
#define F_CPU 20000000UL
#endif

#include <util/delay.h>
#include "uart.h"
#include "ws2812b.h"

#define uchar unsigned char		
#define uint  unsigned int

/*****************************************************************
** WS2812B:
  '0'      T0H = 04us
           T0L = 0.85us
  '1'      T1H = 0.85us
           T1L = 0.4us

   We use AVR GPIO D3 for DIN port.
*****************************************************************/

uchar color_tab[10][3] = {
// 0 - black
{0x00, 0x00, 0x00},  // 0 black    rgb(0%, 0%, 0%)

// 1 - red
{0x00, 0xFF,0x00},   // 2 red      rgb(100%, 0%, 0%)

// 2 - green
{0xFF, 0x00, 0x00},  // 5 green    rgb(0%, 100%, 0%)

// 3 - blue
{0x00, 0x00, 0xFF},  // 6 blue     rgb(0%, 0%, 100%)

// 4 - white
{0xFF, 0xFF, 0xFF},  // 9 white    rgb(100%, 100%, 100%)
};

#define BLACK 0
#define RED   1
#define GREEN 2
#define BLUE  3
#define WHITE 4

void set_din(void)
{
  PORTD |= 0x08;
}

void clr_din(void)
{
  PORTD &= ~0x08;
}
void h_dat0(void)
{ 
  set_din();
  _delay_loop_1(2); 					
  clr_din();
  _delay_loop_1(4); 
}

void h_dat1(void)				  
{   
  set_din();
  _delay_loop_1(4); 					
  clr_din();
  _delay_loop_1(2); 		
}

void led_reset(void)		 
{	
  clr_din();
  _delay_us(100);
}

void send_byte(uchar var)
{
  if(0x80 == (var & 0x80))
  {
    h_dat1();
  }
  else
  {
    h_dat0();
  }
  if(0x40 == (var & 0x40))
  {
    h_dat1();
  }
  else
  {
    h_dat0();
  }
  if(0x20 == (var & 0x20))
  {
    h_dat1();
  }
  else
  {
    h_dat0();
  }
  if(0x10 == (var & 0x10))
  {
    h_dat1();
  }
  else
  {
    h_dat0();
  }
  if(0x08 == (var & 0x08))
  {
    h_dat1();
  }
  else
  {
    h_dat0();
  }
  if(0x04 == (var & 0x04))
  {
    h_dat1();
  }
  else
  {
    h_dat0();
  }
  if(0x02 == (var & 0x02))
  {
    h_dat1();
  }
  else
  {
    h_dat0();
  }
  if(0x01 == (var & 0x01))
  {
    h_dat1();
  }
  else
  {
    h_dat0();
  }
}

void Set_LED(uchar GG, uchar RR, uchar BB)
{
  send_byte(GG);
  send_byte(RR);
  send_byte(BB);
}

void fill_send_buffer(uchar Addr,uchar color)
{
  send_buffer[Addr][0] |=  color_tab[color][0];
  send_buffer[Addr][1] |=  color_tab[color][1];
  send_buffer[Addr][2] |=  color_tab[color][2];
}

void fill_time(uchar hour,uchar min,uchar sec)
{
  fill_send_buffer(hour%12,RED);
  fill_send_buffer((min/5)%12,BLUE);
  fill_send_buffer((sec/5)%12,GREEN);
  uart_printf("The time is %d:%d:%d\r\n",hour%12,min%60,sec%60);
}

void clr_send_buffer(void)
{
  uchar i;
  for(i=0; i<12; i++)
  {
    send_buffer[i][0] = 0x00;
    send_buffer[i][1] = 0x00;
    send_buffer[i][2] = 0x00;
  }
}
void send_data(void)
{
  uchar i;
  for(i=0; i<12; i++)
  {
    Set_LED(send_buffer[i][0],send_buffer[i][1],send_buffer[i][2]);
  }
  led_reset();
}
