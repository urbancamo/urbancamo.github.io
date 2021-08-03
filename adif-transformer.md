# ADIF Transformer

Use [ADIF Transformer](http://adifweb-env.eba-saseumwd.eu-west-2.elasticbeanstalk.com/)
to visualize your QSOs in [Google Earth](https://earth.google.com).

Use [ADIF Transformer](http://adifweb-env.eba-saseumwd.eu-west-2.elasticbeanstalk.com/) to enrich your
ADIF file with data from [QRZ.com](https://qrz.com).

Use [ADIF Transformer](http://adifweb-env.eba-saseumwd.eu-west-2.elasticbeanstalk.com/) to produce a 
table of contacts.

## TL;DR (I don't want to read the manual)

In most cases with a sensible ADIF file you should be able to upload the file and click Process...
to obtain the three output files:

- an enhanced ADIF file augmented with data from QRZ.com and activity references including
operator name and location, 
- a [Google Earth](https://earth.google.com) Project (KML) file and
- a [Markdown](https://www.markdownguide.org/) table of contacts that can be pasted 
into a [Discourse](https://www.discourse.org/) server such as [SOTA Reflector](https://reflector.sota.org.uk/)
or [WOTA Discourse](https://discourse.wota.xyz/). 

## Quick Start (with a bit more info)

If you are interested in visualizing your QSOs in Google Earth there are a number of steps the ADIF Transformer
performs as it processes your ADIF file.

### 1. Determining Station Locations

ADIF Transformer attempts to determine a location for every station. It does this using a number of
techniques, in order of preference:

1. If a latitude/longitude has been specified in the ADIF input file, use that
2. Where a maidenhead locator has been specified in the ADIF input file, use that
3. For fixed stations it looks up the location on QRZ.com, preferring Latitude/Longitude over 
Maidenhead locator.
4. For portable stations, if there is an activity associated with the station then an attempt is made
to determine the location based on the activity.
5. Where the activity doesn't have a location (some Parks on the Air activity locations are trails that
span multiple states for example) use any specified GRIDSQUARE in the comment
6. For any station with a 6 character GRIDSQUARE defined this is used failing any other checks

#### Stations without a location

Where no location can be determined a warning is issued, and the station isn't added to the Google 
Earth KML file. You can correct this by determining either a missing activity for the station, or by 
specifying either Latitude/Longitude in the ADIF input file or a GRIDSQUARE reference.

### 2. Adding Station Information from QRZ.COM

A lookup is made for additional station information from QRZ.COM. Initially the callsign as logged
is looked up, but for some callsign references more work is required to determine the information.

1. For a portable station, e.g. M0NOM/P, if there is no QRZ.COM page for the /P variant check the
fixed callsign M0NOM.
2. For a portable station operating abroad, eg: EA7/M0NOM/P firstly check for EA7/M0NOM/P, then check
for non-portable in country page EA7/M0NOM, then portable home station 
3. For other stations, attempt to determine an alternative list of callsigns to check for on QRZ.com

### 3. Selection of Station Icon

There are a number of icons that are used to mark a station, based on the station suffix and any 
activity that is associated with the station.

|Icon|Suffix|Activity Type|
|----|------|--------|
|![](icons/ranger_station.png)House|none|none|
|![](icons/mountains.png)Mountain|/P|SOTA|
|![](icons/hospitals.png)Red 'H'|/P|HEMA|
|![](icons/picnic.png)Park Bench|/P|POTA|
|![](icons/trail.png)Hiker following Trail|/P|WOTA|
|![](icons/parks.png)Tree|/P|WWFF|
|![](icons/hiker.png)Hiker|/P|None|
|![](icons/sailing.png)Sailing Boat|/MM|none|
|![](icons/cabs.png)Car|/M|none|

### Drawing the QSO

ADIF Transformer uses a simple propagation visualization technique based on an ideal antenna. For 
HF signals this gives an idea of the minimum number of hops your QSO would have needed to reach
the target station.

## Introduction

Virtually all Ham Radio Logging programs have the ability to produce ADIF files. ADIF stands for
_Amateur Radio Interchange Format_ and was designed to allow logging applications to export and import 
contacts without loosing any information. As such it supports a large number of fields designed to
capture every aspect of a QSO.

If your logging program is connected to [QRZ.COM](https://qrz.com) and you have an XML Subscription
membership then you may find that details are automatically pulled from QRZ.COM about the other station
and added to your contact. These will be exported by the logging program in ADIF.

However, if you use a program such as Fast Log Entry, or your logging program isn't connected to QRZ.COM
or you don't have an XML subscription then the data that you enter as part of the QSO log will be the 
total information available in the ADIF export.

The ADIF Transformer gives you the opportunity to add information about the station you have worked both from
QRZ.com, activity references and using specially-formatted name/value pairs in the comments field,
where your logging program doesn't have the ability to add data directly.

This works really well for Fast Log Entry, where only the SOTA reference, WWFF reference or 6 character
Maidenhead locator can be specified for the contacted station.

### Activities
The ADIF Transformer knows about _activities_. The term _Activity_ is used to describe a special activity
that you or the the contacted station are participating in. For example: Summits on the Air or Parks on the Air. For
each activity the ADIF Transformer loads the database of activity references. The totals are currently:

- 28,229 Parks on the Air
- 330 Wainwrights on the Air
- 3,316 Humps on the Air
- 157,201 Summits on the Air
- 51,138 World Wide Flora Fauna areas


### The Comment Field in your ADIF file

The ADIF Transformer looks carefully for key: value pairs in the comment field in your ADIF input file.
It recognises a keywords. 

For example a comment like: `HEMA: G/HLD-001, OP: Mark, RIG: FT-817, PWR: 5`
Would result in the following ADIF fields being set:

|ADIF Field|Value|
|----------|-----|
|NAME|Mark|
|SIG|HEMA|
|SIG_INFO|G/HLD-001|
|RIG|FT-817|
|RX_PWR|5|

#### Comment Name/Value pairs that will be processed

|Type|Comment Key|Sample  Value|Target ADIF Field|
|-----|------|--------------------|-----------------|
|Summits on the Air|SOTA|G/LD-001|SOTA_REF|
|Humps on the Air|HEMA|G/HLD-001|SIG/SIG_INFO|
|Worldwide Flora Fauna|WWFF|GFF-0233|SIG/SIG_INFO|
|Parks on the Air|POTA|G-0190|SIG/SIG_INFO|
|Wainwrights on the Air|WOTA|LDW-001|SIG/SIG_INFO|
|Operator Name|OP|Mark|NAME|
|Home/Location|QTH|Windermere|QTH|
|Rig Model|RIG|IC-7100|RIG|
|RX Power|PWR|50|RX_PWR|
|Age|AGE|52|AGE|
|Islands on the Air|IOTA|E-145|IOTA|
|Maidenhead Locator|GRID|IO84MJ (6/8/10 char)|GRIDSQUARE|
|Serial No Transmitted|STX|0045|STX|
|Serial No Received|SRX|0034|SRX|
|Fists No|FISTS|18162|FISTS|
|QSL Status|QSL|D/B|QSL_DATE/SQL_SENT|
|Latitude|LAT|50.153|LATITUDE|
|Longitude|LONG|2.345|LONGITUDE|

I will accept requests to map additional fields - these are the most frequently fields used by me,
and there are a log of them!

## Background

The ADIF Transformer started as a project to allow me to add additional information in the comment field
of a [Fast Log Entry](https://df3cb.com/fle/) input file so I could specify things like operator name, rig, 
activity reference, that couldn't be populated directly from [Fast Log Entry](https://df3cb.com/fle/).

As I like to record the contacted station location as accurately as possible I then decided to add
support for up-to 10 character [Maidenhead Locator](https://www.dxzone.com/grid-square-locator-system-explained/) references and at that point stumbled across
the idea of visualizing QSOs using Google Earth.

## Future Directions

- Improve the propagation model
- Save and Load Preferences
- Customizable Markdown table fields


