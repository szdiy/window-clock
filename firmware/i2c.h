#ifndef I2C_H
#define I2C_H

#include <avr/io.h>
//I2C Status define
//MT Master transmission; 
#define START           0x08
#define RE_START        0x10
#define MT_SLA_ACK      0x18
#define MT_SLA_NOACK    0x20
#define MT_DATA_ACK     0x28
#define MT_DATA_NOACK	0x30
#define MT_ARB_LOST	0x38

//MR master receive
#define MR_ARB_LOST	0x38
#define MR_SLA_ACK      0x40
#define MR_SLA_NOACK    0x48
#define MR_DATA_ACK     0x50
#define MR_DATA_NOACK   0x58	

#define RD_DEVICE_ADDR 0xD1
#define WD_DEVICE_ADDR 0xD0

/* Slave Transmitter */
#define ST_SLA_ACK          0xA8
#define ST_ARB_LOST_SLA_ACK 0xB0
#define ST_DATA_ACK         0xB8
#define ST_DATA_NACK        0xC0
#define ST_LAST_DATA        0xC8

/* Slave Receiver */
#define SR_SLA_ACK            0x60
#define SR_ARB_LOST_SLA_ACK   0x68
#define SR_GCALL_ACK          0x70
#define SR_ARB_LOST_GCALL_ACK 0x78
#define SR_DATA_ACK           0x80
#define SR_DATA_NACK          0x88
#define SR_GCALL_DATA_ACK     0x90
#define SR_GCALL_DATA_NACK    0x98
#define SR_STOP               0xA0

//Common operations
#define Start()      (TWCR=(1<<TWINT)|(1<<TWSTA)|(1<<TWEN))    //Start I2C
#define Stop()       (TWCR=(1<<TWINT)|(1<<TWSTO)|(1<<TWEN))    //Stop I2C
#define Wait()	     {while(!(TWCR&(1<<TWINT)));}              //wait the interrupt
#define TestAck()    (TWSR&0xf8)                               //check the Ack
#define SetAck       (TWCR|=(1<<TWEA))                         //ACK response
#define SetNoAck     (TWCR&=~(1<<TWEA))                        //NO-ACK response
#define Twi()        (TWCR=(1<<TWINT)|(1<<TWEN))               //Enable I2C
#define Write8Bit(x) {TWDR=(x);TWCR=(1<<TWINT)|(1<<TWEN);}     //Write data to TWDR

unsigned char i2c_write(unsigned char Wdata,unsigned char RegAddress);
unsigned char i2c_read(unsigned RegAddress);

#endif
