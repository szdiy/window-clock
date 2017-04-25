#ifndef WS2812B_H
#define WS2812B_H

#define uchar unsigned char		
#define uint  unsigned int

uchar send_buffer[12][3];

void set_din(void);
void clr_din(void);
void led_reset(void);
void fill_time(uchar hour,uchar min,uchar sec);
void Set_LED(uchar GG, uchar RR, uchar BB);
void clr_send_buffer(void);
void send_data(void);
#endif
