//Crystal frequency
#ifndef F_CPU 
#define F_CPU 20000000UL
#endif

#include <avr/io.h>
#include <util/delay.h>
#include "i2c.h"
#include "uart.h"

/*********************************************
** Name：i2c_write

** Function：I2C write

** Entrance parameters:
**  Wdata: Write data
**  RegAddress: Register Address

** Outlet parameters: 
**  return 0:write success
**  return 1:write failed

** Instructions for use: None

**********************************************/
unsigned char i2c_write(unsigned char Wdata,unsigned char RegAddress)
{	
  Start();                    //I2C Start
  Wait();
  if(TestAck() != START)
  {
    uart_printf("i2c_write failed1.TWSR:0x%x\r\n",TWSR);
    Stop();
    return 1; //ACK
  }

  Write8Bit(WD_DEVICE_ADDR);  //Set I2C Device write address
  Wait();
  if(TestAck() != MT_SLA_ACK)
  {
    uart_printf("i2c_write failed2.TWSR:0x%x\r\n",TWSR);
    Stop();
    return 1; //ACK
  }
	  
  Write8Bit(RegAddress);      //Set I2C Register address
  Wait();
  if(TestAck() != MT_DATA_ACK)
  {
    uart_printf("i2c_write failed3.TWSR:0x%x\r\n",TWSR);
    Stop();
    return 1; //ACK
  }

  Write8Bit(Wdata);           //Write I2C data
  Wait();

  if(TestAck() != MT_DATA_ACK)
  {
    uart_printf("i2c_write failed4.TWSR:0x%x\r\n",TWSR);
    Stop();
    return 1; //ACK
  }	 
  Stop();                     //I2C Stop
  _delay_ms(10);              //time delay
  return 0;
}

/*********************************************
** Name：void i2c_read(void)

** Function：I2C read

** Entrance parameters:
**  RegAddress: Register Address

** Outlet parameters: read data

** Instructions for use: None

**********************************************/

unsigned char i2c_read(unsigned RegAddress)
{
  unsigned char temp;
  Start();                      //I2C Start
  Wait();
  if (TestAck()!=START)
  {
    uart_printf("i2c_read failed1.TWSR:0x%x\r\n",TWSR);
    Stop();
    return 255; //ACK
  }	   
	   
  Write8Bit(WD_DEVICE_ADDR);	//Set I2C Device write address
  Wait(); 
  if (TestAck()!=MT_SLA_ACK)
  {
    uart_printf("i2c_read failed2.TWSR:0x%x\r\n",TWSR);
    Stop();
    return 255; //ACK
  }

  Write8Bit(RegAddress);        //Set I2C Register address
  Wait();
  if (TestAck()!=MT_DATA_ACK)
  {
    uart_printf("i2c_read failed3.TWSR:0x%x\r\n",TWSR);
    Stop(); 
    return 255; //ACK
  }
	   
  Start();                      //I2C Re-start
  Wait();
  if (TestAck()!=RE_START)
  {
    uart_printf("i2c_read failed4.TWSR:0x%x\r\n",TWSR);
    Stop(); 
    return 255; //ACK
  }

  Write8Bit(RD_DEVICE_ADDR);	//Set I2C Device read address
  Wait();
  if(TestAck()!=MR_SLA_ACK)
  {
    uart_printf("i2c_read failed5.TWSR:0x%x\r\n",TWSR);
    Stop(); 
    return 255; //ACK
  }
	   
  Twi();	 	        //Start I2C read
  Wait();
  if(TestAck()!=MR_DATA_NOACK)
  {
    uart_printf("i2c_read failed6.TWSR:0x%x\r\n",TWSR);
    Stop(); 
    return 255; //ACK
  }
	   
  temp=TWDR;                   //Read the I2C data
  Stop();                      //I2C Stop
  uart_printf("i2c_read suc temp is:0x%x\r\n",temp);
  return temp;
}
