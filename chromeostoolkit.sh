#!/bin/bash

# Author: misterfonka
# Purpose: crOS Utility Script filled with useful utilities for ChromeOS.

# Sources the functions from the other file
source functions.sh

# Case statement to try and find the users model name
# Note: this case statement was taken from MrChromeboxes source code.
case "${HWID}" in
	AKALI*)                 _x='Acer Chromebook 13 / Spin 13' ; device="nami";;
	AKEMI*)                 _x='Lenovo Ideapad Flex 5 Chromebook' ;;
	ALEENA*)                _x='Acer Chromebook 315' ;;
	AMPTON*)                _x='Asus Chromebook Flip C214/C234' ;;
	ANAHERA*)               _x='HP Elite c640 14 inch G3 Chromebook'; device="anahera" ;;
	APELE*)                 _x='Asus Chromebook CX1101CMA' ; device="apel";;
	APEL*)                  _x='Asus Chromebook Flip C204' ;;
	ARCADA*)                _x='Dell Latitude 5300' ; device="sarien";;
	ASTRONAUT*)             _x='Acer Chromebook 11 (C732*)' ;;
	ASUKA*)                 _x='Dell Chromebook 13 (3380)' ;;
	ATLAS*)                 _x='Google Pixelbook Go' ;;
	AURON_PAINE*)           _x='Acer Chromebook 11 (C740)' ;;
	AURON_YUNA*)            _x='Acer Chromebook 15 (CB5-571, C910)' ;;
	BABYMEGA*)              _x='Asus Chromebook C223NA' ;;
	BABYTIGER*)             _x='Asus Chromebook C523NA' ;;
	BANJO*)                 _x='Acer Chromebook 15 (CB3-531)' ;;
	BANON*)                 _x='Acer Chromebook 15 (CB3-532)' ;;
	BANSHEE*)               _x='Framework Chromebook' ;;
	BARD*)                  _x='Acer Chromebook 715 (CB715)' ; device="nami";;
	BARLA*)                 _x='HP Chromebook 11A G6 EE' ;;
	BERKNIP*)               _x='HP Pro c645 Chromebook Enterprise' ;;
	BLACKTIP*)              _x='White Label Chrombook' ;;
	BLEEMO*)                _x='Asus Chromebox 3 / CN65 (Core i7)' ; device="fizz";;
	BEETLEY*)               _x='Lenovo Flex 3i/3i-15 Chromebook' ;;
	BLIPPER*)               _x='Lenovo 3i-15 Chromebook	';;
	BLOOGLET*)              _x='HP Chromebook 14a';;
	BLOOGUARD*)             _x='HP Chromebook x360 14a/14b';;
	BLOOG*)                 _x='HP Chromebook x360 12b';;
	BLORB*)                 _x='Acer Chromebook 315';;
	BLUEBIRD*)              _x='Samsung Chromebook 4' ;;
	BLUE*)                  _x='Acer Chromebook 15 [CB315-1H*]' ;;
	BOBBA360*)              _x='Acer Chromebook Spin 311/511' ;;
	BOBBA*)                 _x='Acer Chromebook 311' ;;
	BOOKEM*)                _x='Lenovo 100e Chromebook Gen 3' ;;
	BOTENFLEX*)             _x='Lenovo Flex 3i/3i-11 Chromebook' ;;
	BOTEN*)                 _x='Lenovo 500e Chromebook Gen 3' ;;
	BRUCE*)                 _x='Acer Chromebook Spin 15 [CP315]' ;;
	BUDDY*)                 _x='Acer Chromebase 24' ;;
	BUGZZY*)                _x='Samsung Galaxy Chromebook 2 360' ;;
	BUTTERFLY*)             _x='HP Pavilion Chromebook 14' ;;
	CANDY*)                 _x='Dell Chromebook 11' ;;
	CAREENA*)               _x='HP Chromebook 14' ;;
	CAROLINE*)              _x='Samsung Chromebook Pro' ;;
	CASTA*)                 _x='Samsung Chromebook 4+';;
	CAVE*)                  _x='ASUS Chromebook Flip C302' ;;
	CELES*)                 _x='Samsung Chromebook 3' ;;
	CHELL*)                 _x='HP Chromebook 13 G1' ;;
	CHRONICLER*)            _x='FMV Chromebook 14F' ;;
	CLAPPER*)               _x='Lenovo N20/N20P Chromebook' ;;
	COLLIS*)                _x='Asus Chromebook Flip CX3' ;;
	COPANO*)                _x='Asus Chromebook Flip CX5 (CX5400)' ;;
	CORAL*)                 _x='Incorrectly identified APL Chromebook' ;;
	CRET360*)               _x='Dell Chromebook 3110 2-in-1' ;;
	CRET*)                  _x='Dell Chromebook 3110' ;;
	CROTA360*)              _x='Dell Latitude 5430 2-in-1 Chromebook'; device="crota360" ;;
	CROTA*)                 _x='Dell Latitude 5430 Chromebook'; device="crota" ;;
	CYAN*)                  _x='Acer Chromebook R11 (C738T)' ;;
	DELBIN*)                _x='ASUS Chromebook Flip CX55/CX5500/C536' ;;
	DIRINBOZ*)              _x='HP Chromebook 14a' ;;
	DOOD*)                  _x='NEC Chromebook Y2';;
	DOOLY*)                 _x='HP Chromebase 21.5' ;;
	DORP*)                  _x='HP Chromebook 14 G6';;
	DRAGONAIR*)             _x='HP Chromebook x360 14c' ;;
	DRALLION*)              _x='Dell Latitude 7410 Chromebook Enterprise' ; device="drallion";;
	DRATINI*)               _x='HP Pro c640 Chromebook' ;;
	DRAWCIA*)               _x='HP Chromebook x360 11 G4 EE' ;;
	DRAWLAT*)               _x='HP Chromebook 11 G9 EE' ;;
	DRAWMAN*)               _x='HP Chromebook 14 G7' ;;
	DRAWPER*)               _x='HP Fortis 14 G10 Chromebook' ;;
	DROBIT*)                _x='ASUS Chromebook CX9 (CX9400)' ;;
	DROID*)                 _x='Acer Chromebook 314';;
	DUFFY*)                 _x='ASUS Chromebox 4' ;;
	EDGAR*)                 _x='Acer Chromebook 14 (CB3-431)' ;;
	EKKO*)                  _x='Acer Chromebook 714 (CB714)' ; device="nami";;
	ELDRID*)                _x='HP Chromebook x360 14c' ;;
	ELECTRO*)               _x='Acer Chromebook Spin 11 (R751T)' ;;
	ELEMI*)                 _x='HP Pro c640 G2 Chromebook' ;;
	ENGUARDE_???-???-??A*)  _x='CTL N6 Education Chromebook' ;;
	ENGUARDE_???-???-??B*)  _x='M&A Chromebook' ;;
	ENGUARDE_???-???-??C*)  _x='Senkatel C1101 Chromebook' ;;
	ENGUARDE_???-???-??D*)  _x='Edxis Education Chromebook' ;;
	ENGUARDE_???-???-??E*)  _x='Lenovo N21 Chromebook' ;;
	ENGUARDE_???-???-??F*)  _x='RGS Education Chromebook' ;;
	ENGUARDE_???-???-??G*)  _x='Crambo Chromebook' ;;
	ENGUARDE_???-???-??H*)  _x='True IDC Chromebook' ;;
	ENGUARDE_???-???-??I*)  _x='Videonet Chromebook' ;;
	ENGUARDE_???-???-??J*)  _x='eduGear Chromebook R' ;;
	ENGUARDE_???-???-??K*)  _x='ASI Chromebook' ;;
	ENGUARDE*)              _x='(multiple device matches)' ;;
	EPAULETTE*)             _x='UNK Acer Chromebook ' ;;
	EVE*)                   _x='Google Pixelbook' ;;
	EXCELSIOR-URAR*)        _x='Asus Google Meet kit (KBL)'; device="fizz" ;;
	EZKINIL*)               _x='Acer Chromebook Spin 514' ;;
	FAFFY*)                 _x='ASUS Fanless Chromebox' ;;
	FALCO*)                 _x='HP Chromebook 14' ;;
	FELWINTER*)             _x='ASUS Chromebook Flip CX5(CX5601)'; device="felwinter" ;;
	FIZZ)                   _x='TBD KBL Chromebox' ;;
	FLEEX*)                 _x='Dell Chromebook 3100';;
	FOOB*)                  _x='CTL Chromebook VX11/VT11T';;
	GALITH360*)             _x='ASUS Chromebook CX1500FKA' ;;
	GALITH*)                _x='ASUS Chromebook CX1500CKA' ;;
	GALLOP*)                _x='ASUS Chromebook CX1700CKA' ;;
	GALNAT360*)             _x='ASUS Chromebook Flip CX1102' ;;
	GALNAT*)                _x='ASUS Chromebook CX1102' ;;
	GALTIC360*)             _x='ASUS Chromebook CX1400FKA' ;;
	GALTIC*)                _x='ASUS Chromebook CX1' ;;
	GANDOF*)                _x='Toshiba Chromebook 2 (2015) CB30/CB35' ;;
	GARFOUR*)               _x='CTL Chromebook NL81/NL81T';;
	GARG360*)               _x='CTL Chromebook NL71T/TW/TWB';;
	GARG*)                  _x='CTL Chromebook NL71/CT/LTE';;
	GLIMMER*)               _x='Lenovo ThinkPad 11e/Yoga Chromebook' ;;
	GLK360*)                _x='Acer Chromebook Spin 311';;
	GLK*)                   _x='Acer Chromebook 311';;
	GNAWTY*)                _x='Acer Chromebook 11 (CB3-111/131,C730/C730E/C735)' ;;
	GRABBITER*)             _x='Dell Chromebook 3100 2-in-1';;
	GUADO*)                 _x='ASUS Chromebox 2 / CN62' ;;
	HELIOS*)                _x='ASUS Chromebook Flip C436FA' ;;
	HELI*)                  _x='Haier Chromebook G2' ;;
	JAX*)                   _x='AOpen Chromebox Commercial 2' ; device="fizz";;
	JINLON*)                _x='HP Elite c1030 Chromebook / HP Chromebook x360 13c';;
	KAISA*)                 _x='Acer Chromebox CXI4' ;;
	KANO*)                  _x='Acer Chromebook Spin 714 [CP714-1WN]'; device="kano" ;;
	KARMA*)                 _x='Acer Chromebase 24I2' ;;
	KASUMI*)                _x='Acer Chromebook 311' ; device="kasumi";;
	KEFKA*)                 _x='Dell Chromebook 11 (3180,3189)' ;;
	KENCH*)                 _x='HP Chromebox G2' ; device="fizz";;
	KINDRED*)               _x='Acer Chromebook 712 (C871)' ;;
	KIP*)                   _x='HP Chromebook 11 G3/G4, 14 G4' ;;
	KLED*)                  _x='Acer Chromebook Spin 713 (CP713-2W)' ;;
	KOHAKU*)                _x='Samsung Galaxy Chromebook' ;;
	KRACKO360-BLXA*)        _x='CTL Chromebook NL72T' ;;
	KRACKO360*)             _x='LG Chromebook 11TC50Q/11TQ50Q' ;;
	KRACKO*)                _x='CTL Chromebook NL72' ;;
	LANDIA*)                _x='HP Chromebook x360 14a' ;;
	LANDRID*)               _x='HP Chromebook 15a' ;;
	LANTIS*)                _x='HP Chromebook 14a' ;;
	LARS_???-???-???-?3?*)  _x='Acer Chromebook 11 (C771, C771T)' ;;
	LARS*)                  _x='Acer Chromebook 14 for Work' ;;
	LASER14*)               _x='Lenovo Chromebook S340 / IdeaPad 3';;
	LASER*)                 _x='Lenovo Chromebook C340';;
	LAVA*)                  _x='Acer Chromebook Spin 11 CP311' ;;
	LEONA*)                 _x='Asus Chromebook C425TA' ;;
	LEON*)                  _x='Toshiba CB30/CB35 Chromebook' ;;
	LIARA*)                 _x='Lenovo 14e Chromebook' ;;
	LIBREM_13_V1)           _x='Purism Librem 13 v1' ; device="librem13v1";;
	LIBREM13V1)             _x='Purism Librem 13 v1' ;;
	LIBREM_13_V2)           _x='Purism Librem 13 v2' ; device="librem13v2";;
	LIBREM13V2)             _x='Purism Librem 13 v2' ;;
	LIBREM_13_V3)           _x='Purism Librem 13 v3' ; device="librem13v2";;
	LIBREM13V3)             _x='Purism Librem 13 v3' ;;
	LIBREM_13_V4)           _x='Purism Librem 13 v4' ; device="librem13v4";;
	LIBREM13V4)             _x='Purism Librem 13 v4' ;;
	LIBREM_14)              _x='Purism Librem 14' ; device="librem_14";;
	LIBREM_15_V2)           _x='Purism Librem 15 v2' ; device="librem15v2";;
	LIBREM15V2)             _x='Purism Librem 15 v2' ;;
	LIBREM_15_V3)           _x='Purism Librem 15 v3' ; device="librem15v3";;
	LIBREM15V3)             _x='Purism Librem 15 v3' ;;
	LIBREM_15_V4)           _x='Purism Librem 15 v4' ; device="librem15v4";;
	LIBREM15V4)             _x='Purism Librem 15 v4' ;;
	LIBREM_MINI)            _x='Purism Librem Mini' ; device="librem_mini";;
	LIBREM_MINI_V2)         _x='Purism Librem Mini v2' ; device="librem_mini_v2";;
	LICK*)                  _x='Lenovo Ideapad 3 Chromebook' ;;
	LILLIPUP*)              _x='Lenovo IdeaPad Flex 5i Chromebook' ; device="lillipup";;
	LINDAR-EDFZ*)           _x='Lenovo 5i-14 Chromebook' ; device="lindar";;
	LINDAR-LCDF*)           _x='Lenovo Slim 5 Chromebook' ; device="lindar";;
	LINDAR*)                _x='|Lenovo Slim 5/5i/Flex 5i Chromebook' ; device="lindar";;
	LINK*)                  _x='Google Chromebook Pixel 2013' ;;
	LULU*)                  _x='Dell Chromebook 13 (7310)' ;;
	MADOO*)                 _x='HP Chromebook x360 14b' ;;
	MAGISTER*)              _x='Acer Chromebook Spin 314' ;;
	MAGLET*)                _x='Acer Chromebook 512 (C852)' ;;
	MAGLIA*)                _x='Acer Chromebook Spin 512' ;;
	MAGLITH*)               _x='Acer Chromebook 511' ;;
	MAGMA*)                 _x='Acer Chromebook 315' ;;
	MAGNETO-BWYB*)          _x='Acer Chromebook 314' ;;
	MAGNETO-SGGB*)          _x='Packard Bell Chromebook 314' ;;
	MAGOLOR*)               _x='Acer Chromebook Spin 511 [R753T]' ;;
	MAGPIE*)                _x='Acer Chromebook 317 [CB317-1H]' ;;
	METAKNIGHT*)            _x='NEC Chromebook Y3' ;;
	LUMPY*)                 _x='Samsung Chromebook Series 5 550' ;;
	MCCLOUD*)               _x='Acer Chromebox CXI' ;;
	MEEP*)                  _x='HP Chromebook x360 11 G2 EE' ;;
	MIMROCK*)               _x='HP Chromebook 11 G7 EE' ;;
	MONROE*)                _x='LG Chromebase' ;;
	MORPHIUS*)              _x='Lenovo ThinkPad C13 Yoga Chromebook' ;;
	NAUTILUS*)              _x='Samsung Chromebook Plus V2' ;;
	NASHER360*)             _x='Dell Chromebook 11 2-in-1 5190' ;;
	NASHER*)                _x='Dell Chromebook 11 5190' ;;
	NIGHTFURY*)             _x='Samsung Galaxy Chromebook 2' ;;
	NINJA*)                 _x='AOpen Chromebox Commercial' ;;
	NOCTURNE*)              _x='Google Pixel Slate' ;;
	NOIBAT*)                _x='HP Chromebox G3' ;;
	NOSPIKE*)               _x='ASUS Chromebook C424';;
	ORCO*)                  _x='Lenovo Ideapad 100S Chromebook' ;;
	ORBATRIX*)              _x='Dell Chromebook 3400';;
	OSIRIS*)                _x='Acer Chromebook 516 GE [CBG516-1H]'; device="osiris" ;;
	PAINE*)                 _x='Acer Chromebook 11 (C740)' ; device="auron_paine";;
	PANTHEON*)              _x='Lenovo Yoga Chromebook C630'  ; device="nami";;
	PANTHER*)               _x='ASUS Chromebox CN60' ;;
	PARROT*)                _x='Acer C7/C710 Chromebook' ;;
	PASARA*)                _x='Gateway Chromebook 15' ;;
	PEPPY*)                 _x='Acer C720/C720P Chromebook' ;;
	PHASER360*)             _x='Lenovo 300e/500e Chromebook 2nd Gen' ;;
	PHASER*)                _x='Lenovo 100e Chromebook 2nd Gen' ;;
	PIRETTE-LLJI*)          _x='Axioo Chromebook P11' ;;
	PIRETTE-NGVJ*)          _x='SPC Chromebook Z1 Mini' ;;
	PIRETTE-RVKU*)          _x='CTL Chromebook PX11E' ;;
	PIRETTE-UBKE*)          _x='Zyrex Chromebook M432-2' ;;
	PIRIKA-BMAD*)           _x='CTL Chromebook PX14E/PX14EX/PX14EXT' ;;
	PIRIKA-NPXS*)           _x='Axioo Chromebook P14' ;;
	PIRIKA-XAJY*)           _x='Gateway Chromebook 14' ;;
	PRIMUS*)                _x='Lenovo ThinkPad C14 Gen 1 Chromebook'; device="primus" ;;
	PYRO*)                  _x='Lenovo Thinkpad 11e/Yoga Chromebook (G4)' ;;
	QUAWKS*)                _x='ASUS Chromebook C300' ;;
	RABBID*)                _x='ASUS Chromebook C423' ;;
	RAMMUS*)                _x='Asus Chromebook C425/C433/C434' ;;
	REDRIX*)                _x='HP Elite Dragonfly Chromebook'; device="redrix" ;;
	REEF_???-C*)            _x='ASUS Chromebook C213NA' ;;
	REEF*)                  _x='Acer Chromebook Spin 11 (R751T)' ; device="electro";;
	REKS_???-???-???-B*)    _x='2016|Lenovo N42 Chromebook' ;;
	REKS_???-???-???-C*)    _x='2017|Lenovo N23 Chromebook (Touch)';;
	REKS_???-???-???-D*)    _x='2017|Lenovo N23 Chromebook' ;;
	REKS_???-???-???-*)     _x='2016|Lenovo N22 Chromebook' ;;
	REKS*)                  _x='2016|(unknown REKS)' ;;
	RELM_???-B*)            _x='CTL NL61 Chromebook' ;;
	RELM_???-C*)            _x='Edxis Education Chromebook' ;;
	RELM_???-F*)            _x='Mecer V2 Chromebook' ;;
	RELM_???-G*)            _x='HP Chromebook 11 G5 EE' ;;
	RELM_???-H*)            _x='Acer Chromebook 11 N7 (C731)' ;;
	RELM_???-Z*)            _x='Quanta OEM Chromebook' ;;
	RELM*)                  _x='(unknown RELM)' ;;
	RIKKU*)                 _x='Acer Chromebox CXI2' ;;
	ROBO360*)               _x='Lenovo 500e Chromebook' ;;
	ROBO*)                  _x='Lenovo 100e Chromebook' ;;
	SAMUS*)                 _x='Google Chromebook Pixel 2015' ;;
	SAND*)                  _x='Acer Chromebook 15 (CB515-1HT)' ;;
	SANTA*)                 _x='Acer Chromebook 11 (CB311-8H)' ;;
	SARIEN*)                _x='Dell Latitude 5400' ;;
	SASUKE*)                _x='Samsung Galaxy Chromebook Go' ;;
	SENTRY*)                _x='Lenovo Thinkpad 13 Chromebook' ;;
	SETZER*)                _x='HP Chromebook 11 G5' ;;
	SHYVANA*)               _x='Asus Chromebook Flip C433/C434' ;;
	SION*)                  _x='Acer Chromebox CXI3' ; device="fizz";;
	SNAPPY_???-A*)          _x='HP Chromebook x360 11 G1 EE' ;;
	SNAPPY_???-B*)          _x='HP Chromebook 11 G6 EE' ;;
	SNAPPY_???-C*)          _x='HP Chromebook 14 G5' ;;
	SNAPPY*)                _x='HP Chromebook x360 11 G1/11 G6/14 G5' ;;
	SPARKY360*)             _x='Acer Chromebook Spin 512 (R851TN)' ;;
	SPARKY*)                _x='Acer Chromebook 512 (C851/C851T)' ;;
	SONA*)                  _x='HP Chromebook x360 14' ; device="nami";;
	SORAKA*)                _x='HP Chromebook x2' ;;
	SQUAWKS*)               _x='ASUS Chromebook C200' ;;
	STORO360*)              _x='ASUS Chromebook Flip CR1100FKA' ;;
	STORO*)                 _x='ASUS Chromebook CR1100CKA' ;;
	STOUT*)                 _x='Lenovo Thinkpad X131e Chromebook' ;;
	STUMPY*)                _x='Samsung Chromebox Series 3' ;;
	SUMO*)                  _x='AOpen Chromebase Commercial' ;;
	SWANKY*)                _x='Toshiba Chromebook 2 (2014) CB30/CB35' ;;
	SYNDRA*)                _x='HP Chromebook 15 G1' ; device="nami";;
	TAEKO*)                 _x='Lenovo Lenovo Flex 5i Chromebook 14"'; device="taeko" ;;
	TANIKS*)                _x='Lenovo IdeaPad Gaming Chromebook 16'; device="taniks" ;;
	TEEMO*)                 _x='Asus Chromebox 3 / CN65' ; device="fizz";;
	TERRA_???-???-???-A*)   _x='ASUS Chromebook C202SA' ;;
	TERRA_???-???-???-B*)   _x='ASUS Chromebook C300SA/C301SA' ;;
	TERRA*)                 _x='ASUS Chromebook C202SA, C300SA/C301SA' ; device="terra";;
	TIDUS*)                 _x='Lenovo ThinkCentre Chromebox' ;;
	TREEYA360*)             _x='Lenovo 300e Chromebook 2nd Gen AMD' ; device="treeya";;
	TREEYA*)                _x='Lenovo 100e Chromebook 2nd Gen AMD' ; device="treeya";;
	TRICKY*)                _x='Dell Chromebox 3010' ;;
	ULTIMA*)                _x='Lenovo ThinkPad 11e/Yoga Chromebook (G3)' ;;
	VAYNE*)                 _x='Dell Inspiron Chromebook 14 (7486)'  ; device="nami";;
	VILBOZ360*)             _x='Lenovo 300e Chromebook Gen 3'; device="vilboz" ;;
	VILBOZ14*)              _x='Lenovo 14e Chromebook Gen 2'; device="vilboz" ;;
	VILBOZ*)                _x='Lenovo 100e Chromebook Gen 3'; device="vilboz" ;;
	VOEMA*)                 _x='Acer Chromebook Spin 514 (CB514-2H)' ;;
	VOLET*)                 _x='Acer Chromebook 515 (CB515-1W, CB515-1WT)' ;;
	VOLMAR*)                _x='Acer Chromebook Vero 514'; device="volmar" ;;
	VOLTA*)                 _x='Acer Chromebook 514 (CB514-1W, CB514-1WT)' ;;
	VORTICON*)              _x='HP Chromebook 11 G8 EE' ;;
	VORTININJA*)            _x='HP Chromebook x360 11 G3 EE' ;;
	VOXEL*)                 _x='Acer Chromebook Spin 713 (CP713-3W)' ;;
	WHITETIP*)              _x='CTL Chromebook J41/J41T' ;;
	WINKY*)                 _x='Samsung Chromebook 2 (XE500C12)' ;;
	WIZPIG_???-???-??A*)    _x='CTL Chromebook J5' ;;
	WIZPIG_???-???-??B*)    _x='Edugear CMT Chromebook' ;;
	WIZPIG_???-???-??C*)    _x='Haier Convertible Chromebook 11 C' ;;
	WIZPIG_???-???-??D*)    _x='Viglen Chromebook 360' ;;
	WIZPIG_???-???-??G*)    _x='Prowise ProLine Chromebook' ;;
	WIZPIG_???-???-??H*)    _x='PCMerge Chromebook PCM-116T-432B' ;;
	WIZPIG_???-???-??I*)    _x='Multilaser M11C Chromebook' ;;
	WIZPIG*)                _x='(unknown WIZPIG)' ;;
	WOLF*)                  _x='Dell Chromebook 11' ;;
	WOOMAX*)                _x='ASUS Chromebook Flip CM5' ;;
	WUKONG_???-???-???-??C*) _x='ViewSonic NMP660 Chromebox' ; device="fizz";;
	WUKONG*)                _x='CTL Chromebox CBx1' ; device="fizz";;
	WYVERN*)                _x='CTL Chromebox CBx2' ;;
	YUNA*)                  _x='Acer Chromebook 15 (CB5-571, C910)' ; device="auron_yuna";;
	ZAKO*)                  _x='HP Chromebox CB1' ;;
	ZAVALA*)                _x='Acer Chromebook Vero 712'; device="zavala" ;;
	*)                      _x='ERROR: unknown or unidentifiable device' ;; 
esac

# Clear out the previous terminal output and display the menu
clear
echo_red "ChromeOS Utility Script"
echo "misterfonka <misterfonka@gmail.com>"
echo_blue "*************************************"
echo "$(echo_blue "**") $(echo "FW WP: $(FWWPStatus)")"
echo "$(echo_blue "**") $(echo "FW Ver: $FWVERSION")"
echo "$(echo_blue "**") $(echo "Device Model: $_x")"
echo "$(echo_blue "**") $(echo "HWID: $HWID")"
echo "$(echo_blue "**") $(echo "Board Name: $BOARD")"
echo "$(echo_blue "**") $(echo "GBB Flags value: $view_gbb")"
echo_blue "*************************************"
echo "$(echo_blue "** [WP]") $(echo_yellow " 1)")  Disable Autoupdates"
echo "$(echo_blue "** [WP]") $(echo_yellow " 2)")  Re-Enable Autoupdates"
echo "$(echo_blue "** [WP]") $(echo_yellow " 3)")  Disable RootFS verification"
echo "$(echo_blue "**") $(echo_yellow "      4)")  Edit VPD"
echo "$(echo_blue "** [WP]" ) $(echo_yellow " 5)")  Edit GBB flags"
echo "$(echo_blue "**") $(echo_yellow "      6)")  Unblock Devmode"
echo "$(echo_blue "**") $(echo_yellow "      7)")  FREDestroyer"
echo "$(echo_blue "**") $(echo_yellow "      8)")  Reset System"
echo "$(echo_blue "**") $(echo_yellow "      9)") System Info"
echo "$(echo_blue "** [WP?]") $(echo_yellow "10)") Run MrChromeboxes Firmware Utility"
echo "$(echo_blue "**") $(echo_yellow "      11)") Mac Address Randomizer"
echo "$(echo_blue "**") $(echo_yellow "      12)") Dump BIOS/Firmware"
echo "$(echo_blue "**") $(echo_yellow "      R)")  Reboot"
echo "$(echo_blue "**") $(echo_yellow "      Q)")  Quit"
read -p "Select the number corresponding to what you want to do: " user_choice

# Do whatever number the user put in
if [[ "$user_choice" = "1" ]]; then
	disable_autoupdates

elif [[ "$user_choice" = "2" ]]; then
	reenableautoupdates

elif [[ "$user_choice" = "3" ]]; then
	remove_rootfs_verification

elif [[ "$user_choice" = "4" ]]; then
	edit_vpd

elif [[ "$user_choice" = "5" ]]; then
	edit_gbb
                    
elif [[ "$user_choice" = "6" ]]; then
    unblock_devmode

elif [[ "$user_choice" = "7" ]]; then
	fre_destroyer

elif [[ "$user_choice" = "8" ]]; then
	reset_system

elif [[ "$user_choice" = "9" ]]; then
	systeminfo

elif [[ "$user_choice" = "10" ]]; then
	# All credits go to MrChromebox for this utility.
    firmwareutil

elif [[ "$user_choice" = "11" ]]; then
	# All credits go to Mercury Workshop for this utility.
    macaddressrandomizer

elif [[ "$user_choice" = "12" ]]; then
	dumpbios

elif [[ "$user_choice" =~ [Rr] ]]; then
	reboot

elif [[ "$user_choice" =~ [Qq] ]]; then
	exit 0

fi
