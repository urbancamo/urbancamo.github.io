```basic
;---------------------------------------------------------------
; Cosmic Fly 
; a publich domain game for the Casio PB-1000
; written by Gernot Fink <gernot.fink@munich.netsurf.de>
; published by Andreas Wichmann on 2000-03-03 on
; http://www.itkp.uni-bonn.de/~wichmann/pb1000.html
;---------------------------------------------------------------
; rewrited by BLUE on 2003-02-16 for the Casio FX-870P/VX-4
; rewrited by BLUE on 2003-11-30 for the Casio VX-3
;---------------------------------------------------------------
; Gernot Fink𝜎∫√ｪ𝜇◻⁰ｬ√ｵ∫AAndreas Wichmann𝜎∫√ﾌHP√ﾉPDS𝛼ｵ√「√ﾅ
; 𝜃万𝛾J√ｳ√♣√ﾄ√「√♥Cosmic Fly√×FX-870P/VX-4/VX-3√ﾉ𝛼ﾚ⁰A√ｵ√ﾜ√ｵ√ｽ∫B
; 'I'𝛾'W'i'𝜀⁴ﾅ√ﾍBASIC+'}'V'³𝜃♣𝜇¥⁰ｬ√ﾅ∫A𝜃ﾅ²♠'A'h'𝜃'X(&h7000∫`)√ｩ√π
; √ｵ√ｩ𝜎ﾀ𝜇s√ﾅ√ｫ√ﾈ√ｩ√ﾁ√ｽ√ﾌ√ﾅ√ｷ√ｪ∫A√ｱ√ｿ√π√ﾍ'I∫['𝜀'}'V'³𝜃♣√ﾅ√ｩ√ﾂ
; 𝜇D√ｫ√ﾈ'A'h'𝜃'X√ﾉ𝜇ﾄ'A'Z'³'u'𝜀𝛽ﾂ⁴¥√ﾈ√→√、√ﾉ𝜙¹√ｫ𝛾ｷ√ｦ√ﾄ√「√ﾜ√ｷ∫B
; 𝜎ﾀ𝜇s√ﾉ√ﾍ1520'o'C'g𝛼ﾈ𝜙↑√ﾌ'}'V'³𝜃♣'G'𝛾'A√×𝛾m⁵ﾛ√ｵ√ﾄ𝛽ｺ√ｳ√「∫B
; 𝛼ﾚ⁰A𝜎⁻¹√ﾉ𝜙ｭ∫X𝛽➀¹「√ｵ√ﾄ√「√ﾜ√ｷ√ｪ∫AGAME𝜎ｩ¹ﾌ√ﾍ√ﾙ√ﾚ'I'𝛾'W'i'𝜀√ﾌ²ﾊ√♠√ﾅ√ｷ∫B
;
; HD61R041√ﾅ⁰ｳ𝜙▢√ﾉ'A'Z'³'u'𝜀√ﾅ√ｫ√♥√→√、√ﾉ∫CRCS:√ﾌJP ($2)√×JP $2√ﾉ⁵ﾏ𝜇X∫B
;---------------------------------------------------------------
FX870P:	EQU	1		;FX-870P
VX4:	EQU	2		;VX-4
VX3:	EQU	3		;VX-3
;---------------------------------------------------------------
; 𝜀@𝜎▢√ﾌ⁰ﾝ²♠
;---------------------------------------------------------------
MODEL:	EQU	VX3		;VX3√×¹I¹×

#if (MODEL=FX870P)¦(MODEL=VX4)
LEDTP:	EQU	&H123C		;LCD⁰→³ｪ'A'h'𝜃'X
IOBUF:	EQU	&H19D5		;SAVE/LOAD⁷p I/O'o'b't'@
;
DOTDS:	EQU	&H930F		;LCD𝜇ﾄ⁵¥𝜎ｦ
BEEP:	EQU	&H33B3		;BEEP𝛽ｹ⁴ｭ⁰ｶ
CLS:	EQU	&H2ADF		;𝛽→⁶ﾊ𝜙ﾁ𝜀𝜎(PRINT CHR$(12)√ﾆ³ｯ³⁹)
CROFF:	EQU	&H032E		;'J∫['¥'𝜀OFF(KYIN𝜎⁻¹√ﾌ'J∫['¥'𝜀⁵¥𝜎ｦ√×OFF√ﾉ√ｷ√♥)
KYIN:	EQU	&H03A4		;⁵W𝜙Å'L∫[³➀⁷ﾍ𝜙𝛼⁷﹪∫i$0√ﾉ³➀⁷ﾍ√ｳ√♣√ｽ'L∫['R∫['h√ｪ³➀√♥∫j
INKEY:	EQU	&H191D		;INKEY
BIOS2:	EQU	&H5323		;BIOS(BANK0)√×'R∫['𝜀√ｵ√ﾄBANK1√ﾉ⁶゜√♥𝜎⁻¹√ﾌ'X'^'b'N²l
#if MODEL=FX870P
BASE:	EQU	0		;'v'𝜇'O'𝛽'Å𝛾i⁴['A'h'𝜃'X(FX-870P)
#else
BASE:	EQU	&H1CD0		;'v'𝜇'O'𝛽'Å𝛾i⁴['A'h'𝜃'X(FX-870P/VX-4)
#endif
#endif
#if MODEL=VX3
LEDTP:	EQU	&H6343		;LCD⁵¥𝜎ｦ'h'b'g'o'b't'@
IOBUF:	EQU	&H69CE		;SAVE/LOAD⁷p I/O'o'b't'@
;
KYIN:	EQU	&H03D1	;⁵W𝜙Å'L∫[³➀⁷ﾍ𝜙𝛼⁷﹪∫i$0√ﾉ³➀⁷ﾍ√ｳ√♣√ｽ'L∫['R∫['h√ｪ³➀√♥∫j
CROFF:	EQU	&H1FAE	;'J∫['¥'𝜀ON(KYIN𝜎⁻¹√ﾌ'J∫['¥'𝜀⁵¥𝜎ｦ√×OFF√ﾉ√ｷ√♥)
DOTDS:	EQU	&H1FD5		;LCD𝛽→⁶ﾊ⁵¥𝜎ｦ
CLS:	EQU	&H31CF		;𝛽→⁶ﾊ𝜙ﾁ𝜀𝜎(PRINT CHR$(12)√ﾆ³ｯ³⁹)
INKEY:	EQU	&H194E		;INKEY$𝜙𝛼⁷﹪
BEEP:	EQU	&H3A8B		;BEEP0
BIOS2:	EQU	&H5CA9		;BIOS(BANK0)√×'R∫['𝜀√ｵ√ﾄBANK1√ﾉ⁶゜√♥𝜎⁻¹√ﾌ'X'^'b'N²l
BASE:	EQU	&H6CD0		;'v'𝜇'O'𝛽'Å𝛾i⁴['A'h'𝜃'X
#endif

	ORG	BASE			;∫ｩ𝛾e𝜎ｩ√ﾌ𝛾ﾂ𝜀ｫ√ﾉ𝜇█√▢√ｹ√ﾄ'𝛾'𝜇'P∫['g√ｵ√ﾄ√ｭ√ｾ√ｳ√「
	START	MAIN
;-----------------------------------------------------
; MAIN𝜙𝛼⁷﹪
; ³➀⁷ﾍ∫F√ﾈ√ｵ
; 𝜙o⁷ﾍ∫F√ﾈ√ｵ
;-----------------------------------------------------
MAIN:
	PRE	IX,LEDTP+192*4		;⁷⁸⁷p'𝜙∫['N'G'𝛾'A(192'o'C'g)√×¹ﾒ⁴×√ｷ√♥
	PRE	IY,LEDTP+192*5-1	;
	PRE	IZ,IOBUF		;¹ﾒ⁴×⁰→=IOBUF
	BUP				;

	LDW	$0,SCORE		;SCORE'N'𝛾'A
	STW	0,($0)			;

TOP:
	LDW	$0,SHIPNUM		;SHIP𝜎c𝜀@𝜙𝛽𝛾∓𝛽ｻ
	ST	3,($0)			;(3𝜀@)
	CAL	SSH			;FLY'f∫['^𝜙𝛽𝛾∓𝛽ｻ

	CAL	DISPTITLE		;TITLE⁵¥𝜎ｦ
LOOP:
	CAL	INIT			;𝜙𝛽𝛾∓𝛽ｻ
	CAL	GAME			;GAME𝜙𝛼⁷﹪
	JR	Z,BASIC			;BRK³➀⁷ﾍ√ﾅBASIC√ﾉ⁶゜√♥

	CAL	@BEEP			;SHIP⁴j𝛽⽉𝛽ｹ(BEEP)
	CAL	@BEEP			;

	PRE	IZ,SHIPNUM		;SHIP𝜎c𝜀@𝜇X⁰V
	SB	(IZ+$31),$30		;-1
	JR	NZ,LOOP			;

	PRE	IZ,SCORE		;SCORE/HISCORE𝜎→√♠𝜙o√ｵ
	LDIW	$0,(IZ+$31)		;(SCORE)
	LDW	$2,(IZ+$31)		;(HISCORE)
	SBCW	$2,$0			;HISCORE < SCORE ?
	JR	NC,MAIN0		;
	STW	$0,(IZ+$31)		;HISCORE𝜇X⁰V
MAIN0:
	CAL	RELOAD			;'𝜙∫['N'G'𝛾'A𝜙△⁵円⁵ⁿ𝜀A
	CAL	STATUS			;HI,SC,SHIP⁵¥𝜎ｦ
	CAL	OVER			;GAMEOVER𝜙𝛼⁷﹪
	JR	Z,TOP			;SPC³➀⁷ﾍ√ﾅ𝜇ﾄ'Q∫['Å

BASIC:
	CAL	RELOAD			;'𝜙∫['N'G'𝛾'A𝜙△⁵円⁵ⁿ𝜀A
	PST	UA,&H54			;BASIC√ﾉ⁶゜√♥
	RTN				;(BANK0)

;-----------------------------------------------------
;'𝜙∫['N'G'𝛾'A𝜙△⁵円⁵ⁿ𝜀A
;-----------------------------------------------------
RELOAD:
	PRE	IZ,LEDTP+192*4		;⁷⁸⁷p'𝜙∫['N'G'𝛾'A(192'o'C'g)√×⁵ⁿ𝜀A√ｷ√♥
	PRE	IX,IOBUF		;¹ﾒ⁴×'f∫['^𝛾i⁴[⁰→=IOBUF
	PRE	IY,IOBUF+191		;
	BUP				;
	RTN				;

;-----------------------------------------------------
;𝛽→⁶ﾊ𝜀y√ﾑ'𝜙∫['N'G'𝛾'A𝜙𝛽𝛾∓𝛽ｻ
;-----------------------------------------------------
INIT:
	CAL	@CLS			;CLS

	PRE	IX,BOMBWK		;BOMB WORK'N'𝛾'A
	XRW	$0,$0			;
	LD	$2,8			;
WKCLR:	STIW	$0,(IX+$31)		;
	SB	$2,$30			;
	JR	NZ,WKCLR		;
	CAL	STATUS			;HI,SC,SHIP⁵¥𝜎ｦ
	RTN

;-----------------------------------------------------
; SCORE/HI-SOCRE/𝜎c𝜀@⁰⁴ ⁵¥𝜎ｦ
;-----------------------------------------------------
STATUS:	PRE	IZ,LEDTP+192+126	;HI-SC⁵¥𝜎ｦ
	LDW	$0,HI			;
	OR	$3,$30			;
	CAL	PRINT			;
	LDW	$0,HISCORE		;HISCORE⁵¥𝜎ｦ
	LDW	$0,($0)			;
	PRE	IZ,LEDTP+&H161		;
	CAL	NUM			;

	PRE	IZ,LEDTP+(192*2)+126	;SC⁵¥𝜎ｦ
	LDW	$0,SC			;
	CAL	PRINT			;
	LDW	$0,SCORE		;SCORE⁵¥𝜎ｦ
	LDW	$0,($0)			;
	PRE	IZ,LEDTP+&H221		;
	CAL	NUM			;

	PRE	IZ,LEDTP+(192*3)+126	;SHIP⁵¥𝜎ｦ
	LDW	$0,SH			;
	CAL	PRINT			;

	LDW	$0,SHIPNUM		;SHIP𝜎c𝜀@⁰⁴𝜎→√♠𝜙o√ｵ
	LD	$20,($0)		;
	AN	$20,$20			;𝜎c𝜀@'['𝜇√ﾈ√π𝜀⽉⁴²√×⁵¥𝜎ｦ
	JR	Z,STR0			;
	PRE	IX,SHIPCHR		;SHIP⁵¥𝜎ｦ'f∫['^'Z'b'g
STR:
	LDM	$0,(IX+$31),6		;SHIP⁵¥𝜎ｦ
	STIM	$0,(IZ+$31),6		;
	SB	$20,$30			;
	JR	NZ,STR			;
	RTN
STR0:
	XRM	$0,$0,6			;⁵¥𝜎ｦ'p'^∫['³'N'𝛾'A
	STIM	$0,(IZ+$31),6		;𝜀⽉⁴²⁵¥𝜎ｦ
	RTN

;-----------------------------------------------------
; TITLE𝛽→⁶ﾊ
;-----------------------------------------------------
DISPTITLE:
	CAL	@CLS			;CLS

	PRE	IZ,LEDTP		;TITLE1⁵¥𝜎ｦ
	LDW	$0,TITLE1		;
	OR	$3,$30			;
	CAL	PRINT			;
	PRE	IZ,LEDTP+192		;TITLE2⁵¥𝜎ｦ
	LDW	$0,TITLE2		;
	CAL	PRINT			;
	PRE	IZ,LEDTP+(192*2)	;TITLE3⁵¥𝜎ｦ
	LDW	$0,TITLE3		;
	CAL	PRINT			;
	PRE	IZ,LEDTP+(192*3)	;TITLE4⁵¥𝜎ｦ
	LDW	$0,TITLE4		;
	CAL	PRINT			;

	CAL	STATUS			;HI,SC,SHIP⁵¥𝜎ｦ

	CAL	@BEEP			;BEEP

	CAL	@DOTDS			;DISPLAY LCD

	LDW	$0,SCORE		;SCORE'N'𝛾'A
	STW	0,($0)			;

;-----------------------------------------------------
; [EXE]'L∫[³➀⁷ﾍ¹ﾒ√ｿ
;-----------------------------------------------------
KEYWAIT:
#if 0
	LDW	$2,INKEY		;INKEY$𝜎ﾀ𝜇s
	CAL	RCS			;
	SBC	$17,$31			;
	JR	Z,KEYWAIT		;

	LDW	$0,($15)		;[EXE]³➀⁷ﾍ√ﾜ√ﾅ¹ﾒ√ﾂ
#else
	LDW	$2,CROFF		;'J∫['¥'𝜀⁵¥𝜎ｦOFF
	CAL	RCS			;

	LDW	$2,KYIN			;KYIN√×𝜎ﾀ𝜇s
	CAL	RCS			;
#endif
	SBC	$0,&H0D			;
	JR	NZ,KEYWAIT		;
	RTN

;-----------------------------------------------------
; GAME OVER𝜙𝛼⁷﹪
;-----------------------------------------------------
OVER:
	PRE	IZ,LEDTP+200		;GAME OVER⁵¥𝜎ｦ
	LDW	$0,GAMEOVER		;
	OR	$3,$30			;
	CAL	PRINT			;
	PRE	IZ,LEDTP+(192*2)+24	;KEY TITLE⁵¥𝜎ｦ
	LDW	$0,KEYTITLE		;
	CAL	PRINT			;

	CAL	@DOTDS			;DISPLAY LCD

	CAL	KEYWAIT			;[EXE]³➀⁷ﾍ√ﾜ√ﾅ¹ﾒ√ﾂ
	RTN

;-----------------------------------------------------
; 'Q∫['Å'∫'C'³𝜙𝛼⁷﹪
;-----------------------------------------------------
GAME:
;	XRW	$19,$19			;'𝜙∫['N𝜙𝛽𝛾∓𝛽ｻ
	LD	$22,$31			;SCORE⁵¥𝜎ｦ⁷v𝜀∫'t'𝛽'O𝜙𝛽𝛾∓𝛽ｻ

	GPO	$0			;BEEP⁷p'f∫['^𝜎→√♠𝜙o√ｵ
	AN	$0,127			;
	OR	$0,64			;
	PST	PD,$0			;²▒√ｭ√π√「√ﾌ𝛽ｹ⁷ﾊ√×⁰ﾝ²♠

	LDW	$27,&H2C00		;SHIP𝛼ﾊ²u 𝜙𝛽𝛾∓²l'Z'b'g
	XRW	$24,$24			;
;	PST	IA,&H3D			;KEY'X'L'''³'R∫['h⁰ﾝ²♠(⁷⁰⁰⁴⁷p)
L1:	CAL	SHT			;𝛽ｹ√ｾ√ｵ𝜙𝛼⁷﹪
	SB	$29,$30			;
	JR	NZ,L1			;
	LD	$29,90			;∫EIV(MIN70)

	CAL	KEY			;KEY ³➀⁷ﾍ
	RTN	Z			;BRK√ﾉ√ﾄ𝜙I⁷ｹ

	AD	$17,$30			;FLY𝜙𝛼⁷﹪√ﾍ√Q'X'L'''³√ﾉ𝛼♣𝛽円𝜎ﾀ𝜇s
	ANC	$17,$30			;
	JR	Z,LO2			;
	CAL	FLY			;FLY 𝛼ﾚ³ｮ
LO2:	CAL	SHIP			;SHIP 𝛼ﾚ³ｮ

	ANC	$17,$30			;𝛽→⁶ﾊ𝜇X⁰V⁷v𝜀∫√␣√♠ ?
	JR	Z,LO1			;NO --> LO1

	CAL	@DOTDS			;DISPLAY LCD

	AN	$22,$22			;SCORE⁵¥𝜎ｦ⁷v𝜀∫√␣√♠
	JR	Z,LO1			;NO --> LO1

	LDW	$0,SCORE		;SCORE 𝜎→√♠𝜙o√ｵ
	LDW	$0,($0)			;
	PRE	IZ,LEDTP+&H221		;SCOER⁵¥𝜎ｦ'A'h'𝜃'X⁰ﾝ²♠
	CAL	NUM			;SCORE⁵¥𝜎ｦ
	LD	$22,$31			;

LO1:	SBC	$28,255			;SHIP⁴j𝛽⽉
	JR	NZ,L1			;NO --> LO1
	OR	$0,$30			;
	RTN

;-----------------------------------------------------
; KEY³➀⁷ﾍ𝜙𝛼⁷﹪
;-----------------------------------------------------
KEY:	PST	IA,5			;KEY'X'L'''³'R∫['h⁰ﾝ²♠
	CAL	SCAN			;
	SBC	$0,&H04			;𝜇ｶ[4]
	JR	NZ,K1			;
	SBC	$28,$31			;𝜇ﾀ⁵W0√ﾈ√π𝜙𝛼⁷﹪𝜙I⁷ｹ
	JR	Z,K1			;
	SB	$28,2			;

K1:	PST	IA,7			;KEY'X'L'''³'R∫['h⁰ﾝ²♠
	CAL	SCAN			;
	SBC	$0,&H1			;𝛽E[6]
	JR	NZ,K2			;
	SBC	$28,100			;
	JR	Z,K2			;
	AD	$28,2			;

K2:	PST	IA,9			;KEY'X'L'''³'R∫['h⁰ﾝ²♠
	CAL	SCAN			;
	SBC	$0,&H04			;SHOT[0]
	JR	NZ,K3			;
	ANC	$25,255			;
	JR	NZ,K3			;
	LD	$27,$30			;

K3:	PST	IA,1			;KEY'X'L'''³'R∫['h⁰ﾝ²♠
	CAL	SCAN			;
	SBC	$0,&H80			;BRK𝛼ﾈ𝛾O√ﾈ√π'm'³'['𝜇𝜙⽉¹ﾔ√ﾅ'𝛾'^∫['³
	RTN	NZ			;
	XR	$0,$0			;BRK√×𝛽÷√ｳ√♣√ｽ√π'['𝜇't'𝛽'O√×⁷ｧ√ﾄ√♥
	RTN

;-----------------------------------------------------
; 'L∫['X'L'''³𝜙𝛼⁷﹪
;-----------------------------------------------------
SCAN:	GRE	KY,$0			;'L∫[³➀⁷ﾍ(1)
	GRE	KY,$1			;'L∫[³➀⁷ﾍ(2)
	SBC	$0,$1			;(1)=(2)√ﾈ√π√ﾎ∫A³➀⁷ﾍ'f∫['^√×⁰M⁷p√ｷ√♥∫B
	JR	NZ,SCAN			;
	RTN

;-----------------------------------------------------
; SHIP𝛼ﾚ³ｮ/'~'T'C'𝜀⁰ｧ𝜃←
;-----------------------------------------------------
SHIP:	SBC	$28,255			;SHIP⁴j𝛽⽉√ｳ√♣√ｽ√π∫A𝜙𝛼⁷﹪𝜙I⁷ｹ
	RTN	Z
	PRE	IX,LEDTP+&H23E		;LCD⁵¥𝜎ｦ'A'h'𝜃'X⁰ﾝ²♠
	LDI	$0,(IX+$28)
	ANC	$27,7
	JR	Z,SH2
	XRC	$23,255
	JR	Z,SH2
	GRE	IX,$24
SH2:	PRE	IZ,SHIPG		;SHIP⁵`𝛽→'f∫['^'A'h'𝜃'X'Z'b'g
	LD	$0,13
SH1:	LD	$1,(IZ+$0)
	LD	$9,(IX+$0)
	AN	$9,248
	OR	$1,$9
	ST	$1,(IX+$0)
	SB	$0,$30
	JR	NZ,SH1
	LDW	$0,LEDTP-2
	SBCW	$24,$0
	JR	C,SH5
	LD	$0,255
	PRE	IX,$24
	LD	$2,(IX+7)
	SBC	$2,7
	JR	Z,SH8
	ANC	$2,255
SH8:	ST	$0,(IX+7)
	JR	NZ,TR
	SBC	$2,7
	LDW	$0,192
	ST	$1,(IX+199)
	SBW	$24,$0,JR SH4
SH5:	ANC	$25,255
	JR	Z,SH6
	PRE	IX,$24
	LD	$0,$31
	ST	$0,(IX+199)
SH6:	LD	$25,$31
SH4:	RTN

;-----------------------------------------------------
; FLY⁴j𝛽⽉𝜙𝛼⁷﹪
;-----------------------------------------------------
TR:	LD	$23,255			;FLY⁴j𝛽⽉'Z'b'g
	LDW	$16,$30
	LD	$22,$30			;SCORE𝜇X⁰V⁷v𝜀∫'Z'b'g

	LDW	$2,SCORE		;SCORE𝜎→√♠𝜙o√ｵ
	LDW	$0,($2)			;
	ADBW	$0,$16			;SCORE¹﹪𝛽ﾁ(+1)
	STW	$0,($2)			;SCORE𝜇X⁰V

	LD	$25,$31			;
	ST	$25,(IX+199)		;
	LD	$27,5			;
	GRE	IX,$19			;FLY𝛽→⁶ﾊ'A'h'𝜃'X⁵ﾛ¹ｶ
	PRE	IZ,CRASHG		;⁴⁺⁴ｭ⁷p'f∫['^'Z'b'g
CLEX:	LD	$0,12
T1:	LDI	$1,(IZ+$31)		;FLY⁴⁺⁴ｭ'p'^∫['³⁵¥𝜎ｦ
	STI	$1,(IX+$31)		;
	LD	$1,(IZ+11)		;
	ST	$1,(IX+191)		;
	SB	$0,$30
	JR	NZ,T1
	RTN

;-----------------------------------------------------
; 𝛽ｹ√ｾ√ｵ
;-----------------------------------------------------
SHT:	GPO	$2			;𝜃ｻ𝜇ﾝ√ﾌ'¦∫['g𝜙⽉¹ﾔ√×³ﾇ√ﾝ𝜙o√ｷ
	LDW	$0,4
	ANC	$27,255			;²ﾊ𝜙▢√ﾌ𝛽ｹ√ｾ√ｵ
	JR	Z,W2
	SBW	$26,$0
	SBC	$23,255			;FLY⁴⁺⁴ｭ𝛽ｹ ?
	JR	Z,W4
	ANC	$26,$23
	JR	Z,W1
W4:	XR	$2,192			;'¦∫['g⁴ｽ³](𝛽ｹ𝜙o√ｵ)
	PST	PD,$2
W1:	RTN

W2:	LD	$23,&H21
	ANC	$20,255
	JR	Z,NC1
	PRE	IZ,SHIPWK		;0'p'^∫['³√×⁵`𝛽→√ｷ√♥(&H739E)
	PRE	IX,$19			;FLY𝛽→⁶ﾊ'A'h'𝜃'X'Z'b'g
	CAL	CLEX
	LD	$20,$31
NC1:	RTN

;-----------------------------------------------------
; FLY𝛼ﾚ³ｮ/BOMB⁰ｧ𝜃←
;-----------------------------------------------------
FLY:	LD	$13,8			;FLY𝜀@⁰⁴³ﾇ√ﾝ𝜇⁻¹√ﾝ(MAX8)
	LDW	$14,FLYDAT		;FLY'f∫['^'G'𝛾'A'¦'C'³'^⁰ﾝ²♠
	LD	$12,$31			;
Y1:	LDW	$2,($14)
	CAL	SHAPE			;FLY𝜙ﾁ𝜀𝜎
	ADW	$14,$30			;FLY'𝜙∫['N'A'h'𝜃'X𝜇X⁰V
	ADW	$14,$30
	SB	$13,$30			;FLY𝜀@⁰⁴√ｪ⁶ｳ√ｭ√ﾈ√♥√ﾜ√ﾅ𝜃J√♠⁵ﾔ√ｵ
	JR	NZ,Y1

;	CAL	BOMB
	CAL	BOMB			;BOMB𝜙𝛼⁷﹪

	LD	$13,8			;FLY𝜀@⁰⁴³ﾇ√ﾝ𝜇⁻¹√ﾝ
	LDW	$14,FLYDAT		;FLY'f∫['^'G'𝛾'A'¦'C'³'^⁰ﾝ²♠ &HC0
	LD	$10,$31

Y2:	PRE	IX,$14			;IX = FLY'f∫['^'G'𝛾'A'¦'C'³'^

	GRE	KY,$0			;KEY'𝜃'W'X'^√×⁷⁰⁰⁴√ﾌ𝜎▢√ﾆ√ｷ√♥
	LD	$0,$31			;

	LD	$11,(IX+$31)		;$11 = FLY𝜇ﾀ⁵W
	SBC	$28,$11			;
	JR	C,NORE			;

	LD	$0,2			;$0 = 2

NORE:	GST	TM,$11			;$11 = (TM xor FLY'J'E'³'^²l) and 5
	XR	$11,$13			;
	AN	$11,5			;
	JR	Z,ZIEL			;
	LD	$0,$1			;$0 = $1(KEY'R∫['h)

ZIEL:	AN	$0,2			;BIT<1>𝜎→√♠𝜙o√ｵ(0 or 2)
	LD	$1,(IX+$31)		;$1 = FLY𝜇ﾀ⁵W
	XRC	$1,255			;FLY ⁴j𝛽⽉√ｳ√♣√ﾄ√「√♥?
	JR	Z,Y3			;𝜎÷√ﾌFLY𝜙𝛼⁷﹪√ﾖ

	LD	$10,$30			;$10 = 1
	SBC	$1,100			;FLY𝜇ﾀ⁵W < 100 ?
	JR	NC,Y4			;
	AD	(IX+$31),$0		;FLY𝜇ﾀ⁵W𝜇X⁰V+2(√ﾜ√ｽ√ﾍ0)

Y4:	LD	$0,$30			;$0 = 1
	ANC	$1,255			;FLY𝛽→⁶ﾊ²[($1 = 255) ?
	JR	Z,Y5			;YES --> Y5
	SB	(IX+$31),$0		;FLY𝜇ﾀ⁵W𝜇X⁰V-2(√ﾜ√ｽ√ﾍ0)

Y5:	LD	$1,(IX+$30)		;$1 = FLY'X'e∫['^'X
	ANC	$1,255			;FLY⁴j𝛽⽉
	JR	Z,B3			;
	SB	(IX+$30),$0		;

B3:	GST	TM,$0			;$0 = TM'𝜃'W'X'^
	XR	$0,$8			;
	AN	$0,$30			;
	BIU	$0			;
	LD	$1,(IX+$30)		;$1 = FLY'X'e∫['^'X
	SBC	$1,15			;$1 > 15
	JR	NC,B2			;
	AD	(IX+$30),$0		;
B2:	LDW	$2,($14)		;
	LD	$12,255			;
	CAL	SHAPE			;

Y3:	ADW	$14,$30			;FLY'𝜙∫['N'A'h'𝜃'X𝜇X⁰V
	ADW	$14,$30			;

	SB	$13,$30			;FLY'J'E'³'g -1
	JR	NZ,Y2

	ANC	$10,$30			;FLY𝜎c𝜀@√ﾈ√ｵ
	JR	Z,SSH			;FLY'𝜙∫['N'f∫['^√×𝜙𝛽𝛾∓𝛽ｻ√ｷ√♥
	RTN

;-----------------------------------------------------
; FLY𝜇ﾀ⁵W𝜙𝛽𝛾∓𝛽ｻ
;-----------------------------------------------------
SSH:	PRE	IX,FLYDAT		;FLY'𝜙∫['N⁰→³ｪ'¦'C'³'^⁰ﾝ²♠
	LD	$10,16			;'𝜙∫['N'o'C'g⁰⁴=16

SSH1:	LD	$0,(IX+16)		;√P'o'C'g³]¹⁷
	STI	$0,(IX+$31)		;

	SB	$10,$30			;³]¹⁷𝜙I⁷ｹ
	JR	NZ,SSH1
	RTN

;-----------------------------------------------------
; FLY⁵¥𝜎ｦ𝜙𝛼⁷﹪
;-----------------------------------------------------
SHAPE:	LD	$9,$31			;$9 = 0

	XRC	$2,255			;𝜙𝛼⁷﹪⁷v𝜀∫√␣√♠
	JR	Z,NOSH			;

	LD	$0,$3			;$0 = FLY'X'e∫['^'X(Y𝜇ﾀ⁵W)
	AN	$0,7			;'}'X'N(07h)

	AN	$2,127			;FLY X𝜇ﾀ⁵W'}'X'N(7fh)
	LD	$1,$3			;$1 = FLY'X'e∫['^'X
	PRE	IX,LEDTP-1		;LCD𝛽→⁶ﾊ⁰→³ｪ𝜇ﾀ⁵W'Z'b'g(&H6200)

S1:	ANC	$1,&H18			;'X'e∫['^'X BIT<4>=0 and BIT<0>=0 ?
	JR	Z,S2			;

	LDI	$4,(IX+191)		;𝛽→⁶ﾊ𝜇ﾀ⁵W𝜇X⁰V(IX=IX+192)
	SB	$1,8,JR S1		;'X'e∫['^'X𝜇X⁰V(-8)

S2:	LDI	$4,(IX+$2)		;FLY⁵¥𝜎ｦ
	PRE	IZ,FLYG			;
	LD	$4,5
S3:	LD	$6,(IZ+$4)
	LD	$5,$31
	LD	$8,$0

	XRC	$12,$31
	JR	Z,S5

S4:	ANC	$8,7
	JR	Z,S5
	BIDW	$6
	SB	$8,$30,JR S4

S5:	LD	$8,(IX+$31)		;
	XR	$8,$6			;
	AN	$8,$12			;
	ST	$8,(IX+$31)		;
	LD	$8,(IX+192)		;

	SBC	$8,&HAA
	JR	NZ,SHA1

	LD	$12,15			;FLY⁴j𝛽⽉'Z'b'g
	LD	$9,255			;
	ST	$9,($14)		;

SHA1:	XR	$8,$5
	AN	$8,$12

	ST	$8,(IX+192)
	LDI	$8,(IX+$31)

	SB	$4,$30
	JR	NZ,S3
NOSH:	RTN

;-----------------------------------------------------
; BOMB𝜙𝛼⁷﹪
;-----------------------------------------------------
BOMB:	LDW	$0,BOMBWK		;FLYDATA+&H20;&H73E0
	AD	$21,$30			;FLY'J'E'³'g𝜇X⁰V
	LD	$2,8			;BOMB𝜃ﾂ⁰⁴(MAX15)

B1:	LDW	$6,($0)			;BOMB𝜇ﾀ⁵W³ﾇ√ﾝ𝜇⁻¹√ﾝ
	ANC	$6,255			;𝛽→⁶ﾊ²[√ﾅ⁶ｳ√ｯ√♣√ﾎ∫A⁵`𝛽→𝜙𝛼⁷﹪(B9)√ﾖ
	JR	NZ,B9			;

	LDW	$3,FLYDAT		;FLY𝜇ﾀ⁵W𝜎→√♠𝜇⁻¹√ﾝ(&H73C0)
	LD	$5,$21			;FLY'J'E'³'g²l√×¹↑³➀
	AD	$21,$30			;+1∫i'J'E'³'g𝜇X⁰V)
	AN	$5,7			;$5 = $5 MOD 7
	BIU	$5			;*2
	OR	$3,$5			;&H73C0+(0,2,4,..,14)
	LDW	$3,($3)			;FLY𝜇ﾀ⁵W³ﾇ√ﾝ𝜇⁻¹√ﾝ

	SBC	$3,255			;FLY⁴j𝛽⽉√ﾈ√π∫A𝜎÷√ﾌBOMB𝜙𝛼⁷﹪√ﾖ
	JR	Z,B8			;

	OR	$3,$30			;$3 = $3 or 1
	STW	$3,($0)			;'𝜙∫['N'A'𝛾'A³≥⁷e𝜇X⁰V
	LDW	$6,$3			;𝜇X⁰V√ｵ√ｽ𝜇ﾀ⁵W√×⁷^√ｦ√♥

B9:	LD	$3,$7			;BOMB⁵¥𝜎ｦ𝜙𝛼⁷﹪
	PRE	IX,LEDTP-1		;&H6200
	LDI	$8,(IX+$6)		;BOMB𝜇ﾀ⁵W'f∫['^³ﾇ√ﾝ𝜇⁻¹√ﾝ
	LD	$6,128			;

B4:	AN	$3,7			;
	JR	Z,B12			;
	BID	$6			;
	SB	$3,$30,JR B4		;

B12:	SBC	$7,30			;
	JR	NZ,B6			;

	LD	$6,7			;BOMB⁴ｭ𝜎ﾋ𝛽ｹ
	CAL	SB			;

B6:	AN	$7,&H18			;
	JR	Z,B7			;

	LDI	$3,(IX+191)
	SB	$7,8,JR B6

B7:	ST	$6,(IX+2)
	AN	$6,127
	JR	NZ,B10
	ST	$6,(IX-190)
B10:	LDW	$6,($0)
	AD	$7,$30
	STW	$6,($0)
	SBC	$7,32
	JR	C,B8
	LD	$3,$31
	ST	$3,(IX+2)

	SB	$6,$28			;SHIP⁴j𝛽⽉?
	SB	$6,9			;
	JR	NC,B11			;NO-->B11
	LD	$28,255			;SHIP⁴j𝛽⽉'Z'b'g

B11:	XRW	$6,$6			;BOMB'𝜙∫['N𝜙ﾁ⁶ﾅ
	STW	$6,($0)			;

B8:	ADW	$0,$30			;'𝜙∫['N'A'h'𝜃'X𝜇X⁰V
	ADW	$0,$30			;

	SB	$2,$30			;BOMB⁰⁴ -1
	JP	NC,B1
	RTN

;-----------------------------------------------------
; BOMB⁷p𝛽ｹ√ｾ√ｵ𝜙𝛼⁷﹪
;-----------------------------------------------------
SB:	LD	$12,3			;𝛽ｹ𝜙o√ｵ𝜙𝛼⁷﹪
SB1:	GPO	$13			;
	XR	$13,192			;𝛽ｹ√ﾌ𝜙⽉¹ﾔ√×⁴ｽ³]√ｷ√♥
	PST	PD,$13			;
	SB	$12,$30			;⁰ﾝ²♠√ｳ√♣√ｽ𝛽円⁰⁴⁵ｪ∫A𝜃J√♠⁵ﾔ√ｷ
	JR	NZ,SB1			;
	RTN

;-----------------------------------------------------
; SCORE⁵¥𝜎ｦ
; BANK2⁰→³ｪ√ﾉ√␣√♥FONT'f∫['^√×𝜎g√ﾁ√ﾄ³ｾ³_√×⁵¥𝜎ｦ√ｷ√♥
; ³➀⁷ﾍ IZ=LCD⁵¥𝜎ｦ𝛾J𝜎n'A'h'𝜃'X
;-----------------------------------------------------
NUM:
	GST	UA,$2			;BANK⁵ﾛ¹ｶ
	PST	UA,&H65			;BANK 2⁰ﾝ²♠(IX)
	LD	$3,4			;⁵¥𝜎ｦ𝜃Ω⁰ﾝ²♠(5𝜃Ω)
LL:	
	PRE	IX,&H10*6		;⁰⁴𝜎⁺FONT'A'h'𝜃'X⁰→³ｪ𝜎w²♠
	LD	$4,$1			;𝜇ﾅ𝜙↑𝛼ﾊ𝜃Ω𝜎→√♠𝜙o√ｵ
	AN	$4,&HF0			;

	BID	$4			;'t'H'³'g'A'h'𝜃'X𝜃v𝜎Z
	LD	$5,$4			;
	BID	$5			;
	BID	$5			;
	SB	$4,$5			;

	LDM	$5,(IX+$4),6		;'t'H'³'g⁵¥𝜎ｦ
	STIM	$5,(IZ+$31),6		;

	DIUW	$0			;𝜃Ω𝛽ｺ√ー
	SB	$3,$30			;
	JR	NC,LL			;

	PST	UA,$2			;BANK√×𝜃ｳ√ﾉ⁶゜√ｷ
	RTN

;-----------------------------------------------------
; PRINT 𝜙𝛼⁷﹪
; IZ√ｩ√π𝜎n√ﾜ√♥LCD𝛽→⁶ﾊ𝜙↑√ﾉ($0)√ﾅ𝜎w²♠√ｳ√♣√ｽ⁵ｶ𝜎⁺⁷円√×⁵¥𝜎ｦ√ｷ√♥∫B
; ³➀⁷ﾍ∫F$0,$1=𝜎w²♠⁵ｶ𝜎⁺⁷円'¦'C'³'^
;       $3=⁵ｶ𝜎⁺⁴ｽ³](0𝛼ﾈ𝛾O:NORMAL、0:⁴ｽ³])
;       IZ= LCD⁵¥𝜎ｦ'¦'C'³'^
; ⁴j𝛽⽉√ｳ√♣√♥'𝜃'W'X'^ IZ,IX,$0∫`$8
;-----------------------------------------------------
PRINT:
PRL:
	LD	$4,($0)			;√P⁵ｶ𝜎⁺𝜎→√♠𝜙o√ｵ
	AN	$4,$4			;NULL√ﾈ√π𝜙I⁷ｹ
	JR	Z,PREND			;

	SB	$4,&H20			;'L'''𝛽'N'^'R∫['h⁵≠⁰ｳ

	LD	$5,$31			;'t'H'³'g'A'h'𝜃'X𝜃v𝜎Z
	BIUW	$4			;*2(2⁴{)
	LDW	$6,$4			;
	BIUW	$6			;*2(4⁴{)
	ADW	$4,$6			;(6⁴{√×𝜇◻⁰ｬ)
	PRE	IX,$4			;FONT'A'h'𝜃'X𝜎w²♠

	GST	UA,$2			;BANK⁵ﾛ¹ｶ
	PST	UA,&H65			;BANK 2⁰ﾝ²♠(IX)
	LDM	$4,(IX+$31),6		;FONT³ﾇ√ﾝ𝜇⁻¹√ﾝ
	PST	UA,$2			;BANK√×𝜃ｳ√ﾉ⁶゜√ｷ

	STIM	$4,(IZ+$31),6		;FONT⁵¥𝜎ｦ

	ADW	$0,$30			;⁵ｶ𝜎⁺⁷円'¦'C'³'^𝜇X⁰V
	JR	PRL			;
PREND:
	RTN

;-----------------------------------------------------
; CLS
;-----------------------------------------------------
@CLS:
	LDW	$2,CLS			;CLS
	JR	RCS			;

;-----------------------------------------------------
; BEEP⁴ｭ⁰ｶ
;-----------------------------------------------------
@BEEP:
	LDW	$2,BEEP			;BEEP
	JR	RCS			;

;-----------------------------------------------------
; LCD𝜇ﾄ⁵¥𝜎ｦ
;-----------------------------------------------------
@DOTDS:
	LDW	$2,DOTDS		;DISPLAY LCD

;-----------------------------------------------------
; BIOS'𝜀∫['`'³𝜃ﾄ√ﾑ𝜙o√ｵ𝜙𝛼⁷﹪
;-----------------------------------------------------
RCS:	LDW	$0,BIOS2
	PHSW	$1
	PST	UA,&H54
	JP	$2

;-----------------------------------------------------
; '𝜙∫['N/⁵ﾏ⁰⁴
;-----------------------------------------------------
SHIPNUM:DB	0			;SHIP𝜎c𝜀@⁰⁴'𝜙∫['N
SCORE:	DW	0			;SCORE'f∫['^
HISCORE:DW	0			;HI-SCORE'f∫['^

;-----------------------------------------------------
; ⁵¥𝜎ｦ⁵ｶ𝜎⁺⁷円
;-----------------------------------------------------
TITLE1:	DB	"## Cosmic Fly ##",0
TITLE2:	DB	"Key Function",0
TITLE3:	DB	"Left[4] Right[6]",0
TITLE4:	DB	"Shot[0] Start[EXE]",0
GAMEOVER:DB	"** GAME OVER **",0
KEYTITLE:DB	"PUSH [EXE]",0
HI:	DB	"HI-SC:",0
SC:	DB	"SCORE:",0
SH:	DB	"SHIP :",0
SHIPCHR:DB	&H04,&H0C,&H1C,&H0C,&H04,&H00	;SHIP'L'''𝛽'N'^

;-----------------------------------------------------
; FLY & BOMB⁷p⁵¥𝜎ｦ'f∫['^/'𝜙∫['N'G'𝛾'A
;-----------------------------------------------------
;16'o'C'g'A'𝛽'C'³𝜙↑√ﾉ'f∫['^√×𝛾i⁴[√ｷ√♥⁵K⁷v√ｪ√␣√♥
GDATA:	ORG	(GDATA+16)#&HFFF0
SHIPG:	DB	0,0,0,&H01,&H03,&H03,&H03,&H07,&H03,&H03,&H03,&H01,&H00
FLYG:	DB	0,&HC0,&HD0,&H20,&HD0,&HC0,&H00,&H00,&H00
CRASHG:	DB	&H51,&H0A,&HA5,&H8F,&H46,&HAA,&H49,&HAA,&H8F,&HA5,&H0A,&H51
	DB	&H8A,&H50,&HA5,&HF2,&H4E,&HAA,&H4B,&HAA,&HF2,&HA5,&H50,&H8A
SHIPWK:	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	DS	10
FLYDAT:	DB	&H00,&H01,&H18,&H03,&H38,&H07,&H58,&H03
	DB	&H00,&H11,&H18,&H12,&H38,&H13,&H58,&H14
	DB	&H00,&H01,&H18,&H03,&H38,&H07,&H58,&H03
	DB	&H00,&H10,&H18,&H10,&H38,&H10,&H58,&H10
BOMBWK:	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
```