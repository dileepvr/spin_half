# This board design, as well as course teaching materials and avr-gcc
# code are being released under the GPL_v3 license. All future versions
# of GPL automatically apply.

# Written by Dileep V. Reddy on March 6th, 2014.

CC=avr-gcc
CFLAGS=-Wall -Os -DF_CPU=$(F_CPU) -mmcu=$(MCU)
MCU=attiny2313
F_CPU=1000000UL

OBJCOPY=avr-objcopy
BIN_FORMAT=ihex

PORT=/dev/ttyACM0
#BAUD=115200
BAUD=19200
#PROTOCOL=stk500v1
PROTOCOL=usbtiny
PART=$(MCU)
AVRDUDE=avrdude -F -V

BASENAME=2313_code

RM=rm -f

.PHONY: all
all: $(BASENAME).hex

$(BASENAME).hex: $(BASENAME).elf

$(BASENAME).elf: $(BASENAME).s

$(BASENAME).s: $(BASENAME).c

.PHONY: clean
clean:
	$(RM) $(BASENAME).elf $(BASENAME).hex $(BASENAME).s

.PHONY: upload
upload: $(BASENAME).hex
	sudo $(AVRDUDE) -c $(PROTOCOL) -p $(PART) -U flash:w:$<

%.elf: %.s ; $(CC) $(CFLAGS) -s -o $@ $<

%.s: %.c ; $(CC) $(CFLAGS) -S -o $@ $<

%.hex: %.elf ; $(OBJCOPY) -O $(BIN_FORMAT) -R .eeprom $< $@
