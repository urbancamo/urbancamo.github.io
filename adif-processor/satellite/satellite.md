## Satellite Contacts

QSOs via the [Es’hail 2 / QO-100](https://amsat-uk.org/satellites/geo/eshail-2/) and a number of Low Earth Orbit (LEO)
satellites can be visualized.

If you specify the satellite name or code (see tables below) in the ADIF input file in the field `SAT_NAME` it will be looked up in the supported
list below.

### Where you haven't specified the `SAT_NAME` in the input ADIF file

Expand the Options... tab on the ADIF Processor Form and
select the satellite name from the `Satellite Name` dropdown list.

The `Satellite Mode` form field is free text and allows you to specify
the content of the ADIF field `SAT_MODE` - this has no effect on the QSO visualisation.

If you have non-Satellite QSOs in the same ADIF input file they can be visualised normally 
by specifying the up-link band used for the Satellite QSOs in the `Satellite Band` form field.

So for example if you have `13cm` QSOs via `QO-100` and `2m` VHF QSOs locally on a SOTA 
activation then enter `13cm` in the `Satellite Band` form field.

Only QSOS in the input file with band `13cm` will be visualized as satellite contacts.

| Icon                                                                           | Represents        | Label                     |
|--------------------------------------------------------------------------------|-------------------|---------------------------|
| ![](http://maps.google.com/mapfiles/kml/shapes/placemark_circle_highlight.png) | Satellite Contact | Time UTC                  |
| ![](http://maps.google.com/mapfiles/kml/shapes/capital_big_highlight.png)                       | Satellite Track   | Satellite Name & Date UTC |

A worked pass of a satellite is show in Google Earth as a red trace. There is a lead to the trace before the first QSO.
Where multiple QSOs are recorded at the same time the times are interpolated based on the order in the input file.

It is recommended that you only visualize one day's activity or a few passes, otherwise the display in Google Earth
gets very cluttered.

## Limitations

The TLE data is accurate on the day the ADIF file is processed. I am working on the ability to use historic TLE data. 
As a result if you try and process a file with contacts from a significant time ago the visualization won't 
be accurate as the TLE data isn't correct for that date.

## Supported Satellites

TLE data is loaded from [amateur.txt hosted on celestrak.com](http://www.celestrak.com/NORAD/elements/amateur.txt).

### Sorted by Code

|Code|Name|
|----|----|
|AO-109|RADFXSAT-2 |
|AO-10|PHASE 3B |
|AO-27|EYESAT A |
|AO-73|FUNCUBE-1 |
|AO-7|OSCAR 7 |
|AO-92|FOX-1D |
|AO-95|FOX-1CLIFF |
|ARDUIQUBE|DIY-1 |
|CAS-4A|ZHUHAI-1 01 |
|CAS-4B|ZHUHAI-1 02 |
|CAS-9|XW-3 |
|CO-55|CUTE-1 |
|CO-57|CUBESAT XI-IV |
|CO-65|CUTE-1.7+APD II |
|CO-66|SEEDS II |
|DO-64|DELFI-C3 |
|EO-88|NAYIF-1 |
|FO-29|JAS-2 |
|FO-99|NEXUS |
|FOX-1B|RADFXSAT |
|FRESCO|NUSAT-1 |
|GO-32|TECHSAT 1B |
|HO-107|HUSKYSAT-1 |
|HOPE-1|XIWANG-1 |
|IO-26|ITAMSAT |
|JO-97|JY1SAT |
|KISEKI|KKS-1 |
|LO-19|LUSAT |
|LO-74|CUBEBUG-2 |
|NO-103|BRICSAT2 |
|NO-104|PSAT2 |
|NO-44|PCSAT |
|RS-15|RADIO ROSTO |
|RS-22|MOZHAYETS 4 |
|RS-30|YUBILEINY |
|SO-50|SAUDISAT 1C |
|TO-108|CAS-6 |
|TSHEPISOSAT|ZACUBE-1 |
|TW-1A|TIANWANG 1A |
|UO-11|UOSAT 2 |
|ZARYA|ISS |

### Sorted By Name

|Name|Code|
|----|----|
|OSCAR 7 |AO-7|
|PHASE 3B |AO-10|
|UOSAT 2 |UO-11|
|LUSAT |LO-19|
|EYESAT A |AO-27|
|ITAMSAT |IO-26|
|RADIO ROSTO |RS-15|
|JAS-2 |FO-29|
|TECHSAT 1B |GO-32|
|ISS |ZARYA|
|PCSAT |NO-44|
|SAUDISAT 1C |SO-50|
|CUTE-1 |CO-55|
|CUBESAT XI-IV |CO-57|
|MOZHAYETS 4 |RS-22|
|CUBESAT XI-V | |
|FALCONSAT-3 | |
|CUTE-1.7+APD II |CO-65|
|DELFI-C3 |DO-64|
|SEEDS II |CO-66|
|YUBILEINY |RS-30|
|KKS-1 |KISEKI|
|SWISSCUBE | |
|BEESAT-1 | |
|ITUPSAT1 | |
|XIWANG-1 |HOPE-1|
|JUGNU | |
|SRMSAT | |
|M-CUBED & EXP-1 PRIME | |
|STRAND-1 | |
|SOMP | |
|BEESAT-3 | |
|BEESAT-2 | |
|ZACUBE-1 |TSHEPISOSAT|
|GOMX-1 | |
|CUBEBUG-2 |LO-74|
|FUNCUBE-1 |AO-73|
|UWE-3 | |
|SPROUT | |
|UNISAT-6 | |
|DUCHIFAT-1 | |
|QB50P1 | |
|NUDT-PHONESAT | |
|ZDPS 2A | |
|ZDPS 2B | |
|XW-2A | |
|KAITUO 1A | |
|2015-049G | |
|XW-2C | |
|XW-2D | |
|LILACSAT-2 | |
|XW-2E | |
|XW-2F | |
|XW-2B | |
|KAITUO 1B | |
|TIANWANG 1A |TW-1A|
|LAPAN-A2 | |
|E-ST@R-II | |
|AAUSAT 4 | |
|NUSAT-1 |FRESCO|
|BEESAT-4 | |
|CAS-2T & KS-1Q | |
|NAYIF-1 |EO-88|
|ZHUHAI-1 02 |CAS-4B|
|ZHUHAI-1 01 |CAS-4A|
|MAX VALIER SAT | |
|RADFXSAT |FOX-1B|
|FOX-1D |AO-92|
|DIWATA-2B | |
|ES'HAIL 2 | |
|FOX-1CLIFF |AO-95|
|ITASAT 1 | |
|JY1SAT |JO-97|
|UWE-4 | |
|NEXUS |FO-99|
|PSAT2 |NO-104|
|BRICSAT2 |NO-103|
|JAISAT-1 | |
|DUCHIFAT-3 | |
|CAS-6 |TO-108|
|RS-44 & BREEZE-KM R/B | |
|ORBITAL FACTORY 2 ||
|HUSKYSAT-1 |HO-107|
|BY70-2 | |
|SALSAT | |
|BY70-3 | |
|RADFXSAT-2 |AO-109|
|UVSQ-SAT | |
|DIY-1 |ARDUIQUBE|
|XW-3 |CAS-9|


## Satellite Modes

Uplink and downlink designations use sets of paired letters following the structure X/Y where X is the uplink band and Y is the downlink band.*

| Designator | H | A | V | U | L | S | S2 | C | X | K | R |
|------------|---|---|---|---|---|---|----|---|---|---|---|
|Band|15 m|10 m|2 m|70 cm|23 cm|13 cm|9 cm|5 cm|3 cm|1.2 cm|6 mm|
|Frequency (General)|21 MHz|29 MHz|145 MHz|435 MHz|1.2 GHz|2.4 GHz|3.4 GHz|5 GHz|10 GHz|24 GHz|47 GHz|

So for example the `SAT_MODE` designator for `QO-100` is S/X.

*from [Amateur Radio – PEØSAT](https://www.pe0sat.vgnet.nl/satellite/sat-information/modes/)

