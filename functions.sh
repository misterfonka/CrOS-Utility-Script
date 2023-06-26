#!/bin/bash

# Author: misterfonka
# Purpose: Functions for the main Utility Script.

case "${_hwid}" in
	AKALI*)                 _x='KBL|Acer Chromebook 13 / Spin 13' ; device="nami";;
	AKEMI*)                 _x='CML|Lenovo Ideapad Flex 5 Chromebook' ;;
	ALEENA*)                _x='STR|Acer Chromebook 315' ;;
	AMPTON*)                _x='GLK|Asus Chromebook Flip C214/C234' ;;
	ANAHERA*)               _x='ADL|HP Elite c640 14 inch G3 Chromebook'; device="anahera" ;;
	APELE*)                 _x='GLK|Asus Chromebook CX1101CMA' ; device="apel";;
	APEL*)                  _x='GLK|Asus Chromebook Flip C204' ;;
	ARCADA*)                _x='WHL|Dell Latitude 5300' ; device="sarien";;
	ASTRONAUT*)             _x='APL|Acer Chromebook 11 (C732*)' ;;
	ASUKA*)                 _x='SKL|Dell Chromebook 13 (3380)' ;;
	ATLAS*)                 _x='KBL|Google Pixelbook Go' ;;
	AURON_PAINE*)           _x='BDW|Acer Chromebook 11 (C740)' ;;
	AURON_YUNA*)            _x='BDW|Acer Chromebook 15 (CB5-571, C910)' ;;
	BABYMEGA*)              _x='APL|Asus Chromebook C223NA' ;;
	BABYTIGER*)             _x='APL|Asus Chromebook C523NA' ;;
	BANJO*)                 _x='BYT|Acer Chromebook 15 (CB3-531)' ;;
	BANON*)                 _x='BSW|Acer Chromebook 15 (CB3-532)' ;;
	BANSHEE*)               _x='ADL|Framework Chromebook' ;;
	BARD*)                  _x='KBL|Acer Chromebook 715 (CB715)' ; device="nami";;
	BARLA*)                 _x='STR|HP Chromebook 11A G6 EE' ;;
	BERKNIP*)               _x='ZEN2|HP Pro c645 Chromebook Enterprise' ;;
	BLACKTIP*)              _x='APL|White Label Chrombook' ;;
	BLEEMO*)                _x='KBL|Asus Chromebox 3 / CN65 (Core i7)' ; device="fizz";;
	BEETLEY*)               _x='JSL|Lenovo Flex 3i/3i-15 Chromebook' ;;
	BLIPPER*)               _x='JSL|Lenovo 3i-15 Chromebook	';;
	BLOOGLET*)              _x='GLK|HP Chromebook 14a';;
	BLOOGUARD*)             _x='GLK|HP Chromebook x360 14a/14b';;
	BLOOG*)                 _x='GLK|HP Chromebook x360 12b';;
	BLORB*)                 _x='GLK|Acer Chromebook 315';;
	BLUEBIRD*)              _x='GLK|Samsung Chromebook 4' ;;
	BLUE*)                  _x='APL|Acer Chromebook 15 [CB315-1H*]' ;;
	BOBBA360*)              _x='GLK|Acer Chromebook Spin 311/511' ;;
	BOBBA*)                 _x='GLK|Acer Chromebook 311' ;;
	BOOKEM*)                _x='JSL|Lenovo 100e Chromebook Gen 3' ;;
	BOTENFLEX*)             _x='JSL|Lenovo Flex 3i/3i-11 Chromebook' ;;
	BOTEN*)                 _x='JSL|Lenovo 500e Chromebook Gen 3' ;;
	BRUCE*)                 _x='APL|Acer Chromebook Spin 15 [CP315]' ;;
	BUDDY*)                 _x='BDW|Acer Chromebase 24' ;;
	BUGZZY*)                _x='JSL|Samsung Galaxy Chromebook 2 360' ;;
	BUTTERFLY*)             _x='SNB|HP Pavilion Chromebook 14' ;;
	CANDY*)                 _x='BYT|Dell Chromebook 11' ;;
	CAREENA*)               _x='STR|HP Chromebook 14' ;;
	CAROLINE*)              _x='SKL|Samsung Chromebook Pro' ;;
	CASTA*)                 _x='GLK|Samsung Chromebook 4+';;
	CAVE*)                  _x='SKL|ASUS Chromebook Flip C302' ;;
	CELES*)                 _x='BSW|Samsung Chromebook 3' ;;
	CHELL*)                 _x='SKL|HP Chromebook 13 G1' ;;
	CHRONICLER*)            _x='TGL|FMV Chromebook 14F' ;;
	CLAPPER*)               _x='BYT|Lenovo N20/N20P Chromebook' ;;
	COLLIS*)                _x='TGL|AAsus Chromebook Flip CX3' ;;
	COPANO*)                _x='TGL|Asus Chromebook Flip CX5 (CX5400)' ;;
	CORAL*)                 _x='APL|Incorrectly identified APL Chromebook' ;;
	CRET360*)               _x='JSL|Dell Chromebook 3110 2-in-1' ;;
	CRET*)                  _x='JSL|Dell Chromebook 3110' ;;
	CROTA360*)              _x='ADL|Dell Latitude 5430 2-in-1 Chromebook'; device="crota360" ;;
	CROTA*)                 _x='ADL|Dell Latitude 5430 Chromebook'; device="crota" ;;
	CYAN*)                  _x='BSW|Acer Chromebook R11 (C738T)' ;;
	DELBIN*)                _x='TGL|ASUS Chromebook Flip CX55/CX5500/C536' ;;
	DIRINBOZ*)              _x='ZEN2|HP Chromebook 14a' ;;
	DOOD*)                  _x='GLK|NEC Chromebook Y2';;
	DOOLY*)                 _x='CML|HP Chromebase 21.5' ;;
	DORP*)                  _x='GLK|HP Chromebook 14 G6';;
	DRAGONAIR*)             _x='CML|HP Chromebook x360 14c' ;;
	DRALLION*)              _x='CML|Dell Latitude 7410 Chromebook Enterprise' ; device="drallion";;
	DRATINI*)               _x='CML|HP Pro c640 Chromebook' ;;
	DRAWCIA*)               _x='JSL|HP Chromebook x360 11 G4 EE' ;;
	DRAWLAT*)               _x='JSL|HP Chromebook 11 G9 EE' ;;
	DRAWMAN*)               _x='JSL|HP Chromebook 14 G7' ;;
	DRAWPER*)               _x='JSL|HP Fortis 14 G10 Chromebook' ;;
	DROBIT*)                _x='TGL|ASUS Chromebook CX9 (CX9400)' ;;
	DROID*)                 _x='GLK|Acer Chromebook 314';;
	DUFFY*)                 _x='CML|ASUS Chromebox 4' ;;
	EDGAR*)                 _x='BSW|Acer Chromebook 14 (CB3-431)' ;;
	EKKO*)                  _x='KBL|Acer Chromebook 714 (CB714)' ; device="nami";;
	ELDRID*)                _x='TGL|HP Chromebook x360 14c' ;;
	ELECTRO*)               _x='APL|Acer Chromebook Spin 11 (R751T)' ;;
	ELEMI*)                 _x='TGL|HP Pro c640 G2 Chromebook' ;;
	ENGUARDE_???-???-??A*)  _x='BYT|CTL N6 Education Chromebook' ;;
	ENGUARDE_???-???-??B*)  _x='BYT|M&A Chromebook' ;;
	ENGUARDE_???-???-??C*)  _x='BYT|Senkatel C1101 Chromebook' ;;
	ENGUARDE_???-???-??D*)  _x='BYT|Edxis Education Chromebook' ;;
	ENGUARDE_???-???-??E*)  _x='BYT|Lenovo N21 Chromebook' ;;
	ENGUARDE_???-???-??F*)  _x='BYT|RGS Education Chromebook' ;;
	ENGUARDE_???-???-??G*)  _x='BYT|Crambo Chromebook' ;;
	ENGUARDE_???-???-??H*)  _x='BYT|True IDC Chromebook' ;;
	ENGUARDE_???-???-??I*)  _x='BYT|Videonet Chromebook' ;;
	ENGUARDE_???-???-??J*)  _x='BYT|eduGear Chromebook R' ;;
	ENGUARDE_???-???-??K*)  _x='BYT|ASI Chromebook' ;;
	ENGUARDE*)              _x='BYT|(multiple device matches)' ;;
	EPAULETTE*)             _x='APL|UNK Acer Chromebook ' ;;
	EVE*)                   _x='KBL|Google Pixelbook' ;;
	EXCELSIOR-URAR*)        _x='KBL|Asus Google Meet kit (KBL)'; device="fizz" ;;
	EZKINIL*)               _x='ZEN2|Acer Chromebook Spin 514' ;;
	FAFFY*)                 _x='CML|ASUS Fanless Chromebox' ;;
	FALCO*)                 _x='HSW|HP Chromebook 14' ;;
	FELWINTER*)             _x='ADL|ASUS Chromebook Flip CX5(CX5601)'; device="felwinter" ;;
	FIZZ)                   _x='KBL|TBD KBL Chromebox' ;;
	FLEEX*)                 _x='GLK|Dell Chromebook 3100';;
	FOOB*)                  _x='GLK|CTL Chromebook VX11/VT11T';;
	GALITH360*)             _x='JSL|ASUS Chromebook CX1500FKA' ;;
	GALITH*)                _x='JSL|ASUS Chromebook CX1500CKA' ;;
	GALLOP*)                _x='JSL|ASUS Chromebook CX1700CKA' ;;
	GALNAT360*)             _x='JSL|ASUS Chromebook Flip CX1102' ;;
	GALNAT*)                _x='JSL|ASUS Chromebook CX1102' ;;
	GALTIC360*)             _x='JSL|ASUS Chromebook CX1400FKA' ;;
	GALTIC*)                _x='JSL|ASUS Chromebook CX1' ;;
	GANDOF*)                _x='BDW|Toshiba Chromebook 2 (2015) CB30/CB35' ;;
	GARFOUR*)               _x='GLK|CTL Chromebook NL81/NL81T';;
	GARG360*)               _x='GLK|CTL Chromebook NL71T/TW/TWB';;
	GARG*)                  _x='GLK|CTL Chromebook NL71/CT/LTE';;
	GLIMMER*)               _x='BYT|Lenovo ThinkPad 11e/Yoga Chromebook' ;;
	GLK360*)                _x='GLK|Acer Chromebook Spin 311';;
	GLK*)                   _x='GLK|Acer Chromebook 311';;
	GNAWTY*)                _x='BYT|Acer Chromebook 11 (CB3-111/131,C730/C730E/C735)' ;;
	GRABBITER*)             _x='GLK|Dell Chromebook 3100 2-in-1';;
	GUADO*)                 _x='BDW|ASUS Chromebox 2 / CN62' ;;
	HELIOS*)                _x='CML|ASUS Chromebook Flip C436FA' ;;
	HELI*)                  _x='BYT|Haier Chromebook G2' ;;
	JAX*)                   _x='KBL|AOpen Chromebox Commercial 2' ; device="fizz";;
	JINLON*)                _x='CML|HP Elite c1030 Chromebook / HP Chromebook x360 13c';;
	KAISA*)                 _x='CML|Acer Chromebox CXI4' ;;
	KANO*)                  _x='ADL|Acer Chromebook Spin 714 [CP714-1WN]'; device="kano" ;;
	KARMA*)                 _x='KBL|Acer Chromebase 24I2' ;;
	KASUMI*)                _x='STR|Acer Chromebook 311' ; device="kasumi";;
	KEFKA*)                 _x='BSW|Dell Chromebook 11 (3180,3189)' ;;
	KENCH*)                 _x='KBL|HP Chromebox G2' ; device="fizz";;
	KINDRED*)               _x='CML|Acer Chromebook 712 (C871)' ;;
	KIP*)                   _x='BYT|HP Chromebook 11 G3/G4, 14 G4' ;;
	KLED*)                  _x='CML|Acer Chromebook Spin 713 (CP713-2W)' ;;
	KOHAKU*)                _x='CML|Samsung Galaxy Chromebook' ;;
	KRACKO360-BLXA*)        _x='JSL|CTL Chromebook NL72T' ;;
	KRACKO360*)             _x='JSL|LG Chromebook 11TC50Q/11TQ50Q' ;;
	KRACKO*)                _x='JSL|CTL Chromebook NL72' ;;
	LANDIA*)                _x='JSL|HP Chromebook x360 14a' ;;
	LANDRID*)               _x='JSL|HP Chromebook 15a' ;;
	LANTIS*)                _x='JSL|HP Chromebook 14a' ;;
	LARS_???-???-???-?3?*)  _x='SKL|Acer Chromebook 11 (C771, C771T)' ;;
	LARS*)                  _x='SKL|Acer Chromebook 14 for Work' ;;
	LASER14*)               _x='GLK|Lenovo Chromebook S340 / IdeaPad 3';;
	LASER*)                 _x='GLK|Lenovo Chromebook C340';;
	LAVA*)                  _x='APL|Acer Chromebook Spin 11 CP311' ;;
	LEONA*)                 _x='KBL|Asus Chromebook C425TA' ;;
	LEON*)                  _x='HSW|Toshiba CB30/CB35 Chromebook' ;;
	LIARA*)                 _x='STR|Lenovo 14e Chromebook' ;;
	LIBREM_13_V1)           _x='BDW|Purism Librem 13 v1' ; device="librem13v1";;
	LIBREM13V1)             _x='BDW|Purism Librem 13 v1' ;;
	LIBREM_13_V2)           _x='SKL|Purism Librem 13 v2' ; device="librem13v2";;
	LIBREM13V2)             _x='SKL|Purism Librem 13 v2' ;;
	LIBREM_13_V3)           _x='SKL|Purism Librem 13 v3' ; device="librem13v2";;
	LIBREM13V3)             _x='SKL|Purism Librem 13 v3' ;;
	LIBREM_13_V4)           _x='KBL|Purism Librem 13 v4' ; device="librem13v4";;
	LIBREM13V4)             _x='KBL|Purism Librem 13 v4' ;;
	LIBREM_14)              _x='CML|Purism Librem 14' ; device="librem_14";;
	LIBREM_15_V2)           _x='BDW|Purism Librem 15 v2' ; device="librem15v2";;
	LIBREM15V2)             _x='BDW|Purism Librem 15 v2' ;;
	LIBREM_15_V3)           _x='SKL|Purism Librem 15 v3' ; device="librem15v3";;
	LIBREM15V3)             _x='SKL|Purism Librem 15 v3' ;;
	LIBREM_15_V4)           _x='KBL|Purism Librem 15 v4' ; device="librem15v4";;
	LIBREM15V4)             _x='KBL|Purism Librem 15 v4' ;;
	LIBREM_MINI)            _x='WHL|Purism Librem Mini' ; device="librem_mini";;
	LIBREM_MINI_V2)         _x='CML|Purism Librem Mini v2' ; device="librem_mini_v2";;
	LICK*)                  _x='GLK|Lenovo Ideapad 3 Chromebook' ;;
	LILLIPUP*)              _x='TGL|Lenovo IdeaPad Flex 5i Chromebook' ; device="lillipup";;
	LINDAR-EDFZ*)           _x='TGL|Lenovo 5i-14 Chromebook' ; device="lindar";;
	LINDAR-LCDF*)           _x='TGL|Lenovo Slim 5 Chromebook' ; device="lindar";;
	LINDAR*)                _x='TGL|Lenovo Slim 5/5i/Flex 5i Chromebook' ; device="lindar";;
	LINK*)                  _x='IVB|Google Chromebook Pixel 2013' ;;
	LULU*)                  _x='BDW|Dell Chromebook 13 (7310)' ;;
	MADOO*)                 _x='JSL|HP Chromebook x360 14b' ;;
	MAGISTER*)              _x='JSL|Acer Chromebook Spin 314' ;;
	MAGLET*)                _x='JSL|Acer Chromebook 512 (C852)' ;;
	MAGLIA*)                _x='JSL|Acer Chromebook Spin 512' ;;
	MAGLITH*)               _x='JSL|Acer Chromebook 511' ;;
	MAGMA*)                 _x='JSL|Acer Chromebook 315' ;;
	MAGNETO-BWYB*)          _x='JSL|Acer Chromebook 314' ;;
	MAGNETO-SGGB*)          _x='JSL|Packard Bell Chromebook 314' ;;
	MAGOLOR*)               _x='JSL|Acer Chromebook Spin 511 [R753T]' ;;
	MAGPIE*)                _x='JSL|Acer Chromebook 317 [CB317-1H]' ;;
	METAKNIGHT*)            _x='JSL|NEC Chromebook Y3' ;;
	LUMPY*)                 _x='SNB|Samsung Chromebook Series 5 550' ;;
	MCCLOUD*)               _x='HSW|Acer Chromebox CXI' ;;
	MEEP*)                  _x='GLK|HP Chromebook x360 11 G2 EE' ;;
	MIMROCK*)               _x='GLK|HP Chromebook 11 G7 EE' ;;
	MONROE*)                _x='HSW|LG Chromebase' ;;
	MORPHIUS*)              _x='ZEN2|Lenovo ThinkPad C13 Yoga Chromebook' ;;
	NAUTILUS*)              _x='KBL|Samsung Chromebook Plus V2' ;;
	NASHER360*)             _x='APL|Dell Chromebook 11 2-in-1 5190' ;;
	NASHER*)                _x='APL|Dell Chromebook 11 5190' ;;
	NIGHTFURY*)             _x='CML|Samsung Galaxy Chromebook 2' ;;
	NINJA*)                 _x='BYT|AOpen Chromebox Commercial' ;;
	NOCTURNE*)              _x='KBL|Google Pixel Slate' ;;
	NOIBAT*)                _x='CML|HP Chromebox G3' ;;
	NOSPIKE*)               _x='GLK|ASUS Chromebook C424';;
	ORCO*)                  _x='BYT|Lenovo Ideapad 100S Chromebook' ;;
	ORBATRIX*)              _x='GLK|Dell Chromebook 3400';;
	OSIRIS*)                _x='ADL|Acer Chromebook 516 GE [CBG516-1H]'; device="osiris" ;;
	PAINE*)                 _x='BDW|Acer Chromebook 11 (C740)' ; device="auron_paine";;
	PANTHEON*)              _x='KBL|Lenovo Yoga Chromebook C630'  ; device="nami";;
	PANTHER*)               _x='HSW|ASUS Chromebox CN60' ;;
	PARROT*)                _x='SNB|Acer C7/C710 Chromebook' ;;
	PASARA*)                _x='JSL|Gateway Chromebook 15' ;;
	PEPPY*)                 _x='HSW|Acer C720/C720P Chromebook' ;;
	PHASER360*)             _x='GLK|Lenovo 300e/500e Chromebook 2nd Gen' ;;
	PHASER*)                _x='GLK|Lenovo 100e Chromebook 2nd Gen' ;;
	PIRETTE-LLJI*)          _x='JSL|Axioo Chromebook P11' ; device="pirette" ;;
	PIRETTE-NGVJ*)          _x='JSL|SPC Chromebook Z1 Mini' ; device="pirette" ;;
	PIRETTE-RVKU*)          _x='JSL|CTL Chromebook PX11E' ; device="pirette" ;;
	PIRETTE-UBKE*)          _x='JSL|Zyrex Chromebook M432-2' ; device="pirette" ;;
	PIRIKA-BMAD*)           _x='JSL|CTL Chromebook PX14E/PX14EX/PX14EXT' ; device="pirika" ;;
	PIRIKA-NPXS*)           _x='JSL|Axioo Chromebook P14' ; device="pirika" ;;
	PIRIKA-XAJY*)           _x='JSL|Gateway Chromebook 14' ; device="pirika" ;;
	PRIMUS*)                _x='ADL|Lenovo ThinkPad C14 Gen 1 Chromebook'; device="primus" ;;
	PYRO*)                  _x='APL|Lenovo Thinkpad 11e/Yoga Chromebook (G4)' ;;
	QUAWKS*)                _x='BYT|ASUS Chromebook C300' ;;
	RABBID*)                _x='APL|ASUS Chromebook C423' ;;
	RAMMUS*)                _x='KBL|Asus Chromebook C425/C433/C434' ;;
	REDRIX*)                _x='ADL|HP Elite Dragonfly Chromebook'; device="redrix" ;;
	REEF_???-C*)            _x='APL|ASUS Chromebook C213NA' ;;
	REEF*)                  _x='APL|Acer Chromebook Spin 11 (R751T)' ; device="electro";;
	REKS_???-???-???-B*)    _x='BSW|2016|Lenovo N42 Chromebook' ;;
	REKS_???-???-???-C*)    _x='BSW|2017|Lenovo N23 Chromebook (Touch)';;
	REKS_???-???-???-D*)    _x='BSW|2017|Lenovo N23 Chromebook' ;;
	REKS_???-???-???-*)     _x='BSW|2016|Lenovo N22 Chromebook' ;;
	REKS*)                  _x='BSW|2016|(unknown REKS)' ;;
	RELM_???-B*)            _x='BSW|CTL NL61 Chromebook' ;;
	RELM_???-C*)            _x='BSW|Edxis Education Chromebook' ;;
	RELM_???-F*)            _x='BSW|Mecer V2 Chromebook' ;;
	RELM_???-G*)            _x='BSW|HP Chromebook 11 G5 EE' ;;
	RELM_???-H*)            _x='BSW|Acer Chromebook 11 N7 (C731)' ;;
	RELM_???-Z*)            _x='BSW|Quanta OEM Chromebook' ;;
	RELM*)                  _x='BSW|(unknown RELM)' ;;
	RIKKU*)                 _x='BDW|Acer Chromebox CXI2' ;;
	ROBO360*)               _x='APL|Lenovo 500e Chromebook' ;;
	ROBO*)                  _x='APL|Lenovo 100e Chromebook' ;;
	SAMUS*)                 _x='BDW|Google Chromebook Pixel 2015' ;;
	SAND*)                  _x='APL|Acer Chromebook 15 (CB515-1HT)' ;;
	SANTA*)                 _x='APL|Acer Chromebook 11 (CB311-8H)' ;;
	SARIEN*)                _x='WHL|Dell Latitude 5400' ;;
	SASUKE*)                _x='JSL|Samsung Galaxy Chromebook Go' ;;
	SENTRY*)                _x='SKL|Lenovo Thinkpad 13 Chromebook' ;;
	SETZER*)                _x='BSW|HP Chromebook 11 G5' ;;
	SHYVANA*)               _x='KBL|Asus Chromebook Flip C433/C434' ;;
	SION*)                  _x='KBL|Acer Chromebox CXI3' ; device="fizz";;
	SNAPPY_???-A*)          _x='APL|HP Chromebook x360 11 G1 EE' ;;
	SNAPPY_???-B*)          _x='APL|HP Chromebook 11 G6 EE' ;;
	SNAPPY_???-C*)          _x='APL|HP Chromebook 14 G5' ;;
	SNAPPY*)                _x='APL|HP Chromebook x360 11 G1/11 G6/14 G5' ;;
	SPARKY360*)             _x='GLK|Acer Chromebook Spin 512 (R851TN)' ;;
	SPARKY*)                _x='GLK|Acer Chromebook 512 (C851/C851T)' ;;
	SONA*)                  _x='KBL|HP Chromebook x360 14' ; device="nami";;
	SORAKA*)                _x='KBL|HP Chromebook x2' ;;
	SQUAWKS*)               _x='BYT|ASUS Chromebook C200' ;;
	STORO360*)              _x='JSL|ASUS Chromebook Flip CR1100FKA' ;;
	STORO*)                 _x='JSL|ASUS Chromebook CR1100CKA' ;;
	STOUT*)                 _x='IVB|Lenovo Thinkpad X131e Chromebook' ;;
	STUMPY*)                _x='SNB|Samsung Chromebox Series 3' ;;
	SUMO*)                  _x='BYT|AOpen Chromebase Commercial' ;;
	SWANKY*)                _x='BYT|Toshiba Chromebook 2 (2014) CB30/CB35' ;;
	SYNDRA*)                _x='KBL|HP Chromebook 15 G1' ; device="nami";;
	TAEKO*)                 _x='ADL|Lenovo Lenovo Flex 5i Chromebook 14"'; device="taeko" ;;
	TANIKS*)                _x='ADL|Lenovo IdeaPad Gaming Chromebook 16'; device="taniks" ;;
	TEEMO*)                 _x='KBL|Asus Chromebox 3 / CN65' ; device="fizz";;
	TERRA_???-???-???-A*)   _x='BSW|ASUS Chromebook C202SA' ;;
	TERRA_???-???-???-B*)   _x='BSW|ASUS Chromebook C300SA/C301SA' ;;
	TERRA*)                 _x='BSW|ASUS Chromebook C202SA, C300SA/C301SA' ; device="terra";;
	TIDUS*)                 _x='BDW|Lenovo ThinkCentre Chromebox' ;;
	TREEYA360*)             _x='STR|Lenovo 300e Chromebook 2nd Gen AMD' ; device="treeya";;
	TREEYA*)                _x='STR|Lenovo 100e Chromebook 2nd Gen AMD' ; device="treeya";;
	TRICKY*)                _x='HSW|Dell Chromebox 3010' ;;
	ULTIMA*)                _x='BSW|Lenovo ThinkPad 11e/Yoga Chromebook (G3)' ;;
	VAYNE*)                 _x='KBL|Dell Inspiron Chromebook 14 (7486)'  ; device="nami";;
	VILBOZ360*)             _x='ZEN2|Lenovo 300e Chromebook Gen 3'; device="vilboz" ;;
	VILBOZ14*)              _x='ZEN2|Lenovo 14e Chromebook Gen 2'; device="vilboz" ;;
	VILBOZ*)                _x='ZEN2|Lenovo 100e Chromebook Gen 3'; device="vilboz" ;;
	VOEMA*)                 _x='TGL|Acer Chromebook Spin 514 (CB514-2H)' ;;
	VOLET*)                 _x='TGL|Acer Chromebook 515 (CB515-1W, CB515-1WT)' ;;
	VOLMAR*)                _x='ADL|Acer Chromebook Vero 514'; device="volmar" ;;
	VOLTA*)                 _x='TGL|Acer Chromebook 514 (CB514-1W, CB514-1WT)' ;;
	VORTICON*)              _x='GLK|HP Chromebook 11 G8 EE' ;;
	VORTININJA*)            _x='GLK|HP Chromebook x360 11 G3 EE' ;;
	VOXEL*)                 _x='TGL|Acer Chromebook Spin 713 (CP713-3W)' ;;
	WHITETIP*)              _x='APL|CTL Chromebook J41/J41T' ;;
	WINKY*)                 _x='BYT|Samsung Chromebook 2 (XE500C12)' ;;
	WIZPIG_???-???-??A*)    _x='BSW|CTL Chromebook J5' ;;
	WIZPIG_???-???-??B*)    _x='BSW|Edugear CMT Chromebook' ;;
	WIZPIG_???-???-??C*)    _x='BSW|Haier Convertible Chromebook 11 C' ;;
	WIZPIG_???-???-??D*)    _x='BSW|Viglen Chromebook 360' ;;
	WIZPIG_???-???-??G*)    _x='BSW|Prowise ProLine Chromebook' ;;
	WIZPIG_???-???-??H*)    _x='BSW|PCMerge Chromebook PCM-116T-432B' ;;
	WIZPIG_???-???-??I*)    _x='BSW|Multilaser M11C Chromebook' ;;
	WIZPIG*)                _x='BSW|(unknown WIZPIG)' ;;
	WOLF*)                  _x='HSW|Dell Chromebook 11' ;;
	WOOMAX*)                _x='ZEN2|ASUS Chromebook Flip CM5' ;;
	WUKONG_???-???-???-??C*) _x='KBL|ViewSonic NMP660 Chromebox' ; device="fizz";;
	WUKONG*)                _x='KBL|CTL Chromebox CBx1' ; device="fizz";;
	WYVERN*)                _x='CML|CTL Chromebox CBx2' ;;
	YUNA*)                  _x='BDW|Acer Chromebook 15 (CB5-571, C910)' ; device="auron_yuna";;
	ZAKO*)                  _x='HSW|HP Chromebox CB1' ;;
	ZAVALA*)                _x='ADL|Acer Chromebook Vero 712'; device="zavala" ;;
	*)                      _x='UNK|ERROR: unknown or unidentifiable device' ;; 
esac

deviceCpuType=$(echo $_x | cut -d\| -f1)

case "$deviceCpuType" in
SNB) deviceCpuType="Intel SandyBridge" ;;
IVB) deviceCpuType="Intel IvyBridge" ;;
HSW) deviceCpuType="Intel Haswell" ;;
BYT) deviceCpuType="Intel BayTrail" ;;
BDW) deviceCpuType="Intel Broadwell" ;;
BSW) deviceCpuType="Intel Braswell" ;;
SKL) deviceCpuType="Intel Skylake" ;;
APL) deviceCpuType="Intel ApolloLake" ;;
KBL) deviceCpuType="Intel KabyLake" ;;
GLK) deviceCpuType="Intel GeminiLake" ;;
STR) deviceCpuType="AMD StoneyRidge" ;;
WHL) deviceCpuType="Intel WhiskeyLake" ;;
CML) deviceCpuType="Intel CometLake" ;;
ZEN2) deviceCpuType="AMD Zen+/Picasso" ;;
JSL) deviceCpuType="Intel JasperLake" ;;
TGL) deviceCpuType="Intel TigerLake" ;;
ADL) deviceCpuType="Intel AlderLake" ;;
*)   deviceCpuType="(unrecognized)" ;;
esac

# Variables

HWID=$(crossystem hwid | sed 's/X86//g' | sed 's/ *$//g' | sed 's/ /_/g')
BOARD=$(crossystem hwid | sed 's/X86//g' | sed 's/ *$//g'| awk 'NR==1{print $1}' | cut -f 1 -d'-')
FWVERSION=$(crossystem fwid)

# Functions

echo_red() {
	echo -e "\E[0;31m$1"
	echo -e '\e[0m'
}
echo_green() {
	echo -e "\E[0;32m$1\e[0m"
}
echo_yellow() {
	echo -e "\E[1;33m$1\e[0m"
}
echo_blue() {
    echo -e "\033[34m$1\033[0m"
}
CheckEnrollmentRO() {
    vpd -i RO_VPD -s check_enrollment="$RO_VPD_edited"
}
MfgDate() {
    vpd -i RO_VPD -s mfg_date="$RO_VPD_edited"
}
MlbSerialNumber() {
    vpd -i RO_VPD -s mlb_serial_number="$RO_VPD_edited"
}
ModelName() {
    vpd -i RO_VPD -s model_name="$RO_VPD_edited"
}
Region() {
    vpd -i RO_VPD -s region="$RO_VPD_edited"
}
SerialNumber() {
    vpd -i RO_VPD -s serial_number="$RO_VPD_edited"
}
SKUNumber() {
    vpd -i RO_VPD -s sku_number="$RO_VPD_edited"
}
StableDeviceSecret() {
    vpd -i RO_VPD -s stable_device_secret_DO_NOT_SHARE="$RO_VPD_edited"
}
ActivateDate() {
    vpd -i RW_VPD -s ActivateDate="$RW_VPD_edited"
}
BlockDevmode() {
    vpd -i RW_VPD -s block_devmode="$RW_VPD_edited"
}
CheckEnrollmentRW() {
    vpd -i RW_VPD -s check_enrollment="$RW_VPD_edited"
}
FirstActiveOmahaPingSent() {
    vpd -i RW_VPD -s first_active_omaha_ping_sent="$RW_VPD_edited"
}
GBindAttribute() {
    vpd -i RW_VPD -s gbind_attribute="$RW_VPD_edited"
}
ShouldSendRlzPing() {
    vpd -i RW_VPD -s should_send_rlz_ping="$RW_VPD_edited"
}
UBindAttribute() {
    vpd -i RW_VPD -s ubind_attribute="$RW_VPD_edited"
}
get_largest_nvme_namespace() {
        local largest size tmp_size dev
        size=0
        dev=$(basename "$1")

        for nvme in /sys/block/"${dev%n*}"*; do
            tmp_size=$(cat "${nvme}"/size)
            if [ "${tmp_size}" -gt "${size}" ]; then
                largest="${nvme##*/}"
                size="${tmp_size}"
            fi
        done
        echo "${largest}"
}
BIOSDump () {
    # Creates bios.bin file in current directory
    flashrom -r bios.bin &> /dev/null
}
# Function to print section headers
print_header() {
    local header_text=$1
    echo -e "\n\e[1m$header_text\e[0m"
}

# Function to get CPU usage
get_cpu_usage() {
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    echo "$cpu_usage%"
}

# Function to get memory usage
get_memory_usage() {
    memory_usage=$(free -m | awk 'NR==2{printf "Used: %sMB (%.2f%%)\n", $3,$3*100/$2 }')
    echo "$memory_usage"
}

# Function to get disk space
get_disk_space() {
    disk_space=$(df -h | awk '$NF=="/"{printf "Total: %sB\nUsed: %sB (%s)\nFree: %sB (%s)\n", $2,$3,$5,$4,$6}')
    echo "$disk_space"
}

# Function to get network statistics
get_network_statistics() {
    network_interface=$(ip -o -4 route show to default | awk '{print $5}')
    network_stats=$(ip -o -4 addr show dev $network_interface | awk '{print "IP: "$4}')
    network_stats+="\n$(ip link show dev $network_interface | awk '/ether/ {print "MAC: "$2}')"
    echo -e "$network_stats"
}

# Function to get load average
get_load_average() {
    load_average=$(uptime | awk -F 'load average:' '{print $2}')
    echo "$load_average"
}

# Function to get CPU temperature
get_cpu_temperature() {
    cpu_temperature=$(sensors | awk '/^Core/ {print "Core "++i": "$3}')
    echo "$cpu_temperature"
}

# Function to get logged-in users
get_logged_in_users() {
    logged_in_users=$(who | awk '{print $1}')
    echo "$logged_in_users"
}

# Function to get process count
get_process_count() {
    process_count=$(ps -e -o user= | sort | uniq -c | awk '{print $2": "$1}')
    echo "$process_count"
}

# Function to get system uptime
get_system_uptime() {
    system_uptime=$(uptime -p)
    echo "$system_uptime"
}

# Function to get swap usage
get_swap_usage() {
    swap_total=$(free -m | awk 'NR==3{print $2}')
    swap_used=$(free -m | awk 'NR==3{print $3}')
    
    if [[ $swap_total -gt 0 ]]; then
        swap_usage=$(awk -v used="$swap_used" -v total="$swap_total" 'BEGIN { printf "Used: %dMB (%.2f%%)\n", used, (used / total) * 100 }')
    else
        swap_usage="No swap space available."
    fi
    
    echo "$swap_usage"
}
FWWPStatus() {
    fwwp_status=$(crossystem wpsw_cur)
    if [[ $fwwp_status == "0" ]]; then
        echo "Disabled"
    else
        echo "Enabled"
    fi
}
reset_system() {
    clear
    echo "How would you like to reset system data?"
    echo  "1) Powerwash (remove user accounts only)"
    echo  "2) Pressurewash (remove all data)"
    echo  "3) Secure Wipe (slow, completely unrecoverable)"
    read -p "Enter the corresponding number you want to do: " CHOICE
    case $CHOICE in
    1)
        clear
        echo_red "Are you sure you want to do this?"
        echo "This will:"
        echo ""
        echo "Remove all local data."
        echo "Reset device to factory settings."
        read -p "Type DoIt to confirm and continue: " doit

        if [[ "$doit" = "DoIt" ]]; then
            bash /mnt/stateful_partition/factory_install_reset
            clear
            echo "Done!"
            echo "Upon rebooting, you will be met with a powerwashing screen."
            echo "Do not turn off your device and wait around five minutes for it to finish."
        else
            echo "Exiting..."
            exit 1
        fi
        ;;
    2)
        echo "Under maintenance."
        ;;
    3)
        clear
        echo_red "ARE YOU SURE YOU WANT TO DO THIS!!!"
        echo "THIS IS EXTREMELY DANGEROUS, WIPING ALL OF"
        echo "YOUR INTERNAL STORAGE, MEANING YOUR DEVICE WILL"
        echo "NOT BE USABLE AFTER THIS."
        read -p "TYPE DoIt TO ACKNOWLEDGE THE RISKS AND CONTINUE: " doit

        if [[ "$doit" = "DoIt" ]]; then
            . /usr/share/misc/chromeos-common.sh

            DST=/dev/$(get_largest_nvme_namespace)
            if [ -z $DST ]; then
                DST=/dev/mmcblk0
            fi

            echo "Starting Secure Wipe..."
            dd if=/dev/urandom of=${DST} >/dev/null &
            echo "Secure Wipe complete."
            echo "Rebooting..."
            sleep 3
            reboot
        else
            echo "Exiting..."
            exit 1
        fi
        ;;
    esac
    exit 0
}
remove_rootfs_verification() {
	 clear
    echo "TO RESET THE ROOTFS VERIFICATION BACK TO NORMAL, RECOVER."
    read -p "Type DoIt to continue: " doit

    # Remove RootFS verification
    clear
    if [[ "$doit" = "DoIt" ]]; then
        echo "Removing RootFS verification..."
        /usr/share/vboot/bin/make_dev_ssd.sh --remove_rootfs_verification --partitions 2
        echo "Successfully removed RootFS verification!"
        echo "Rebooting..."
        reboot
    else
        clear
        echo "User didn't want to do it... :("
    fi
}
disable_autoupdates() {
	clear
	echo "WARNING!"
	echo "YOU WILL NEED TO DISABLE ROOTFS VERIFICATION TO DO THIS."
	echo "ALSO, IF YOU DO THIS YOU WILL BE STUCK AT THE CHECKING FOR UPDATES SCREEN"
	echo "IF YOU POWERWASH. TO FIX THIS, RECOVER. IF YOU WANT TO RE-ENABLE"
	echo "AUTOUPDATES, USE OPTION 2."
	echo ""
	read -p "Type DoIt to continue: " doit

	# Remove autoupdates
	clear
	if [[ "$doit" = "DoIt" ]]; then
		echo "Removing autoupdates..."
		mv /usr/sbin/update_engine /usr/sbin/update_enginefake
		mv /usr/sbin/update_engine_client /usr/sbin/update_engine_clientfake
		echo "Successfully removed autoupdates!"
	fi
}
edit_vpd() {
	clear
    echo "Choose a VPD partition to edit:"
    echo "1) Read-Writable (RW_VPD)"
    echo "2) Write-Protected (RO_VPD)"
    read -p "Choose one based on the corresponding number: " vpd_choice

        # Choose what to edit in whatever VPD partition they chose
        clear
        if [[ "$vpd_choice" = "1" ]]; then
            echo "What do you want to edit?"
            echo "ActivateDate  block_devmode   check_enrollment    first_active_omaha_ping_sent    gbind_attribute     should_send_rlz_ping    ubind_attribute"   
            read -p "Choose the name of what you want to edit: " RW_VPD_editname
            clear
            read -p "What do you want to change $RW_VPD_editname to?: " RW_VPD_edited
            clear
            echo "Are you sure you want to edit this? This could potentially be dangerous."
            echo "Name: $RW_VPD_editname"
            echo "Editing to: $RW_VPD_edited"
            echo ""
            read -p "Type DoIt to confirm: " doit

        elif [[ "$vpd_choice" = "2" ]]; then
            echo "What do you want to edit?"
            echo "check_enrollment  mfg_date    mlb_serial_number   model_name  region  serial_number   sku_number  stable_device_secret_DO_NOT_SHARE"
            read -p "Choose the name of what you want to edit: " RO_VPD_editname
            read -p "What do you want to change $RO_VPD_editname to?: " RO_VPD_edited
            echo "Are you sure you want to edit this? This could potentially be dangerous."
            echo "Name: $RO_VPD_editname"
            echo "Editing to: $RO_VPD_edited"
            echo ""
            read -p "Type DoIt to confirm: " doit
        fi

             if [[ "$doit" = "DoIt" ]]; then
                echo "Let's do it!"
            else
                echo "User didn't want to do it... :("
                exit 0
            fi

                    case "$RO_VPD_editname" in
                    "check_enrollment") CheckEnrollmentRO ;;
                    "mfg_date") MfgDate ;;
                    "mlb_serial_number") MlbSerialNumber ;;
                    "model_name") ModelName ;;
                    "region") Region ;;
                    "serial_number") SerialNumber ;;
                    "sku_number") SKUNumber ;;
                    "stable_device_secret_DO_NOT_SHARE") StableDeviceSecret ;;
                    esac

                    case "$RW_VPD_editname" in
                    "ActivateDate") ActivateDate ;;
                    "block_devmode") BlockDevmode ;;
                    "check_enrollment") CheckEnrollmentRW ;;
                    "first_active_omaha_ping_sent") FirstActiveOmahaPingSent ;;
                    "gbind_attribute") GBindAttribute ;;
                    "should_send_rlz_ping") ShouldSendRlzPing ;;
                    "ubind_attribute") UBindAttribute ;;
                    esac
}
ResetGBB () {
    # Sets GBB flags to factory default
    /usr/share/vboot/bin/set_gbb_flags.sh 0  &> /dev/null 
}

ViewGBB () {
  # Creates bios.bin file in current directory
  flashrom -r bios.bin &> /dev/null
  # Pulls GBB flag info from bios.bin
  gbb_utility --get --flags bios.bin | grep -w "flags:" | tr -d "flags :"
  # Removes bios.bin
  rm bios.bin
}

SetGBB () {
  # Creates bios.bin file in current directory
  flashrom -r bios.bin &> /dev/null
  # Sets GBB flags to the value the user put in
  gbb_utility --set --flags=$set_gbbchoice bios.bin &> /dev/null
  # Writes updated bios.bin file
  flashrom -i GBB -w bios.bin &> /dev/null
  # Removes bios.bin file from current directory
  rm bios.bin
}
GBBUtils() {
    clear
echo "Welcome to GBBUtils."
echo "Note: Hardware WP needs to be off for everything except option 4."
echo ""
echo "1) Reset GBB Flags"
echo "2) View Current GBB Flags"
echo "3) Set GBB Flags"
echo "4) Dump BIOS/Firmware"
read -p "Enter the corresponding number for what you want to do: " gbbchoice

if [[ "$gbbchoice" = "1" ]]; then
    clear
    echo "Are you sure you want to reset your GBB flags?"
    read -p "Type DoIt to confirm: " doit

    if [[ "$doit" = "DoIt" ]]; then
        clear
        echo "Setting GBB flags to factory default..."
        ResetGBB
        echo "Reset GBB flags successfully."
    else
        clear
        echo "User didn't want to do it..."
    fi

elif [[ "$gbbchoice" = "2" ]]; then
    clear
    ViewGBB

elif [[ "$gbbchoice" = "3" ]]; then
    clear
    read -p "What do you want to set the GBB flags to? " set_gbbchoice
    clear
    echo "Are you sure you want to set your GBB flags to $set_gbbchoice?"
    read -p "Type DoIt to confirm: " doit

    if [[ "$doit" = "DoIt" ]]; then
        clear
        echo "Setting GBB flags to $set_gbbchoice..."
        SetGBB
        echo "Set GBB flags to $set_gbbchoice successfully."
    else
        clear
        echo "User didn't want to do it..."
    fi
else
    echo "ERROR: INVALID CHOICE"
    exit 1
fi
}
unblock_devmode() {
	clear
	echo "Are you sure you want to do this?"
	read -p "Type DoIt to confirm: " doit

	if [[ "$doit" = "DoIt" ]]; then
		clear
		echo "Unblocking developer mode..."
		vpd -i RW_VPD -s block_devmode=0
		crossystem block_devmode=0
  		flashrom -r bios.bin &> /dev/null
  		gbb_utility --set --flags=$set_gbbchoice bios.bin &> /dev/null
  		flashrom -i GBB -w bios.bin &> /dev/null
  		rm bios.bin
		clear
		echo "Success!"
	else
		echo "Exiting..."
		exit 0
	fi
}
fre_destroyer() {
	clear
	echo_red "ARE YOU SURE YOU WANT TO DO THIS?"
	echo "THIS WILL BREAK FORCE RE-ENROLLMENT"
	echo "MEANING YOU CAN NEVER RE-ENROLL EVER AGAIN."
	echo "BY TYPING DoIt, YOU ACKNOWLEDGE THAT THE CREATOR"
	echo "IS NOT RESPONSIBLE FOR ANY DAMAGE/HARM THAT COMES"
	echo "FROM THIS SCRIPT."
	read -p "Type DoIt to accept and continue: " doit

	if [[ "$doit" = "DoIt" ]]; then
		clear
		echo_red "Breaking force re-enrollment..."
		vpd -i "RW_VPD" -s "check_enrollment"="0" &> /dev/null
  		vpd -i "RW_VPD" -s "block_devmode"="0" &> /dev/null
  		vpd -d "stable_device_secret_DO_NOT_SHARE" &> /dev/null
  		dump_vpd_log --force &> /dev/null
  		crossystem clear_tpm_owner_request=1
		clear
		echo "Done!"
		sleep 3
		clear
		echo "Rebooting. Please wait."
		sleep 5
		reboot
	else
		echo "Exiting..."
		exit 0
	fi
}
macaddressrandomizer() {
	clear
    # NOTE: ALL CREDITS FOR THE MAC ADDRESS RANDOMIZER GO TO MERCURY WORKSHOP.
    if [ $(id -u) -ne 0 ]; then
	    echo "Run this script as root (sudo)."
	    exit 1
    fi

    echo "------------------------------"
    echo "Mercury MAC Address Randomizer"
    echo "This script was made by Mercury"
    echo "Workshop. Go support them on"
    echo "Github profile."
    echo "------------------------------"
    echo ""

    state=$(cat /sys/class/net/wlan0/operstate)

    mac_dev=$(cat /sys/firmware/vpd/ro/wifi_mac0)
    echo "Device MAC: ${mac_dev}"

    get_mac_cur() {
	    cat /sys/class/net/wlan0/address
    }
    mac_cur="$(get_mac_cur)"
    echo "Current MAC: ${mac_cur}"

    gen_mac() {
	    echo "$(echo "${mac_dev}" | head -c $((-3 * $1 + 17))):$(hexdump -e '1/1 "%02x:"' -v -n $1 /dev/urandom)" | head -c 17
    }

    echo "Choose an action:"
    echo "3 - Randomize last 3 bytes."
    echo "5 - Randomize last 5 bytes."
    echo "c - Custom MAC address."
    if [ "${mac_cur}" != "${mac_dev}" ]; then
	    echo "r - Reset MAC address"
    fi
    echo "e - Cancel and exit"
    read -p "> " action

    case "${action}" in
	    3)
		    mac_new="$(gen_mac 3)"
		    ;;
	    5)
		    mac_new="$(gen_mac 5)"
		    ;;
	    c | C)
		    read -p "Enter new MAC address: " mac_new
		    ;;
	    r | R)
		    mac_new="${mac_dev}"
		    ;;
	    e | E)
		    echo "Cancelled"
		    exit
		    ;;
	    *)
		    echo "ERROR: Invalid action"
		    exit 1
		    ;;
    esac

    echo -n "Setting new MAC (${mac_new})... "
    if [ "${state}" == "up" ]; then
	    ip link set dev wlan0 down
    fi
    ip link set dev wlan0 address "${mac_new}"
    if [ "${state}" == "up" ]; then
	    ip link set dev wlan0 up
    fi

    mac_new_real=$(get_mac_cur)
    if [ "${mac_new_real}" == "${mac_new}" ]; then
	    echo "Done"
    elif [ "${mac_new_real}" == "${mac_cur}" ]; then
	    echo "ERROR: Failed to change MAC address."
    else
	    echo "Something wacky happened."
    fi
    echo "Current MAC: ${mac_new_real}"
}
firmwareutil() {
	clear
	curl -LOk mrchromebox.tech/firmware-util.sh
	clear
	sudo bash firmware-util.sh
}
dumpbios() {
	clear
    echo "Are you sure you want to dump the current system BIOS/Firmware?"
    echo "Nothing bad can come from this, it will just make the bios.bin file"
    echo "in the directory you ran this script in."
    echo ""
    read -p "Type DoIt to confirm: " doit

    if [[ "$doit" = "DoIt" ]]; then
        clear
        echo "Dumping system BIOS/Firmware..."
        BIOSDump
        echo "Dumped successfully."
    else
        clear
        echo "User didn't want to do it..."
    fi
}
systeminfo() {
	 # Customize the script's output appearance
    clear
    echo -e "\e[1mSystem Information\e[0m"
    echo "---------------------"

    # Gather and display system information
    print_header "General"
    get_cpu_usage
    get_memory_usage
    get_disk_space

    print_header "System Load"
    get_load_average

    print_header "Process Count"
    get_process_count

    print_header "System Uptime"
    get_system_uptime

    print_header "Swap Usage"
    get_swap_usage

    echo

    # Press anykey to continue
    read -p "Press anykey to continue: "
}
reenableautoupdates() {
	clear
	echo "Are you sure you want to re-enable autoupdates?"
	read -p "Type DoIt to confirm: " doit

	if [[ "$doit" = "DoIt" ]]; then
		mv /usr/sbin/update_enginefake /usr/sbin/update_engine
		mv /usr/sbin/update_engine_clientfake /usr/sbin/update_engine_client
		echo "Success!"
	else
		echo "Exiting..."
		exit 0
	fi
}
viewcredits() { 
    clear
    echo_red "Credits:"
    echo "$(echo_blue "misterfonka") - Creating this script"
    echo "$(echo_blue "MrChromebox") - Creating the Firmware Utility and providing some code"
    echo "$(echo_blue "Mercury Workshop") - Creating the Mac Address Randomizer"
}
show_crossystem_values() {
    echo_red "crossystem values:"
    echo_blue "--------------------------------------"
    crossystem -all
    echo_blue "--------------------------------------"
}

show_rw_vpd_values() {
    echo_red "RW_VPD values:"
    echo_blue "--------------------------------------"
    vpd -i RW_VPD -l
    echo_blue "--------------------------------------"
}

show_ro_vpd_values() {
    echo_red "RO_VPD values:"
    echo_blue "--------------------------------------"
    vpd -i RO_VPD -l
    echo_blue "--------------------------------------"
}
