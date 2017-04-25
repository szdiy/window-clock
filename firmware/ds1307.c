#include <avr/io.h>
#include "ds1307.h"
#include "uart.h"

unsigned char BINtoBCD(unsigned char BIN)
{
  unsigned char temp;
  BIN &= 0x7F;
  BIN %= 100;
  temp = BIN/10;
  temp <<= 4;
  temp |= BIN%10;
  return temp;
}

unsigned char BINtoDEC(unsigned char BIN)
{
  unsigned char temp;
  temp= ((BIN >> 4) * 10) + (BIN & 0x0f);
  return temp;
}

unsigned char BCDtoBIN(unsigned char BCD)
{
  unsigned char temp;
  temp = BCD & 0x0F;
  temp += (BCD>>4)*10;
  return temp;
}

void RtcBINtoBCD(void)
{
  unsigned char i;

  TimeBin[0] &= 0x7F; 
  TimeBin[1] &= 0x7F; 
  TimeBin[2] &= 0x3F; 
  TimeBin[3] &= 0x07; 
  TimeBin[4] &= 0x3F; 
  TimeBin[5] &= 0x1F; 
  TimeBin[6] &= 0xFF; 

  for(i=0;i<7;i++)
  {
    TimeBuf[i] = BINtoBCD(TimeBin[i]);
  }
}

void RtcBINtoDEC(void)
{
  unsigned char i;

  for(i=0;i<7;i++)
  {
    TimeDec[i] = BINtoDEC(TimeBin[i]);
  }
}

void RtcBCDtoBIN(void)
{
  unsigned char i;
  
  for(i=0;i<7;i++)
  {
    TimeBin[i] = BCDtoBIN(TimeBuf[i]);
  }

}
