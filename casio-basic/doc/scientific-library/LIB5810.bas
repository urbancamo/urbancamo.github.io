5 GOTO10010
10 DATAsin��+cos��,1,10,20
20 DATA1+tan��,sec��,10,30
30 DATA1+cot��,cosec��,20,40
40 DATAsin(���),sin��cos��cos��sin�,30,50
50 DATAcos(���),cos��cos��sin��sin�,40,60
60 DATAtan(���),(tan��tan�)/(1�tan��tan�),50,70
70 DATAcot(���),(cot��cot��1)/(cot��cot�),60,80
80 DATAsin2�,2sin��cos�,70,90
90 DATAcos2�,cos��-sin��,80,100
100 DATAcos2�,1-2sin��,90,110
110 DATAcos2�,2cos��-1,100,120
120 DATAtan2�,2tan�/(1-tan��),110,130
130 DATAsin(�/2),��((1-cos�)/2),120,140
140 DATAcos(�/2),��((1+cos�)/2),130,150
150 DATAtan(�/2),��((1-cos�)/(1+cos�)),140,160
160 DATAtan(�/2),(1-cos�)/sin�,150,170
170 DATAtan(�/2),sin�/(1+cos�),160,180
180 DATAtan(�/2),cosec�-cot�,170,190
190 DATAcot(�/2),��((1+cos�)/(1-cos�)),180,200
200 DATAcot(�/2),sin�/(1-cos�),190,210
210 DATAcot(�/2),(1+cos�)/sin�,200,220
220 DATAcot(�/2),cosec�+cot�,210,230
230 DATAsin3�,3sin�-4sin��,220,240
240 DATAcos3�,4cos��-3cos�,230,250
250 DATAtan3�,(3tan�-tan��)/(1-3tan��),240,260
260 DATA2sin��cos�,sin(�+�)+sin(�-�),250,270
270 DATA2cos��sin�,sin(�+�)-sin(�-�),260,280
280 DATA2cos��cos�,cos(�+�)+cos(�-�),270,290
290 DATA2sin��sin�,-(cos(�+�)-cos(�-�)),280,300
300 DATAsin�+sin�,2sin((�+�)/2)�cos((�-�)/2),290,310
310 DATAsin�-sin�,2cos((�+�)/2)�sin((�-�)/2),300,320
320 DATAcos�+cos�,2cos((�+�)/2)�cos((�-�)/2),310,330
330 DATAcos�-cos�,-2sin((�+�)/2)�sin((�-�)/2),320,340
340 DATAtan(45��(�/2)),sec��tan�,330,350
350 DATAtan(45��(�/2)),(1�sin�)/cos�,340,360
360 DATAtan(45��(�/2)),cot(45��(�/2)),350,370
370 DATAtan(45�+�),(1+tan�)/(1-tan�),360,380
380 DATAcot(45�-�),(1+cot�)/(1-cot�),370,380
10010 MODE8:DIM:x=10:y=380:r=x
10110 RESTORE(r)
10120 READm$,n$,b,c
10130 l$="["+MID$(STR$(r/10),2)+"]":l=32-LEN(l$)
10140 CLS:PRINTm$;TAB(l);l$;"=";n$;
10150 z=ASC(INPUT$(1,@))
10170 IFz=29 ANDr<>x THENr=x:GOTO10110
10180 IFz=28 ANDr<>y THENr=y:GOTO10110
10190 IFz=30 ANDr<>b THENr=b:GOTO10110
10200 IF(z=31 ORz=13) ANDr<>c THENr=c:GOTO10110
10280 GOTO10150
