/*
This board design, as well as course teaching materials and avr-gcc
code are being released under the GPL_v3 license. All future versions
of GPL automatically apply.

Written by Dileep V. Reddy on March 6th, 2014.

*/
#include<avr/io.h>
#include<util/delay.h>
#include<avr/sfr_defs.h>

unsigned long ontime = (F_CPU/2);
unsigned long cooldown = (F_CPU/5);

unsigned long curtime, lastswitchon, lastalloff;

long int randnum;
long int maxnum;

// boolarray = {switchstate, basis}
char boolarray;

#define M 0x7FFFFFFF  // 2^31-1, the modulus used by the psuedo-random

long int prng(long int x) {  //random number generator; call with 1 <= x <=M-1
 x = (x >> 16) + ((x << 15) & M)  - (x >> 21) - ((x << 10) & M);
 if (x < 0) x += M;
 return x;
}

void statredon()
{
  PORTB |=1<<PB0;
  PORTB &= ~(1<<PB1);
}

void statgreenon()
{
  PORTB |=1<<PB1;
  PORTB &= ~(1<<PB0);
}

void blueon()
{
  PORTD |=1<<PD1;
}

void greenon()
{
  PORTA |=1<<PA1;
}

void redon()
{
  PORTA |=1<<PA0;
}

void whiteon()
{
  redon(); greenon(); blueon();
}

void alloff()
{
  PORTD &= ~(1<<PD1); PORTA &= ~(1<<PA1); PORTA &= ~(1<<PA0);
}

int main()
{
  
  // RGB LED outputs
  DDRD |=1<<PD1; DDRA |=1<<PA0; DDRA |= 1<<PA1;
  // BASIS LED outputs
  DDRB |=1<<PB0; DDRB |=1<<PB1;
  // Basis change switch
  DDRD |=0<<PD5;
  // Up, Random and Down switch
  DDRD |=0<<PD2; DDRD |=0<<PD3; DDRD |=0<<PD4;

  // Pull up input switches, turn off LEDs
  PORTD = 0b00111100;
  PORTA = 0x00;
  PORTB = 0x00;

  boolarray = 0x00;
  curtime = 0; lastswitchon = 0; lastalloff = 0;
  TCCR1B |= 1<<CS10;    // Start timer

  maxnum = 0x3FFFFFFF;
  randnum = prng(curtime);

  while(1)
    {
      curtime += TCNT1; TCNT1 = 0;
      
      // Check basis switch
      if (bit_is_set(PIND,5))
	{
	  boolarray |= 0x01;  // basis is 1
	  statredon();
	}
      else
	{
	  boolarray &= 0xFE;  // basis is 0
	  statgreenon();
	}

      if((bit_is_clear(boolarray,1))&&((curtime-lastalloff)>cooldown))
	// switchstate == FALSE && LEDs have cooled down
	{
	  // check Up switch
	  if (bit_is_clear(PIND,2))
	    {
	      lastswitchon = curtime;
	      boolarray |= 0x02;      // switchstate = TRUE
	      if (boolarray & 0x01)
		redon();
	      else
		greenon(); 
	    }
	  // check Random switch
	  else if (bit_is_clear(PIND,3)) 
	    {
	      lastswitchon = curtime;
	      boolarray |= 0x02;      // switchstate = TRUE
	      randnum = prng(curtime);
	      if (boolarray & 0x01)
		{
		  if (randnum > maxnum)
		    blueon();
		  else
		    redon();
		}
	      else
		{
		  if (randnum > maxnum)
		    whiteon();
		  else
		    greenon();
		}
	    }
	  // check Down switch
	  else if (bit_is_clear(PIND,4))
	    {
	      lastswitchon = curtime;
	      boolarray |= 0x02;      // switchstate = TRUE
	      if (boolarray & 0x01)
		blueon();
	      else
		whiteon(); 
	    }
	}
      if ((boolarray & 0x02)&&((curtime - lastswitchon) > ontime))
	// switchstate == TRUE && LEDs have been on long enough
	{
	  lastalloff = curtime;
	  boolarray &= 0b11111101;   // switch = FALSE
	  alloff();
	}
    }
  
}
