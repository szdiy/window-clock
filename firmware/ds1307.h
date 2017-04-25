#ifndef DS1307_H
#define DS1307_H

unsigned char TimeBuf[7];  //Calendar/Clock BCD format buffer
unsigned char TimeBin[7];  //Calendar/Clock binary format buffer
unsigned char TimeDec[7];  //Calendar/Clock decimal format buffer

unsigned char BINtoBCD(unsigned char BIN);
unsigned char BINtoDEC(unsigned char BIN);
unsigned char BCDtoBIN(unsigned char BCD);
void RtcBINtoBCD(void);
void RtcBINtoDEC(void);
void RtcBCDtoBIN(void);

#endif
