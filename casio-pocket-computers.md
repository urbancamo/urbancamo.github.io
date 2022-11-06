# Casio Pocket Computers

A collection of information about Casio Pocket Computers. As a kid of the 80's mad
on computers these computers were so appealing. Back in the day I had a
[Casio PB-410](https://ithistory.org/db/hardware/casio-computer-co-ltd/casio-pb-410).

I've recently acquired a Casio FX-850P and a Casio VX-4. There doesn't appear to be
an emulator for these machines which would be a great help in writing BASIC programs.
So I've set myself a mission to try and get to that point, with the aid of the
[Retrochallenge Competition](https://www.retrochallenge.org) to spur me on. I'm also planning
on creating a repository for the BASIC code that still exists on the internet, with the aim
of being able to present these in Unicode for ease of reference.

Here's a short example from 
[routine LIB5810 of the FX-850P Scientific Library](casio-basic/doc/scientific-library/LIB5810.md):

```basic
10 DATAsin²𝜃+cos²𝜃,1,10,20
20 DATA1+tan²𝜃,sec²𝜃,10,30
30 DATA1+cot²𝜃,cosec²𝜃,20,40
40 DATAsin(𝛼±𝛽),sin𝛼・cos𝛽±cos𝛼・sin𝛽,30,50
50 DATAcos(𝛼±𝛽),cos𝛼・cos𝛽∓sin𝛼・sin𝛽,40,60
60 DATAtan(𝛼±𝛽),(tan𝛼±tan𝛽)/(1∓tan𝛼・tan𝛽),50,70
70 DATAcot(𝛼±𝛽),(cot𝛼・cot𝛽∓1)/(cot𝛽±cot𝛼),60,80
```

![Casio VX4](casio-basic/doc/images/Casio-VX-4.jpg)

## My Applications & Documentation

### [A Converter between Casio ASCII and Unicode](https://github.com/urbancamo/casio-basic)

This is a Scala Application to convert back and forth between Casio ASCII and Unicode.
The documentation includes a [reference card](casio-basic/doc/casio-ascii-to-unicode-converter.md)
showing the mapping between Unicode and Casio ASCII.


| HEX   | 0               | 1     | 2     | 3    | 4   | 5   | 6     | 7   | 8   | 9   | A   | B   | C   | D   | E   | F   |
|-------|-----------------|-------|-------|------|-----|-----|-------|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| **0** |                 |       | SPACE | 0    | @   | P   | &#96; | p   | Å   | ⁰   | ␣   | ー   | ﾀ   | ﾐ   | ≥   | ×   | 
| **1** |                 | (DEL) | !     | 1    | A   | Q   | a     | q   | ∫   | ¹   | 。   | ｱ   | ﾁ   | ﾑ   | ≤   | 円   | 
| **2** | (LINE TOP)      | (INS) | "     | 2    | B   | R   | b     | r   | √   | ²   | 「   | ｲ   | ﾂ   | ﾒ   | ≠   | ⽜   | 
| **3** |                 |       | #     | 3    | C   | S   | c     | s   | '   | ³   | 」   | ｳ   | ﾃ   | ﾓ   | ↑   | ⽉   | 
| **4** | (SHIFT RELEASE) |       | $     | 4    | D   | T   | d     | t   | ∑   | ⁴   | 、   | ｴ   | ﾄ   | ﾔ   | ←   | 日   | 
| **5** | (LINE CANCEL)   |       | %     | 5    | E   | U   | e     | u   | Ω   | ⁵   | ・   | ｵ   | ﾅ   | ﾕ   | ↓   | 千   | 
| **6** | (LINE END)      |       | &amp; | 6    | F   | V   | f     | v   | ▒   | ⁶   | ｦ   | ｶ   | ﾆ   | ﾖ   | →   | 万   | 
| **7** | (BEL)           |       | '     | 7    | G   | W   | g     | w   | █   | ⁷   | ｧ   | ｷ   | ﾇ   | ﾗ   | π   | £   | 
| **8** | (BS)            |       | (     | 8    | H   | X   | h     | x   | 𝛼  | ⁸   | ｨ   | ｸ   | ﾈ   | ﾘ   | ♠   | ¢   | 
| **9** | (CAPS L→U)      |       | )     | 9    | I   | Y   | i     | y   | 𝛽  | ⁹   | ｩ   | ｹ   | ﾉ   | ﾙ   | ♥   | ±   | 
| **A** | (LF)            |       | *     | :    | J   | Z   | j     | z   | 𝛾  | ⁺   | ｪ   | ｺ   | ﾊ   | ﾚ   | ♣   | ∓   | 
| **B** | (HOME)          |       | +     | ;    | K   | [   | k     | {   | 𝜀  | ⁻   | ｫ   | ｻ   | ﾋ   | ﾛ   | ♦   | ₀   | 
| **C** | (CLS)           | (→)   | ,     | <    | L   | ¥   | l     | ¦   | 𝜃  | ⁿ   | ｬ   | ｼ   | ﾌ   | ﾜ   | ◻   | ➀   | 
| **D** | (CR)            | (←)   | -     | =    | M   | ]   | m     | }   | 𝜇  | ﹪   | ｭ   | ｽ   | ﾍ   | ﾝ   | ▢   | ➁   | 
| **E** | (SHIFT SET)     | (↑)   | .     | &gt; | N   | ^   | n     | ~   | 𝜎  | ⁻¹  | ｮ   | ｾ   | ﾎ   | ゛   | △   | ➂   | 
| **F** | (CAPS U→L)      | (↓)   | /     | ?    | O   | _   | o     | ␡   | 𝜙  | ÷   | ｯ   | ｿ   | ﾏ   | ゜   | \   | ➃   | 


### [Casio FX-850P/FX-880P Online Manual](casio-basic/doc/casio-fx850-owners-manual.md)

As part of [RC2022/10](casio-basic/rc2022_10.md) I converted large parts of the original
[Casio FX-850P User Manual](casio-basic/doc/manuals/Casio_FX-850p_Owners_Manual.pdf)
to Markdown format for easy reference.

### [Retrochallenge October 2022 Entry](casio-basic/rc2022_10.md)

My retrochallenge focussed on developing the [Converter](https://github.com/urbancamo/casio-basic),
I also installed a modern day 32KB RAM expansion, the [RP-33](https://www.soigeneris.com/casio-rp-33-module-redux) into my VX-4.

## Casio Pocket Computer Links

 - [A RS232 TTL adapter for Vintage FX Casio Calculators and other devices](https://blog.damnsoft.org/rs232-ttl-adapter-for-vintage-fx-casio-calculators/)
 - [Blog post on Casio FX-850P BASIC code](https://community.casiocalc.org/topic/6935-fx-850p-basic-code/)
 - [Evolution of Casio BASIC Spanish](http://foroplus.com/basic/casiopbasic.php) & [English Translation](https://foroplus-com.translate.goog/basic/casiopbasic.php?_x_tr_sch=http&_x_tr_sl=es&_x_tr_tl=en&_x_tr_hl=en-US&_x_tr_pto=wapp)
 - [BASIC programs written for Casio FX-850P/FX-880P](https://github.com/rautava/Casio-FX-850P)
 - [Casio Basic Listings for Casio FX-850P/FX-880P](https://www.hd-videofilm.com/casio-fun/casio-fun.html?nglayout=plain)
 - [CASIO FX-880P: READING AND WRITING PROGRAMS](https://richardlewis.org/blog/2020/8/24/casio-fx-880p-reading-and-writing-programs)
 - [Casio FX-850P: Custom Characters & Interface](https://cromoteca.com/en/blog/fx-880p/)
 - [USB Interfaces for Casio Computers](https://manib.bplaced.net/blog/)
 - [BASIC programmable pocket computers - Casio FX-850P](http://www.duensser.com/pc_fx850p.htm)
 - [Casio BASIC Comparison & Cassette Utils](http://www.mvcsys.de/doc/index.html)
 - [FTDI to Casio FX adapter](https://www.instagram.com/p/CSlpewGLINJ/)
 - [Basic Programming Language Resources](http://www.nicholson.com/rhn/basic/basic.info.html#2)
 - [Casio Vintage Programmable Calculators](http://www.pisi.com.pl/piotr433/)
 - [Casio PB-1000 & VX-4 Machine Code Games](http://www.lsigame.com/pb-1000/pb-1000.htm)
 - [HD61700 CROSS ASSEMBLER](http://hd61700.yukimizake.net/)
