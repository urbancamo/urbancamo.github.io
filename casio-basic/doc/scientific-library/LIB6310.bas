10 MODE8:DIM:GOSUB500:c$=CHR$(5):x=0:n=2:p=0
20 CLS:PRINT"Cumulative frequency  B(x,n,P)";
30 z=n:s$="n":GOSUB400:n=z:IFn<0 ORFRACn<>0 THEN30
40 z=p:s$="P":GOSUB400:p=z:IFp<0 ORp>1 THEN40
50 z=x:s$="x":GOSUB400:x=z:IFx<0 ORx>n ORFRACx<>0 THEN50
60 LOCATE0,1:PRINTc$;".....";
70 sr=0:GOSUB"LIB0:S6310":GOSUB500:IFsr THEN*
75 IFs THENs=ROUND(s,LOG(ABSs)-6)
80 PRINTc$;"p=";s;:z$=INPUT$(1,@):GOTO30
400 LOCATE0,1:PRINTc$;s$;"=";z;"?";:INPUT@10;z:LOCATE0,0:RETURN
500 ONERRORGOTO510:RETURN
510 IFERR=1 THENCLS:ONERRORGOTO0
520 IFERL=400 THENRESUME400
530 LOCATE0,1:PRINTc$;"not found";:z$=INPUT$(1,@):RESUME20