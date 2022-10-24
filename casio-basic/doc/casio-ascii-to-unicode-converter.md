# Casio ASCII ⇋ Unicode

The following table shows the conversion used between Casio ASCII and Unicode in the converter.

The table shows the following information:

Casio Position 
: The BYTE value of the character as defined in the CASIO ASCII map.

Unicode Equivalent
: This is a Unicode character that has been picked as a reasonable representation
of the associated Casio Character. Note that as some entries have codepoints above
0xFFFF in UTF-8 encoding there could be more than one character making up the symbol.

Unicode CodePoint
: the unicode codepoint associated with the unicode equivalent.

Unicode Description
: this is the description of the unicode character as per the unicode specification

Casio Description
: if there is description noted for the Casio Character in the Reference Manual it is noted here.

### NOTES

 - It is unlikely that Casio BASIC files will contain characters with position 0 to 9,
   and 14 to 27 as these are control characters. 

 - Characters 252 - 255 are reserved for user-defined characters. As such, the symbols
   representing them in the Unicode file won't match how they will be displayed once defined.

 - Character with Casio Position 158 is a single character representing -1. There is no
   single codepoint unicode equivalent. I therefore use a different digit one in the Unicode space
   then patch up the unicode output to be ⁻1. When Unicode is read I remove the leading minus sign
   before checking the input. 

| Casio Position | Unicode Equivalent | Unicode CodePoint | Unicode Description                      | Casio Description |
|----------------|--------------------|-------------------|------------------------------------------|-------------------|
| 0              | `␀`                | 9216              | SYMBOL FOR NULL                          |                   |
| 1              | `␁`                | 9217              | SYMBOL FOR START OF HEADING              |                   |
| 2              | `␂`                | 9218              | SYMBOL FOR START OF TEXT                 | Line top          |
| 3              | `␃`                | 9219              | SYMBOL FOR END OF TEXT                   |                   |
| 4              | `␄`                | 9220              | SYMBOL FOR END OF TRANSMISSION           | Shift Release     |
| 5              | `␅`                | 9221              | SYMBOL FOR ENQUIRY                       | Line Cancel       |
| 6              | `␆`                | 9222              | SYMBOL FOR ACKNOWLEDGE                   | Line End          |
| 7              | `␇`                | 9223              | SYMBOL FOR BELL                          | BEL               |
| 8              | `␈`                | 9224              | SYMBOL FOR BACKSPACE                     | BS                |
| 9              | `<tab>`            | 9                 | CHARACTER TABULATION                     | CAPS L->U         |
| 10             | `<nl>`             | 10                | LINE FEED (LF)                           | LF                |
| 11             | `␋`                | 9227              | SYMBOL FOR VERTICAL TABULATION           | HOME              |
| 12             | `␌`                | 9228              | SYMBOL FOR FORM FEED                     | CLS               |
| 13             | `<cr>`             | 13                | CARRIAGE RETURN (CR)                     | CR                |
| 14             | `␎`                | 9230              | SYMBOL FOR SHIFT OUT                     | SHIFT SET         |
| 15             | `␏`                | 9231              | SYMBOL FOR SHIFT IN                      | CAPS U->L         |
| 16             | `␐`                | 9232              | SYMBOL FOR DATA LINK ESCAPE              |                   |
| 17             | `␑`                | 9233              | SYMBOL FOR DEVICE CONTROL ONE            | DEL               |
| 18             | `␒`                | 9234              | SYMBOL FOR DEVICE CONTROL TWO            | INS               |
| 19             | `␓`                | 9235              | SYMBOL FOR DEVICE CONTROL THREE          |                   |
| 20             | `␔`                | 9236              | SYMBOL FOR DEVICE CONTROL FOUR           |                   |
| 21             | `␕`                | 9237              | SYMBOL FOR NEGATIVE ACKNOWLEDGE          |                   |
| 22             | `␖`                | 9238              | SYMBOL FOR SYNCHRONOUS IDLE              |                   |
| 23             | `␗`                | 9239              | SYMBOL FOR END OF TRANSMISSION BLOCK     |                   |
| 24             | `␘`                | 9240              | SYMBOL FOR CANCEL                        |                   |
| 25             | `␙`                | 9241              | SYMBOL FOR END OF MEDIUM                 |                   |
| 26             | `␚`                | 9242              | SYMBOL FOR SUBSTITUTE                    |                   |
| 27             | `␛`                | 9243              | SYMBOL FOR ESCAPE                        |                   |
| 28             | `⇨`                | 8680              | RIGHTWARDS WHITE ARROW                   | RIGHT ARROW       |
| 29             | `⇦`                | 8678              | LEFTWARDS WHITE ARROW                    | LEFT ARROW        |
| 30             | `⇧`                | 8679              | UPWARDS WHITE ARROW                      | UP ARROW          |
| 31             | `⇩`                | 8681              | DOWNWARDS WHITE ARROW                    | DOWN ARROW        |
| 32             | ` `                | 32                | SPACE                                    | SPC               |
| 33             | `!`                | 33                | EXCLAMATION MARK                         |                   |
| 34             | `"`                | 34                | QUOTATION MARK                           |                   |
| 35             | `#`                | 35                | NUMBER SIGN                              |                   |
| 36             | `$`                | 36                | DOLLAR SIGN                              |                   |
| 37             | `%`                | 37                | PERCENT SIGN                             |                   |
| 38             | `&amp;`            | 38                | AMPERSAND                                |                   |
| 39             | `'`                | 39                | APOSTROPHE                               |                   |
| 40             | `(`                | 40                | LEFT PARENTHESIS                         |                   |
| 41             | `)`                | 41                | RIGHT PARENTHESIS                        |                   |
| 42             | `*`                | 42                | ASTERISK                                 |                   |
| 43             | `+`                | 43                | PLUS SIGN                                |                   |
| 44             | `,`                | 44                | COMMA                                    |                   |
| 45             | `-`                | 45                | HYPHEN-MINUS                             |                   |
| 46             | `.`                | 46                | FULL STOP                                |                   |
| 47             | `/`                | 47                | SOLIDUS                                  |                   |
| 48             | `0`                | 48                | DIGIT ZERO                               |                   |
| 49             | `1`                | 49                | DIGIT ONE                                |                   |
| 50             | `2`                | 50                | DIGIT TWO                                |                   |
| 51             | `3`                | 51                | DIGIT THREE                              |                   |
| 52             | `4`                | 52                | DIGIT FOUR                               |                   |
| 53             | `5`                | 53                | DIGIT FIVE                               |                   |
| 54             | `6`                | 54                | DIGIT SIX                                |                   |
| 55             | `7`                | 55                | DIGIT SEVEN                              |                   |
| 56             | `8`                | 56                | DIGIT EIGHT                              |                   |
| 57             | `9`                | 57                | DIGIT NINE                               |                   |
| 58             | `:`                | 58                | COLON                                    |                   |
| 59             | `;`                | 59                | SEMICOLON                                |                   |
| 60             | `<`                | 60                | LESS-THAN SIGN                           |                   |
| 61             | `=`                | 61                | EQUALS SIGN                              |                   |
| 62             | `&gt;`             | 62                | GREATER-THAN SIGN                        |                   |
| 63             | `?`                | 63                | QUESTION MARK                            |                   |
| 64             | `@`                | 64                | COMMERCIAL AT                            |                   |
| 65             | `A`                | 65                | LATIN CAPITAL LETTER A                   |                   |
| 66             | `B`                | 66                | LATIN CAPITAL LETTER B                   |                   |
| 67             | `C`                | 67                | LATIN CAPITAL LETTER C                   |                   |
| 68             | `D`                | 68                | LATIN CAPITAL LETTER D                   |                   |
| 69             | `E`                | 69                | LATIN CAPITAL LETTER E                   |                   |
| 70             | `F`                | 70                | LATIN CAPITAL LETTER F                   |                   |
| 71             | `G`                | 71                | LATIN CAPITAL LETTER G                   |                   |
| 72             | `H`                | 72                | LATIN CAPITAL LETTER H                   |                   |
| 73             | `I`                | 73                | LATIN CAPITAL LETTER I                   |                   |
| 74             | `J`                | 74                | LATIN CAPITAL LETTER J                   |                   |
| 75             | `K`                | 75                | LATIN CAPITAL LETTER K                   |                   |
| 76             | `L`                | 76                | LATIN CAPITAL LETTER L                   |                   |
| 77             | `M`                | 77                | LATIN CAPITAL LETTER M                   |                   |
| 78             | `N`                | 78                | LATIN CAPITAL LETTER N                   |                   |
| 79             | `O`                | 79                | LATIN CAPITAL LETTER O                   |                   |
| 80             | `P`                | 80                | LATIN CAPITAL LETTER P                   |                   |
| 81             | `Q`                | 81                | LATIN CAPITAL LETTER Q                   |                   |
| 82             | `R`                | 82                | LATIN CAPITAL LETTER R                   |                   |
| 83             | `S`                | 83                | LATIN CAPITAL LETTER S                   |                   |
| 84             | `T`                | 84                | LATIN CAPITAL LETTER T                   |                   |
| 85             | `U`                | 85                | LATIN CAPITAL LETTER U                   |                   |
| 86             | `V`                | 86                | LATIN CAPITAL LETTER V                   |                   |
| 87             | `W`                | 87                | LATIN CAPITAL LETTER W                   |                   |
| 88             | `X`                | 88                | LATIN CAPITAL LETTER X                   |                   |
| 89             | `Y`                | 89                | LATIN CAPITAL LETTER Y                   |                   |
| 90             | `Z`                | 90                | LATIN CAPITAL LETTER Z                   |                   |
| 91             | `[`                | 91                | LEFT SQUARE BRACKET                      |                   |
| 92             | `¥`                | 165               | YEN SIGN                                 |                   |
| 93             | `]`                | 93                | RIGHT SQUARE BRACKET                     |                   |
| 94             | `^`                | 94                | CIRCUMFLEX ACCENT                        |                   |
| 95             | `_`                | 95                | LOW LINE                                 |                   |
| 96             | `&#96;`            | 96                | GRAVE ACCENT                             |                   |
| 97             | `a`                | 97                | LATIN SMALL LETTER A                     |                   |
| 98             | `b`                | 98                | LATIN SMALL LETTER B                     |                   |
| 99             | `c`                | 99                | LATIN SMALL LETTER C                     |                   |
| 100            | `d`                | 100               | LATIN SMALL LETTER D                     |                   |
| 101            | `e`                | 101               | LATIN SMALL LETTER E                     |                   |
| 102            | `f`                | 102               | LATIN SMALL LETTER F                     |                   |
| 103            | `g`                | 103               | LATIN SMALL LETTER G                     |                   |
| 104            | `h`                | 104               | LATIN SMALL LETTER H                     |                   |
| 105            | `i`                | 105               | LATIN SMALL LETTER I                     |                   |
| 106            | `j`                | 106               | LATIN SMALL LETTER J                     |                   |
| 107            | `k`                | 107               | LATIN SMALL LETTER K                     |                   |
| 108            | `l`                | 108               | LATIN SMALL LETTER L                     |                   |
| 109            | `m`                | 109               | LATIN SMALL LETTER M                     |                   |
| 110            | `n`                | 110               | LATIN SMALL LETTER N                     |                   |
| 111            | `o`                | 111               | LATIN SMALL LETTER O                     |                   |
| 112            | `p`                | 112               | LATIN SMALL LETTER P                     |                   |
| 113            | `q`                | 113               | LATIN SMALL LETTER Q                     |                   |
| 114            | `r`                | 114               | LATIN SMALL LETTER R                     |                   |
| 115            | `s`                | 115               | LATIN SMALL LETTER S                     |                   |
| 116            | `t`                | 116               | LATIN SMALL LETTER T                     |                   |
| 117            | `u`                | 117               | LATIN SMALL LETTER U                     |                   |
| 118            | `v`                | 118               | LATIN SMALL LETTER V                     |                   |
| 119            | `w`                | 119               | LATIN SMALL LETTER W                     |                   |
| 120            | `x`                | 120               | LATIN SMALL LETTER X                     |                   |
| 121            | `y`                | 121               | LATIN SMALL LETTER Y                     |                   |
| 122            | `z`                | 122               | LATIN SMALL LETTER Z                     |                   |
| 123            | `{`                | 123               | LEFT CURLY BRACKET                       |                   |
| 124            | `¦`                | 166               | BROKEN BAR                               |                   |
| 125            | `}`                | 125               | RIGHT CURLY BRACKET                      |                   |
| 126            | `~`                | 126               | TILDE                                    |                   |
| 127            | `␡`                | 9249              | SYMBOL FOR DELETE                        | DEL               |
| 128            | `Å`                | 197               | LATIN CAPITAL LETTER A WITH RING ABOVE   |                   |
| 129            | `∫`                | 8747              | INTEGRAL                                 |                   |
| 130            | `√`                | 8730              | SQUARE ROOT                              |                   |
| 131            | `'`                | 39                | APOSTROPHE                               |                   |
| 132            | `∑`                | 8721              | N-ARY SUMMATION                          |                   |
| 133            | `Ω`                | 937               | GREEK CAPITAL LETTER OMEGA               |                   |
| 134            | `▒`                | 9618              | MEDIUM SHADE                             |                   |
| 135            | `█`                | 9608              | FULL BLOCK                               |                   |
| 136            | `𝛼`               | 120572            | MATHEMATICAL ITALIC SMALL ALPHA          |                   |
| 137            | `𝛽`               | 120573            | MATHEMATICAL ITALIC SMALL BETA           |                   |
| 138            | `𝛾`               | 120574            | MATHEMATICAL ITALIC SMALL GAMMA          |                   |
| 139            | `𝜀`               | 120576            | MATHEMATICAL ITALIC SMALL EPSILON        |                   |
| 140            | `𝜃`               | 120579            | MATHEMATICAL ITALIC SMALL THETA          |                   |
| 141            | `𝜇`               | 120583            | MATHEMATICAL ITALIC SMALL MU             |                   |
| 142            | `𝜎`               | 120590            | MATHEMATICAL ITALIC SMALL SIGMA          |                   |
| 143            | `𝜙`               | 120601            | MATHEMATICAL ITALIC PHI SYMBOL           |                   |
| 144            | `⁰`                | 8304              | SUPERSCRIPT ZERO                         |                   |
| 145            | `¹`                | 185               | SUPERSCRIPT ONE                          |                   |
| 146            | `²`                | 178               | SUPERSCRIPT TWO                          |                   |
| 147            | `³`                | 179               | SUPERSCRIPT THREE                        |                   |
| 148            | `⁴`                | 8308              | SUPERSCRIPT FOUR                         |                   |
| 149            | `⁵`                | 8309              | SUPERSCRIPT FIVE                         |                   |
| 150            | `⁶`                | 8310              | SUPERSCRIPT SIX                          |                   |
| 151            | `⁷`                | 8311              | SUPERSCRIPT SEVEN                        |                   |
| 152            | `⁸`                | 8312              | SUPERSCRIPT EIGHT                        |                   |
| 153            | `⁹`                | 8313              | SUPERSCRIPT NINE                         |                   |
| 154            | `⁺`                | 8314              | SUPERSCRIPT PLUS SIGN                    |                   |
| 155            | `⁻`                | 8315              | SUPERSCRIPT MINUS                        |                   |
| 156            | `ⁿ`                | 8319              | SUPERSCRIPT LATIN SMALL LETTER N         |                   |
| 157            | `﹪`                | 65130             | SMALL PERCENT SIGN                       |                   |
| 158            | `⁻¹`               | 120823            | MATHEMATICAL MONOSPACE DIGIT ONE         |                   |
| 159            | `÷`                | 247               | DIVISION SIGN                            |                   |
| 160            | `␣`                | 9251              | OPEN BOX                                 | SPC               |
| 161            | `。`                | 12290             | IDEOGRAPHIC FULL STOP                    |                   |
| 162            | `「`                | 12300             | LEFT CORNER BRACKET                      |                   |
| 163            | `」`                | 12301             | RIGHT CORNER BRACKET                     |                   |
| 164            | `、`                | 12289             | IDEOGRAPHIC COMMA                        |                   |
| 165            | `・`                | 12539             | KATAKANA MIDDLE DOT                      |                   |
| 166            | `ｦ`                | 65382             | HALFWIDTH KATAKANA LETTER WO             |                   |
| 167            | `ｧ`                | 65383             | HALFWIDTH KATAKANA LETTER SMALL A        |                   |
| 168            | `ｨ`                | 65384             | HALFWIDTH KATAKANA LETTER SMALL I        |                   |
| 169            | `ｩ`                | 65385             | HALFWIDTH KATAKANA LETTER SMALL U        |                   |
| 170            | `ｪ`                | 65386             | HALFWIDTH KATAKANA LETTER SMALL E        |                   |
| 171            | `ｫ`                | 65387             | HALFWIDTH KATAKANA LETTER SMALL O        |                   |
| 172            | `ｬ`                | 65388             | HALFWIDTH KATAKANA LETTER SMALL YA       |                   |
| 173            | `ｭ`                | 65389             | HALFWIDTH KATAKANA LETTER SMALL YU       |                   |
| 174            | `ｮ`                | 65390             | HALFWIDTH KATAKANA LETTER SMALL YO       |                   |
| 175            | `ｯ`                | 65391             | HALFWIDTH KATAKANA LETTER SMALL TU       |                   |
| 176            | `ー`                | 12540             | KATAKANA-HIRAGANA PROLONGED SOUND MARK   |                   |
| 177            | `ｱ`                | 65393             | HALFWIDTH KATAKANA LETTER A              |                   |
| 178            | `ｲ`                | 65394             | HALFWIDTH KATAKANA LETTER I              |                   |
| 179            | `ｳ`                | 65395             | HALFWIDTH KATAKANA LETTER U              |                   |
| 180            | `ｴ`                | 65396             | HALFWIDTH KATAKANA LETTER E              |                   |
| 181            | `ｵ`                | 65397             | HALFWIDTH KATAKANA LETTER O              |                   |
| 182            | `ｶ`                | 65398             | HALFWIDTH KATAKANA LETTER KA             |                   |
| 183            | `ｷ`                | 65399             | HALFWIDTH KATAKANA LETTER KI             |                   |
| 184            | `ｸ`                | 65400             | HALFWIDTH KATAKANA LETTER KU             |                   |
| 185            | `ｹ`                | 65401             | HALFWIDTH KATAKANA LETTER KE             |                   |
| 186            | `ｺ`                | 65402             | HALFWIDTH KATAKANA LETTER KO             |                   |
| 187            | `ｻ`                | 65403             | HALFWIDTH KATAKANA LETTER SA             |                   |
| 188            | `ｼ`                | 65404             | HALFWIDTH KATAKANA LETTER SI             |                   |
| 189            | `ｽ`                | 65405             | HALFWIDTH KATAKANA LETTER SU             |                   |
| 190            | `ｾ`                | 65406             | HALFWIDTH KATAKANA LETTER SE             |                   |
| 191            | `ｿ`                | 65407             | HALFWIDTH KATAKANA LETTER SO             |                   |
| 192            | `ﾀ`                | 65408             | HALFWIDTH KATAKANA LETTER TA             |                   |
| 193            | `ﾁ`                | 65409             | HALFWIDTH KATAKANA LETTER TI             |                   |
| 194            | `ﾂ`                | 65410             | HALFWIDTH KATAKANA LETTER TU             |                   |
| 195            | `ﾃ`                | 65411             | HALFWIDTH KATAKANA LETTER TE             |                   |
| 196            | `ﾄ`                | 65412             | HALFWIDTH KATAKANA LETTER TO             |                   |
| 197            | `ﾅ`                | 65413             | HALFWIDTH KATAKANA LETTER NA             |                   |
| 198            | `ﾆ`                | 65414             | HALFWIDTH KATAKANA LETTER NI             |                   |
| 199            | `ﾇ`                | 65415             | HALFWIDTH KATAKANA LETTER NU             |                   |
| 200            | `ﾈ`                | 65416             | HALFWIDTH KATAKANA LETTER NE             |                   |
| 201            | `ﾉ`                | 65417             | HALFWIDTH KATAKANA LETTER NO             |                   |
| 202            | `ﾊ`                | 65418             | HALFWIDTH KATAKANA LETTER HA             |                   |
| 203            | `ﾋ`                | 65419             | HALFWIDTH KATAKANA LETTER HI             |                   |
| 204            | `ﾌ`                | 65420             | HALFWIDTH KATAKANA LETTER HU             |                   |
| 205            | `ﾍ`                | 65421             | HALFWIDTH KATAKANA LETTER HE             |                   |
| 206            | `ﾎ`                | 65422             | HALFWIDTH KATAKANA LETTER HO             |                   |
| 207            | `ﾏ`                | 65423             | HALFWIDTH KATAKANA LETTER MA             |                   |
| 208            | `ﾐ`                | 65424             | HALFWIDTH KATAKANA LETTER MI             |                   |
| 209            | `ﾑ`                | 65425             | HALFWIDTH KATAKANA LETTER MU             |                   |
| 210            | `ﾒ`                | 65426             | HALFWIDTH KATAKANA LETTER ME             |                   |
| 211            | `ﾓ`                | 65427             | HALFWIDTH KATAKANA LETTER MO             |                   |
| 212            | `ﾔ`                | 65428             | HALFWIDTH KATAKANA LETTER YA             |                   |
| 213            | `ﾕ`                | 65429             | HALFWIDTH KATAKANA LETTER YU             |                   |
| 214            | `ﾖ`                | 65430             | HALFWIDTH KATAKANA LETTER YO             |                   |
| 215            | `ﾗ`                | 65431             | HALFWIDTH KATAKANA LETTER RA             |                   |
| 216            | `ﾘ`                | 65432             | HALFWIDTH KATAKANA LETTER RI             |                   |
| 217            | `ﾙ`                | 65433             | HALFWIDTH KATAKANA LETTER RU             |                   |
| 218            | `ﾚ`                | 65434             | HALFWIDTH KATAKANA LETTER RE             |                   |
| 219            | `ﾛ`                | 65435             | HALFWIDTH KATAKANA LETTER RO             |                   |
| 220            | `ﾜ`                | 65436             | HALFWIDTH KATAKANA LETTER WA             |                   |
| 221            | `ﾝ`                | 65437             | HALFWIDTH KATAKANA LETTER N              |                   |
| 222            | `゛`                | 12443             | KATAKANA-HIRAGANA VOICED SOUND MARK      |                   |
| 223            | `゜`                | 12444             | KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK |                   |
| 224            | `≥`                | 8805              | GREATER-THAN OR EQUAL TO                 |                   |
| 225            | `≤`                | 8804              | LESS-THAN OR EQUAL TO                    |                   |
| 226            | `≠`                | 8800              | NOT EQUAL TO                             |                   |
| 227            | `↑`                | 8593              | UPWARDS ARROW                            |                   |
| 228            | `←`                | 8592              | LEFTWARDS ARROW                          |                   |
| 229            | `↓`                | 8595              | DOWNWARDS ARROW                          |                   |
| 230            | `→`                | 8594              | RIGHTWARDS ARROW                         |                   |
| 231            | `π`                | 960               | GREEK SMALL LETTER PI                    |                   |
| 232            | `♠`                | 9824              | BLACK SPADE SUIT                         |                   |
| 233            | `♥`                | 9829              | BLACK HEART SUIT                         |                   |
| 234            | `♣`                | 9827              | BLACK CLUB SUIT                          |                   |
| 235            | `♦`                | 9830              | BLACK DIAMOND SUIT                       |                   |
| 236            | `◻`                | 9723              | WHITE MEDIUM SQUARE                      |                   |
| 237            | `▢`                | 9634              | WHITE SQUARE WITH ROUNDED CORNERS        |                   |
| 238            | `△`                | 9651              | WHITE UP-POINTING TRIANGLE               |                   |
| 239            | `\`                | 92                | REVERSE SOLIDUS                          |                   |
| 240            | `×`                | 215               | MULTIPLICATION SIGN                      |                   |
| 241            | `円`                | 20870             | CJK UNIFIED IDEOGRAPHS 5186              |                   |
| 242            | `⽜`                | 12124             | KANGXI RADICAL COW                       |                   |
| 243            | `⽉`                | 12105             | KANGXI RADICAL MOON                      |                   |
| 244            | `日`                | 26085             | CJK UNIFIED IDEOGRAPHS 65E5              |                   |
| 245            | `千`                | 21315             | CJK UNIFIED IDEOGRAPHS 5343              |                   |
| 246            | `万`                | 19975             | CJK UNIFIED IDEOGRAPHS 4E07              |                   |
| 247            | `£`                | 163               | POUND SIGN                               |                   |
| 248            | `¢`                | 162               | CENT SIGN                                |                   |
| 249            | `±`                | 177               | PLUS-MINUS SIGN                          |                   |
| 250            | `∓`                | 8723              | MINUS-OR-PLUS SIGN                       |                   |
| 251            | `₀`                | 8320              | SUBSCRIPT ZERO                           |                   |
| 252            | `➀`                | 10112             | DINGBAT CIRCLED SANS-SERIF DIGIT ONE     | User Defined #1   |
| 253            | `➁`                | 10113             | DINGBAT CIRCLED SANS-SERIF DIGIT TWO     | User Defined #2   |
| 254            | `➂`                | 10114             | DINGBAT CIRCLED SANS-SERIF DIGIT THREE   | User Defined #3   |
| 255            | `➃`                | 10115             | DINGBAT CIRCLED SANS-SERIF DIGIT FOUR    | User Defined #4   |
