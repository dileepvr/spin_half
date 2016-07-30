PCBNEW-LibModule-V1  Mon 10 Feb 2014 10:38:39 AM PST
# encoding utf-8
Units mm
$INDEX
AVR-ISP-6-DR
CR2032
RGB_LED
SM0603_DR
SW_SPDT
SW_SPDT_DR
SW_TACT
$EndINDEX
$MODULE AVR-ISP-6-DR
Po 0 0 0 15 52F7EFDE 00000000 ~~
Li AVR-ISP-6-DR
Sc 0
AR 
Op 0 0 0
T0 0 -6.35 1 1 0 0.15 N V 21 N "AVR-ISP-6-DR"
T1 0 6.35 1 1 0 0.15 N V 21 N "PROG**"
DS -3.81 -2.54 3.81 -2.54 0.15 21
DS 3.81 -2.54 3.81 2.54 0.15 21
DS 3.81 2.54 1.27 2.54 0.15 21
DS 1.27 2.54 1.27 3.81 0.15 21
DS 1.27 3.81 5.08 3.81 0.15 21
DS 5.08 3.81 5.08 -3.81 0.15 21
DS 5.08 -3.81 -5.08 -3.81 0.15 21
DS -5.08 -3.81 -5.08 3.81 0.15 21
DS -5.08 3.81 -1.27 3.81 0.15 21
DS -1.27 3.81 -1.27 2.54 0.15 21
DS -3.81 -2.54 -3.81 2.54 0.15 21
DS -3.81 2.54 -1.27 2.54 0.15 21
$PAD
Sh "3" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 1.27
$EndPAD
$PAD
Sh "4" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 -1.27
$EndPAD
$PAD
Sh "2" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2.54 -1.27
$EndPAD
$PAD
Sh "1" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2.54 1.27
$EndPAD
$PAD
Sh "5" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2.54 1.27
$EndPAD
$PAD
Sh "6" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2.54 -1.27
$EndPAD
$EndMODULE AVR-ISP-6-DR
$MODULE CR2032
Po 0 0 0 15 52F7EAB0 00000000 ~~
Li CR2032
Sc 0
AR 
Op 0 0 0
T0 0 -5.08 1 1 0 0.15 N V 21 N "CR2032"
T1 0 5.08 1 1 0 0.15 N V 21 N "BAT**"
$PAD
Sh "2" R 5.5 5.5 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "1" R 5.5 5.5 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po -12.7 0
$EndPAD
$PAD
Sh "1" R 5.5 5.5 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 12.7 0
$EndPAD
$EndMODULE CR2032
$MODULE RGB_LED
Po 0 0 0 15 52F7F751 00000000 ~~
Li RGB_LED
Sc 0
AR 
Op 0 0 0
T0 0 -3.81 1 1 0 0.15 N V 21 N "RGB_LED"
T1 0 3.048 1 1 0 0.15 N V 21 N "VAL**"
$PAD
Sh "1" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -3.81 0
$EndPAD
$PAD
Sh "2" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -1.27 0
$EndPAD
$PAD
Sh "3" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 1.27 0
$EndPAD
$PAD
Sh "4" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 3.81 0
$EndPAD
$EndMODULE RGB_LED
$MODULE SM0603_DR
Po 0 0 0 15 52F91C8B 00000000 ~~
Li SM0603_DR
Sc 0
AR 
Op 0 0 0
At SMD
T0 0 -1.27 0.508 0.4572 0 0.1143 N V 21 N "SM0603"
T1 0 1.27 0.508 0.4572 0 0.1143 N I 21 N "Val**"
T2 1.9304 -0.0508 1 1 0 0.15 N V 21 N "-"
T2 -1.8796 -0.0508 1 1 0 0.15 N V 21 N "+"
DS -1.143 -0.635 1.143 -0.635 0.127 21
DS 1.143 -0.635 1.143 0.635 0.127 21
DS 1.143 0.635 -1.143 0.635 0.127 21
DS -1.143 0.635 -1.143 -0.635 0.127 21
$PAD
Sh "1" R 0.635 1.143 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po -0.762 0
$EndPAD
$PAD
Sh "2" R 0.635 1.143 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 0.762 0
$EndPAD
$SHAPE3D
Na "smd\\resistors\\R0603.wrl"
Sc 0.5 0.5 0.5
Of 0 0 0.001
Ro 0 0 0
$EndSHAPE3D
$EndMODULE SM0603_DR
$MODULE SW_SPDT
Po 0 0 0 15 52F7F864 00000000 ~~
Li SW_SPDT
Sc 0
AR 
Op 0 0 0
T0 0 -2.54 1 1 0 0.15 N V 21 N "SW_SPDT"
T1 0 2.794 1 1 0 0.15 N V 21 N "SW**"
$PAD
Sh "2" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "1" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2.54 0
$EndPAD
$PAD
Sh "2" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2.54 0
$EndPAD
$EndMODULE SW_SPDT
$MODULE SW_SPDT_DR
Po 0 0 0 15 52F7F864 00000000 ~~
Li SW_SPDT_DR
Sc 0
AR 
Op 0 0 0
T0 0 -2.54 1 1 0 0.15 N V 21 N "SW_SPDT"
T1 0 2.794 1 1 0 0.15 N V 21 N "SW**"
$PAD
Sh "2" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "1" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -2.54 0
$EndPAD
$PAD
Sh "2" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 2.54 0
$EndPAD
$EndMODULE SW_SPDT_DR
$MODULE SW_TACT
Po 0 0 0 15 52F7F60C 00000000 ~~
Li SW_TACT
Sc 0
AR 
Op 0 0 0
T0 0 -5.08 1 1 0 0.15 N V 21 N "SW_TACT"
T1 0 5.08 1 1 0 0.15 N V 21 N "SW**"
DS 0 0.762 0 2.286 0.15 21
DS 0 -2.286 0 -1.016 0.15 21
DS 0 -1.016 1.016 0.508 0.15 21
DS -2.032 2.286 2.032 2.286 0.15 21
DS -2.032 -2.286 2.032 -2.286 0.15 21
$PAD
Sh "1" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -3.302 -2.286
$EndPAD
$PAD
Sh "1" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 3.302 -2.286
$EndPAD
$PAD
Sh "2" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 3.302 2.286
$EndPAD
$PAD
Sh "2" C 1.75 1.75 0 0 0
Dr 1.01 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -3.302 2.286
$EndPAD
$EndMODULE SW_TACT
$EndLIBRARY