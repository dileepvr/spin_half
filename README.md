This board design, as well as course teaching materials and avr-gcc
code are being released under the GPL_v3 license. All future versions
of GPL automatically apply.

Written by Dileep V. Reddy on March 6th, 2014.

This simple board is meant to aid in teaching Quantum Key Distribution
via polarized photons (BB84 protocol) using an interactive in-class
activity. This was first designed for and deployed at a pilot course
titled "Quantum Mechanics for Everyone" under the aegis of the Science
Literacy Program (SPL) at the University of Oregon.

The board PCB layout files are zipped in the gerber folder, and may be
uploaded to any online PCB printing service (such as OSHPark).  The
code meant to run on the attiny2313 microcontroller is presend inside
the avr_code folder, along with a Makefile. Use avr-gcc and avrdude to
compile and upload to the board.

Refer to files "spin_half_doc.pdf" and "qkd_handout.pdf" for more
information.