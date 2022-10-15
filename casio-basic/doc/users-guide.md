# User's Guide

(from Section 6 of the [Casio FX-850P Owners Manual](manuals/Casio_FX-850p_Owners_Manual.pdf).
)

Standard BASIC is employed as the programming language for this 
unit, and this section covers application of the BASIC language.

## Features of BASIC

1. BASIC is much easier to use than other programming languages
such as FORTRAN, making it suitable even for novices.
2. Writing programs is also easier because program creation, 
editing and execution are all performed by interacting with the 
computer itself.

The following functions are also available:
1. High-precision calculations are made possible by display of
numeric values with 10-digit mantissas and 2-digit exponents
   (13-digit mantissa and 2-digit exponent for internal operations).
2. A wide selection of built-in functions makes operation easier.
   - Standard mathematical functions:
     SIN COS TAN ASN ACS ATN LOG LN EXP SQR ABS SGN
     INT FIX FRAC PI ROUND RAN# DEG
   - Powerful string handling functions
     CHR$ STR$ MID$ LEFT$ RIGHT$ HEX$ DMS$ ASC VAL LEN
   - High level mathematical functions
     POL REC NCR NPR HYPSIN HYPCOS HYPTAN HYPASN HYPACS
     HYPATN CUR
3. 10 independent program areas
   Up to ten programs can be stored independently in memory at
   the same time (P0~9).
4. Extended variable names.
   Variable names up to 15 characters long can be used, making it 
   possible to use names that make contents easy to understand.
5. Powerful debugging function
   A TRON command displays the number of the program line 
   currently being executed, making it possible to easily trace
   execution and locate mistakes in programming.
6. Powerful screen editor
   Programs can be easily modified and corrected on the screen.
7. Virtual screen function
   Though the actual physical display of the unit has a 32-column x
   2-line capacity, the virtual screen is 32 columns x 8 lines.
   The virtual screen can easily scrolled using the cursor keys.
   ```
             ┌────────────────────────────────┐ 
            ⎧│1 AAAA                          │ 
            ⎪│2 BBBB                          │
            ⎪│3 CCCC                          │
            ⎪├────────────────────────────────┤
   Virtual  ⎨│4 DDDDD_                        │⎫ Actual screen
   Screen   ⎪│5 EEEEE                         │⎭ (2-lines)
   (8 lines)⎪├────────────────────────────────┤
            ⎪│6 FFFFF                         │
            ⎪│7 GGGGG                         │
            ⎩│8 HHHHHH                        │
             └────────────────────────────────┘ 
   ```

8. Expanded file management
   Such standard BASIC commands as OPEN, CLOSE, INPUT# AND PRINT#
   are all available for data file reading and writing.

## BASIC PROGRAM CONFIGURATION

### BASIC Program Format

The following is a typical BASIC program which calculates the 
volume of a cylinder.

EXAMPLE:
  ```basic
  10  REM CYLINDER
  20  R=15
  30  INPUT "H=";H
  40  V=PI*R^2*H
  50  PRINT "V=";V
  60 END
  ```

As can be seen, the BASIC program is actually a collection of lines
(six lines in the above program). A line can be broken down into a line
number and a statement.

  ```basic
  20  R=15
  └┘  └─┬┘
  Line  Statement
  Number
  ```

Computers execute programs in the order of their line numbers. In
the sample program listed above, the execution sequence is 
10, 20, 30, 40, 50, 60. Program lines can be input into the 
computer in any sequence, and the computer automatically arranges
the program within its memory in order from the smallest line number 
to the highest. Lines can be numbered using any value from 1 
through to 65535.

```basic
  20  R=15                 10  REM CYLINDER
  40  V=PI*R^2*H           20  R=15
  60  END             →    30  INPUT "H=";H
  10  REM CYLINDER         40  V=PI*R^2*H
  30  INPUT "H=";H         50  PRINT "V=";V
  50  PRINT "V=";V         60  END
  
      Input sequence           Memory contents
  ```

Following the line number is a statement or statements which actually
tell the computer which operation to perform. The following returns
to the sample program to explain each statement in detail.

```basic
10  REM CYLINDER   ...REM stands for "remarks". Nothing in this line is executed.
20  R=15           ...Assigns constant 15 (radius) to variable R.
30  INPUT "H=";H   ...Displays H ? to prompt a value input for height.
40  V=PI*R^2*H     ...Calculates volume (V) of cylinder.
50  PRINT "V=";V   ...Prints result of line 40
60  END            ...Ends the program.
```

As can be seen, a mere six lines of programming handles quite a 
bit of data. Multiple BASIC program lines can also be linked into a 
single line using colons. 

**EXAMPLE:**

  ```basic
  100  R=15:A=7:B=8
  ```
Such a program line is known as a "multistatement".
Details concerning the other operations contained in the above 
program can be found in other sections.

## BASIC PROGRAM INPUT

### Preparation

First switch the power of the computer ON. At this time the 
display will appear as illustrated below.
```
        ┌────────────────────────────────┐
        │ CAPS CAL      DEG              │
        │ _                              │
        │                                │
        └────────────────────────────────┘ 
```
This is the CAL mdoe, so the operation **MODE** **1** should first
be performed to allow input of BASIC programs. The display should
now appear as illustrated below.
```
        ┌────────────────────────────────┐
        │ CAPS    BASIC DEG              │
        │ P 0 1 2 3 4 5 6 7 8 9   3536B  │
        │ Ready P0                       │
        └────────────────────────────────┘
                            (21456B in the case of the FX-880P)
```
Note that the indicator *CAL* has been replaced by BASIC to 
indicate the BASIC mode. This is the mode used for BASIC program
input. The other indicators on the display in the BASIC mode
have the following meanings.

P: Program area

0~9: Program area numbers. The numbers of program areas which
      already contain programs are replaced by asterisks.

**EXAMPLE:**

Program stored in area 3
```
        ┌────────────────────────────────┐
        │ CAPS    BASIC DEG              │
        │ P 0 1 2 * 4 5 6 7 8 9   3521B  │
        │ Ready P0                       │
        └────────────────────────────────┘
                            (21441B in the case of the FX-880P)
```
3536B: Capacity (number of bytes) remaining in area for writing
programs and data (free area). The value will be 3538B (FX-850P),
and 21456B (FX-880P) when there are no programs or data stored 
in memory, with this value decreasing as storage space is used.

Ready P0: Current program area=area 0. The current program area
can be switched by pressing **SHIFT** followed by the desired program area.

**EXAMPLE:**

Switching to program area 5 using **SHIFT** **P5**
```
        ┌────────────────────────────────┐
        │ CAPS    BASIC DEG              │
        │ P 0 1 2 * 4 5 6 7 8 9   3521B  │
        │ Ready P0                       │
        └────────────────────────────────┘
                            (21441B in the case of the FX-880P)
```
Previously stored programs can be deleted using one of two
different procedures:

**NEW**: Deletes program stored in current program area only.
**NEW ALL**: Clears all programs stored in memory.

**EXAMPLE:**

Entering **NEW ALL**
```
        ┌────────────────────────────────┐
        │ CAPS    BASIC DEG              │
        │ P 0 1 2 3 4 5 6 7 8 9   3536B  │
        │ Ready P0                       │
        └────────────────────────────────┘
                            (21456B in the case of the FX-880P)
```
The operation clears all programs stored in memory and 
returns current program area to 0.

### Program Input

The following input procedure inputs the sample program for 
calculation of a cylinder.

10 REM **SPC** CYLINDER **EXE**

20 R=15**EXE**

30 INPUT**SHIFT** **"** H=**SHIFT** **"** ;H **EXE**

40 V=PI*R^2*H **EXE**

50 PRINT **SHIFT** **"** V= **SHIFT** **"** ;V **EXE**

60 END **EXE**

Note that the **EXE** key is pressed at the end of each line.
A program line is not entered into memory unless the **EXE* key
is pressed.

***

**ONE-KEY INPUT**

The one-key BASIC commands help to make program input even easier.

**EXAMPLE:**

Line 30 input.

3 0 **SHIFT** **INPUT** **SHIFT "** H = **SHIFT "** ; H **EXE**

### Program Editing
The procedure used for making corrections or changes to program
depends upon what step of program input the changes are to be made.

1. Changes in the line before **EXE** is pressed
2. Changes in a line after **EXE** is pressed
3. Changes within a program already input
4. Changes within a program following the `EDIT` command

#### 1. Changes in a line before **EXE** is pressed

**EXAMPLE:**

`20  E=15` mistakenly input for `20  R=15`

```
        ┌────────────────────────────────┐
        │ 10 REM CYLINDER                │
        │ 20 E=15                        │
        │        ¯                       │
        └────────────────────────────────┘
        ┌────────────────────────────────┐
        │ 10 REM CYLINDER                │
←←←←    │ 20 E=15                        │ (Move cursor to E)
        │    ¯                           │
        └────────────────────────────────┘
        ┌────────────────────────────────┐
        │ 10 REM CYLINDER                │
R       │ 20 R=15                        │ (Input corrected character)
        │     ¯                          │
        └────────────────────────────────┘
        ┌────────────────────────────────┐
EXE     │ 20 R=15                        │ (Editing complete)
        │ ¯                              │
        └────────────────────────────────┘
```
Note that once the desired changes are made, 
the **EXE** key must be pressed to store the entered line in memory.

#### 2. Changes in a line after EXE is pressed

**EXAMPLE:**

`40  V=P1*R^2*H` mistakenly input for `40  V=PI*R^2*H`

```
        ┌────────────────────────────────┐
        │ 40 V=P1*R^2*H                  │
        │                                │
        │ ¯                              │
        └────────────────────────────────┘
 ⬆➡➡➡➡➡➡
        ┌────────────────────────────────┐
        │ 40 V=P1*R^2*H                  │
        │       ¯                        │(Move cursor to 1)
        │                                │
        └────────────────────────────────┘
        ┌────────────────────────────────┐
        │ 40 V=PI*R^2*H                  │
I       │        ¯                       │ (Input correct character)
        │                                │
        └────────────────────────────────┘
        ┌────────────────────────────────┐
        │ 40 V=PI*R^2*H                  │
EXE     │                                │ (Editing complete)
        │ ¯                              │
        └────────────────────────────────┘
```
Again, the **EXE** key must be pressed to store the corrected
line into memory after changes are made.

Procedures 1 and 2 show the procedures for simple exchanges of
one character for another.

Characters can also be inserted and deleted using the following
procedures.

#### i) Insert

`40  V=PI*R2*H` mistakenly input for `40 V=PI*R^2*H`

```
          ┌────────────────────────────────┐
          │ 40 V=P1*R2*H                   │
          │            ¯                   │
          │                                │
          └────────────────────────────────┘
          ┌────────────────────────────────┐
          │ 40 V=P1*R2*H                   │
⬅⬅⬅⬅⬅  │          ¯                     │(Move cursor to location
          │                                │ of insertion)
          └────────────────────────────────┘
          ┌────────────────────────────────┐
          │ 40 V=P1*R 2*H                  │
INS       │          ¯                     │(Open one space)
          │                                │
          └────────────────────────────────┘
          ┌────────────────────────────────┐
          │ 40 V=P1*R^2*H                  │
^ EXE     │                                │(Input correct character
          │ ¯                              │ and press EXE)
          └────────────────────────────────┘
```

#### ii) Delete

`40  V=PI*RR^2*H` mistakenly input for `40 V=PI*R^2*H`

```
          ┌────────────────────────────────┐
          │ 40 V=P1*RR^2*H                 │
          │               ¯                │
          │                                │
          └────────────────────────────────┘
          ┌────────────────────────────────┐
          │ 40 V=P1*RR^2*H                 │
⬅⬅⬅⬅⬅  │          ¯                     │(Move cursor to charac-
          │                                │ ter to be deleted)
          └────────────────────────────────┘
          ┌────────────────────────────────┐
          │ 40 V=P1*R2*H                   │
SHIFT DEL │          ¯                     │(Delete character)
          │                                │
          └────────────────────────────────┘
          ┌────────────────────────────────┐
          │ 40 V=P1*R^2*H                  │
EXE       │                                │(Editing complete)
          │ ¯                              │
          └────────────────────────────────┘
```
The **BS** key works similarly to the **SHIFT** **DEL** operation.
The difference between the two operations is as follows.

***

**Difference Between SHIFT DEL and BS

- **SHIFT** **DEL**

  Deletes the character at the current cursor location and shifts
  everything to the right of the cursor one space to the left
  ```
    A B C D E F G ➡ SHIFT DEL ➡ A B C D E F G
          ¯                             ¯
          ⬆CURSOR
  ```

- **BS**

  Deletes the character to the left of the current cursor location
  and shifts everything from the cursor position right one space
  to the left.
  ```
    A B C D E F G ➡ BS ➡ A B C D E F G
          ¯                    ¯
          ⬆CURSOR
  ```

### 3. Changes within a program already input
The `LIST` command displays the program stored in the current 
program area from beginning to end.
```
         ┌────────────────────────────────┐
         │ 10 REM CYLINDER                │
LIST EXE │ 20 R=15                        │
         └────────────────────────────────┘
                          :
                          :
         ┌────────────────────────────────┐
         │ 60 END                         │
         │ Ready P0                       │
         └────────────────────────────────┘
```
The last line of the program is displayed when the `LIST` operation is 
completed.

```
              ┌────────────────────────────────┐
              │ 10 REM CYLINDER                │
⬆⬆⬆⬆⬆⬆⬆⬆ │ 20 R=15                        │
              └────────────────────────────────┘
```
The 8-line virtual screen of the computer now makes it possible
to use the cursor keys to scroll to preceding lines not shown
on the display.

```
                ┬  Ready P0
                │  10 REM CYLINDER
                │  20 R=15
                │  30 INPUT "H=";H
                │┌────────────────────────────────┐┬
                ││ 40 V=PI*R^2*H                  ││2-line display
(8-line virtual ││ 50 PRINT "V=";V                ││⬆⬇ move display
screen)         │└────────────────────────────────┘┴
                │ 60 END
                ┴ 70 Ready P0
```
When a program greater than eight lines is stored in memory,
the `LIST` operation should be performed by specifying the line
numbers to be displayed.

**EXAMPLE:**

Displaying from line 110 to line 160 on the virtual screen.

`LIST 110-160` **EXE**


```
                ┬  LIST 110-160
                │  110 A=1
                │  120 FOR I=1 TO 100
                │  130 B=LOG(I)
                │  140 PRINT B
                │  150 NEXT I
                │┌────────────────────────────────┐┬
                ││ 160 E=A*B                      ││2-line display
(8-line virtual ││ Ready P0                       ││
screen)         ┴└────────────────────────────────┘┴
```
Changes can be made in a program displayed by the `LIST` operation
by using the same procedures outlined for 1 and 2 above.

NOTE: the **BRK** key can be used to terminate the `LIST` operation.
The **STOP** key suspends the operation, and listing can be resumed
by pressing **EXE**.

### 4. Changes within a program following the `EDIT` command

The `EDIT` command makes it easier to edit or review programs
already stored in memory.

```
         ┌────────────────────────────────┐
         │ CAPS    BASIC DEG      EDIT    │
EDIT EXE │ 10 REM CYLINDER                │
         │ 20 R=15                        │
         └────────────────────────────────┘
```

From this display, ⬇ (or **EXE**) advances to the following line,
while ⬆ (or **SHIFT** **EXE**) returns to the previous line.

```
         ┌────────────────────────────────┐
         │ 30 INPUT "H=";H                │(Displays lines 30
⬇⬇      │ 40 V=PI+R^2*H                  │ and 40)
         └────────────────────────────────┘
```
Here, a correction will be made in line 40.

```
         ┌────────────────────────────────┐
         │ 40 V=PI+R^2*H                  │(Displays lines 40
⬇       │ 50 PRINT "V=";V                │ upper line of display)
         └────────────────────────────────┘
         ┌────────────────────────────────┐
         │ 40 V=PI+R^2*H                  │(Enables program
➡        │ ¯                              │ editing)
         └────────────────────────────────┘
➡➡➡➡➡➡➡ * EXE
         ┌────────────────────────────────┐
         │ 40 V=PI+R^2*H                  │(Correction)
         │ 50 PRINT "V=";V                │
         └────────────────────────────────┘
         ┌────────────────────────────────┐
BRK      │ Ready P0                       │(BRK key exits
         │                                │ EDIT mode)
         └────────────────────────────────┘
```

## BASIC PROGRAM EXECUTION

### Program Execution

Once a BASIC program is stored in memory, it can be executed using
one of the two following procedures.

1. Using **SHIFT** (program area) in CAL mode
   **EXAMPLE:** **SHIFT** 9
   Executes the program in program area 9.
2. Entering RUN command in BASIC mode
   **EXAMPLE:** RUN **EXE** 
   Executes the program in the current program area.

Execute the program input in the previous section to determine the 
volume of a cylinder with a height of 10 (radiux fixed as 15).

```
         ┌────────────────────────────────┐
RUN EXE  │ RUN                            │(Executes program)
         │ H=?                            │
         │    ¯                           │
         └────────────────────────────────┘
         ┌────────────────────────────────┐
10 EXE   │ H=?10                          │(Corresponding volume
         │ V= 7068.583471                 │ displayed when height
         │    ¯                           │ is entered)
         └────────────────────────────────┘
         ┌────────────────────────────────┐
EXE      │ V= 7068.583471                 │
         │ Ready P0                       │
         │ ¯                              │
         └────────────────────────────────┘
```
Display of the volume when this program is executed causes the 
**STOP** symbol to appear in the upper right of the display. This
symbol indicates that program execution has been suspended because of 
execution of the `PRINT` command. Program execution can be resumed
at this time by pressing the **EXE** key again. Edning a `PRINT` statement
with a semicolon causes execution to continue when the `PRINT` statment
is executed, causing the display of the next `PRINT` statement to appear 
immediatly following the previous display.

**EXAMPLE 2:**

```basic
10  PRINT "BASIC   "
20  PRINT "PROGRAM "
30  END
```

Execution of this program results in the following display.

```
         ┌────────────────────────────────┐
RUN EXE  │ RUN                            │
         │ BASIC                          │
         └────────────────────────────────┘
         ┌────────────────────────────────┐
EXE      │ BASIC                          │
         │ PROGRAM                        │
         └────────────────────────────────┘
         ┌────────────────────────────────┐
EXE      │ PROGRAM                        │
         │ Ready P0                       │
         │ ¯                              │
         └────────────────────────────────┘
```

**EXAMPLE 2:**

```basic
10  PRINT "BASIC   ";
20  PRINT "PROGRAM "
30  END
```

Including a semicolon at the end of the first `PRINT` statement
produces the following display.

```
         ┌────────────────────────────────┐
RUN EXE  │ RUN                            │
         │ BASIC PROGRAM                  │
         └────────────────────────────────┘
         ┌────────────────────────────────┐
EXE      │ BASIC PROGRAM                  │
         │ Ready P0                       │
         │ ¯                              │
         └────────────────────────────────┘
```

### Errors

At times, the results produced by a program are not what is 
expected. Such irregular executions can be broadly divided
under two major classifications.

1. Executions that produce errors
   Simple programming errors
   Program logic errors

2. Irregular execution that do not produced errors
   Mostly program logic errors

#### 1. Executions that produce errors

**i) Simple programming errors**

This is the most common type of program error and is generally
caused by mistakes in program syntax. Such errors result
in the following message being displayed:

`SN error P0--10`

This message indicates that a syntax error has been detected in line
10 of the program stored in program area 0. The indicated program
line should be checked and corrected to allow proper execution.

**ii) Program logic errors**

This type of error is generally caused by such illegal operations
as division by zero or `LOG(0)`. Such errors result in the following
message being displayed:

``MA error P0--10``

As before, this message indicates that a mathematical error has been
detected in line 10 of the program stored in program area 0. In
this case, however, program lines related to the indicated program
line as well as indiicated program line itself should be examined
and corrected. When an error message is displayed, the following
operations can be used to display the line number in which the error
was detected.

```basic
LIST 10  EXE
EDIT 10  EXE

LIST .   EXE
EDIT .   EXE
```

* The periods contained in `LIST .` and `EDIT .` instruct the computer
  to automatically display the last program line executed.
* Change to the BASIC mode if a BASIC program was executed in the CAL mode.

#### 2. Irregular execution that does not produce errors
Such errors are also caused by a flaw in the program, and must be 
corrected by executing the LIST or EDIT command to examine the program
to detect the problem. The `TRON` command can also be used to help trace
the execution of the program.

Entering **TRON** **EXE** causes the *TR* symbol to appear on the display
to indicate that the trace mode is ON. Now executing a BASIC program displays
the program area and line number as execution is performed, and halts
execution until **EXE** is pressed. This allows confirmation of 
each program line, making it possible to quickly identify problem lines.
Executing **TROFF** **EXE** cancels the trace mode.

## COMMANDS

Though there are a varienty of commands available in BASIC for use in
programs, the nine fundamental commands listed below are the 
most widely used.

The following program reads data items contained within the program
itself, with the number of data items read being determined by input 
from an operator. The operator may input any value, but note that values
greater than 5 are handled as 5 (becaus there are only 5 data items
in line 180). The program then displays the sum of the data read from
line 180, followed by the square root and cube root of the sum. Program
execution is terminated when a zero is entered by the operator.

```basic
10  S=0                       ... Clears current total assigned to S
20  RESTORE                   ... Specifies read operation should begin with first data item
30  INPUT N                   ... Input number of data items to be read
40  IF N>5 THEN N=5           ... Input of value > 5 should be treated as 5
50  IF N=0 THEN GOTO 130      ... Jump to line 130 when input is zero
60  FOR I=1 TO N ─────────────┐      
70  READ X           data read├ This section repeated the number of times
80  S=S+X     sum of data calc│ specified by operator input in line 30
90  NEXT I ───────────────────┘
100 GOSUB 140                 ... Branch to subroutine starting from line 140
110 PRINT S; Y; Z             ... Displays contents of variables S, Y, Z
120 GOTO 10                   ... Jump to line 10
130 END                       ... Program end
140 REM SQUARE ROOT/CUBE ROOT ... Remarks
150 Y=SQR S                   ... Square root calculation
160 Z=CUR S                   ... Cube root calculation
170 RETURN                    ... Return to the statement following the statement
                                  which called the subroutine
180 DATA 9,7,20,28,36         ... Data read by READ statement in line 70
```

➀ **REM**

The `REM` command (line 140) is actually short for the word
"remarks". The computer disregards anything following a `REM` command,
and so it is used for such purposes as labels in order to make the 
program list itself easier to follow. Note that a single quotation mark
( **SHIFT** ,) can be used in place of the letters "REM".

➁ **INPUT**

The `INPUT` command (line 30) is used to allow input from the computer's
keyboard during program execution. The data input are assigned to a variable
immediately following the `INPUT` command. In the above example, input 
numeric data are assigned to the variable N. Note that a string variable must
be used for string input.

**EXAMPLE**:

```basic
10  INPUT A$     ... string input
```

➂ **PRINT**

The `PRINT` command (line 110) is used to display data on the computer's 
display. In this example, this command is used to display the results of the sum, 
square root and cube root calculations. When the data are displayed, the `STOP` symbol
appears and program execution is suspended. Execution can be resumed by pressing
the **EXE** key.

➃ **END**

The `END` command (line 130) brings execution of the program to an end, and
can be included anywhere within a program.

➄ **IF ~ THEN ~**

the `IF/THEN` command (lines 40 and 50) is used for comparisons of certain
conditions, basing the next operation upon whether the comparison turns out
to be `true` or `false`. Line 40 checks whether or not value assigned to n
is greater than 5, and assigns a value of 5 to N when the original value is greater.
When a value of 5 or less is originally assigned to N, execution proceeds
to the next line, with N retaining its original value. Line 50, checks whether
or not the value assigned to N is zero. In the case of zero, program execution
jumps to line 130, while execution proceeds to the next line (line 60) when N
is any other value besides zero.

* Line 50 can also be abbreviated as follows:
  ```basic
  50  IF N = 0 THEN 130
  ```
* Program areas can also be specified as jump destinations:
  ```basic
  IF A=1 THEN GOTO #2    ... Program stored in program area 2
                             executed when A equals 1
  ```

➅ **GOTO**

The `GOTO` command (lines 50 and 120) performs a jump to a specified
line number or program area. The `GOTO` statement in line 120 is an 
unconditional jump, in that execution always returns to line 10 of the program
whenever line 120 is executed. The `GOTO` statement in line 50,
on the other hand, is a conditional jump, because the condition of thje 
`IF ~ THEN` statement must be met before the jump to line 130 is made.

* Program area jumps are specified as `GOTO #2` (to jump to program area 2).

➆ **FOR/NEXT**

The `FOR/NEXT` combination (lines 60 and 90) forms a loop. All of the statements
within the loop are repeated the number of times specified by a value following
the word `TO` in the `FOR` statement. In the example being discussed here, the loop
is repeated N number of times, with the value of N being entered by the 
operator in line 30.

➇ **READ/DATA/RESTORE**

These statements (lines 70, 180, 20) are used when the amount of data to be 
handled is too large to require keyboard input with every execution. In this
case, data are included within the program itself. The `READ` command assigns data to
variables, the `DATA` statement holds the data to be read, and the 
`RESTORE` command in line 20 always returns the next read positiojn to the first
data item, the `READ` statement never runs out of data to read.

➈ **GOSUB/RETURN**

The `GOSUB/RETURN` commands (lines 100 and 170) are used for branching
t and from subroutines. Subroutines (lines 140 through 170) are actually
mini programs within the main program, and usually represent routines which
are performed repeatedly at different locations within the main program.
This means that `GOSUB/RETURN` makes it possible to write the repeated
operation once, as a subroutine, instead of writing each time it is needed within
the main program.

**EXAMPLE**:

```basic
120  GOSUB 1000
       :
370  GOSUB 1000
       :
```

Execution of the `RETURN` statement at the end of a subroutine returns 
execution of the program back to the statement following the `GOSUB` command.
In this sample program, execution returns to line 110 after the `RETURN` in line 170
is executed.

* `GOSUB` routines can also be used to branch to other program areas,
  as in `GOSUB #3` (branches to program area 3). Note, however, that a return
  must be made back to the original program area using the `RETURN` command
  before an `END` command is executed.
* See [COMMAND REFERENCE](casio-basic-language-reference.md) for further details on BASIC commands.

## OPERATORS

The following are the operators used for calculations which involve 
variables.

```
Operators ─┬─ Arithmetic operators   Signs                     +, -
           │                         Addition                  +
           │                         Subtraction               -
           │                         Multiplication            *
           │                         Division                  / 
           │                         Power                     ^
           │                         Integer division          ¥
           │                         Integer remainder of
           │                         Integer division          MOD
           ├─ Relational operators   Equal to                  =
           │                         Does not equal            <>, ><
           │                         Less than                 <
           │                         Greater than              >
           │                         Less than or equal to     <=, =<
           │                         Greater than or equal to  >=, =>
           ├─ Logical operators      Negation                  NOT
           │                         Logical product           AND
           │                         Logical sum               OR
           │                         Exclusive OR              XOR
           └─ String operator                                  +
```

### 1. Arithmetic Operators (+, -, *, /, ^, ¥, MOD)

* Fractions are truncated in ¥ and MOD calculations, when the operands
  on both sides of the operators are not integers.
* In the ¥ and MOD calculations, the division is performed with the absolute
  values of both operands. In integer division (¥), the quotient is truncated
  to an integer. With the MOD operator, the remainder is given the sign of the dividend.

**EXAMPLES**

```basic
-15 ¥ 7 = -2
-15 MOD 7 = 1        -15÷7=-2 .... -1
                           └┬┘     └┬┘
                          -15¥7   -15MOD7   
```
* The length of an expression is limited to 255 characters.

### 2. Relational Operators (=, <>, ><, <, >, =<, <=, =>, >=)

Relational operations can be performed only when the operators
are both strings or numeric values.

With strings, character codes are compared one-by-one from the beginning
of the strings. This is to say that the first position of a string A is compared
with the first position of string B, the second position of string A 
with the second position of string B, etc. The result of the comparison
is based upon the character codes of the first difference between the strings
detected, regardless of the length of the strings being compared.

**EXAMPLES:**

```basic
   STRING A         STRING B       RESULT
     ABC              ABC            A=B
     ABC             ABCDE           A<B
     ABC              XYZ            A<B  (character code for A less
                                           than that for X)
     XYZ             ABCDE           A>B  (character code for X 
                                           greater than that for A)
```

**EXAMPLE**

```basic
10  PRINT 10>3           ... -1 returned because 10>3 is true
20  PRINT 7<1            ... 0 returned because 7<1 is fals
30  PRINT "ABC" = "XYZ"  ... 0 returned because ABC=XYZ is false
40  END
```

### 3. Logical Operators
The operands of logical operations are truncated to integers and the 
operation performed bit-by-bit to obtain the result.

**Negation**

| X   | NOT X |
|-----|-------|
| 0   | 1     |
| 1   | 0     |

**Logical product**

| X   | Y   | X AND Y |
|-----|-----|---------|
| 0   | 0   | 0       |
| 0   | 1   | 0       |
| 1   | 0   | 0       |
| 1   | 1   | 1       |

**Logical sum**

| X   | Y   | X OR Y |
|-----|-----|--------|
| 0   | 0   | 0      |
| 0   | 1   | 1      |
| 1   | 0   | 1      |
| 1   | 1   | 1      |

**Exclusive OR**

| X   | Y   | X XOR Y |
|-----|-----|---------|
| 0   | 0   | 0       |
| 0   | 1   | 0       |
| 1   | 0   | 1       |
| 1   | 1   | 0       |

### 4. String Operators (+)
Strings may be concatenated using a `+` sign.
The result of the operation (including intermediate results) may not
exceed 255 characters.

**EXAMPLE:**

```basic
A$ = "AD" + "1990"
```
The above example results in the string "AD1990" being assigned to variable A$.

### Order of Operations
Arithmetic, relational and logical operations are performed in the following
order of precedence:

1. (,)
2. Scientific function
3. Power
4. Sign (+, -)
5. *, /, ¥, MOD
6. Addition and subtraction
7. Relational operators
8. NOT
9. AND
10. OR, XOR

Operations are performed from left to right when the order of 
precedence is identical.

## Constants and Variables

### Constants

The following shows the constants included in the sample program:

```basic
PROGRAM                 CONSTANTS
20  R=15                    15
30  INPUT "H="; H          "H="
40  V=PI*R^2*H              2
50  PRINT "V="; V          "V="
```

Of these, 15 and 2 are numeric constants, while "H=" and "V=" are 
string constants.

**Numeric Constants**

**Numeric Notation**

  ➀ Decimal notation

  ➁ Hexadecimal notation

**Numeric Value Precision**

  ➀ Internal numeric operations
    12-digit mantissa, 2-digit exponent (PI=11 digits: 3.1415926536; displayed in 10 digits: 3.141592654)

  ➁ Results
    10-digit mantissa, 2-digit exponent (exponent rounded to 10 digits)

  ➂ Number of characters per line
    255 characters per line

  ➃ Result Display

    Integers less than 1x10¹⁰    : Integer display
    
    Decimal portion less than 11 digits : Decimal display

    Other : Exponential display

    Display rounding : Results are rounded off at the 10th digit and displayed.

**String Constants**

Strings within quotation marks (i.e. "ABC", "H=")

Closing quotation marks at the end of a line may be omitted
(`10 PRINT "TEST"` can be written `10 PRINT "TEST)

Multiple strings can be connected with a "+" sign.

### Variables

**Numeric Variables**

The following shows the numeric variables include in the sample
program on page 46:

```basic
PROGRAM            NUMERIC VARIABLES
20  R=15                   R
30  INPUT "H=";H           H
40  V=PI*R^2*H             V
```

Numeric variables are so named becaus their contents are handled
as numbers. Numeric variable names can be up to 15 characters long, and are
used within programs to store calculation results or constants in memory.
In the sample program, the value 15 is stored in H, while V, which is the result
of the calculation, holds the value which represents the volume of the 
cylinder. As can be seen, assignment to a variable is performed using the "="
symbol. This differs from an equal sign in that it declares that what
is to the right should be assigned to what is to the left. Actually, a variable
can be thought of as a kind of box as illustrated below:

```
     ┌───┐               ┌───┐
15 ➡ │ R │    PI*R^2*H ➡ │ V │   
     └───┘               └───┘ 
```

**String variables**

Another type of variable is known as a string variable, which is used
to store character data. String variable names are indicated by "$" following the name.

**EXAMPLE:**

```basic
10  A$ = "AD"           ... Assigns "AD" to string variable A$.
20  INPUT "YEAR="; B$   ... Assigns keyboard input to variable B$.
30  C$ = A$ + B$        ... Assigns combination of A$ and B$ to C$.
40  PRINT C$            ... Displays contents of C$.
50  END
```

In the above example program, entering a year such as 1990 in
line 20 results in a display of AD1990 to line 40.
 * With string variables, "+" can be used to connect two strings.
 * Note here that strings cannot be assigned to numeric variables
   such as A, and numeric variables cannot be assigned to string variables
   such as A$.

**Array Variables**

Both numeric variables and string variables can store only one data item
per variable. Because of this, large amounts of data are better handled
using array variables (usually referred to as simply "arrays"). Before
 an array variable can be used within a program, a `DIM` statement must appear
at the beginning of the program to "declare" to the computer that an 
array variable is to be employed.

**EXAMPLE**

Declare array variable A for storage of 21 data items.
```basic
10  DIM A(20)
```

 * The above format is used to declare "ARRAY VARIABLE NAME (NUMBER OF ELEMENTS)."
 * A declared value of 20 makes it possible to store 21 data items.

**EXAMPLE**

Find the sum (X) and the sum of squares (Y) for the following 10 data items:

```basic
10, 12, 9, 11, 13, 14, 11, 12, 9, 10
```

The following program would be required to perform the calculation
if only simple numeric variables are used:

```basic
10  A1=10: A2=12: A3=9: A4=11: A5=13    ⎫ Assigns values to each
20  A6=14: A7=11: A8=12: A9=9: A10=10   ⎭ variable
30  X=A1+A2+A3+A4+A5+A6+A7+A8+A9+A10  ... Calculates sum
30  Y=A1^2+A2^2+A3^2+A4^2+A5^2+A6^2+
      A7^2+A8^2+A9^2+A10^2            ... Caculates sum of squares
```

The program becomes much simpler when an array is used.

```basic
10  DIM A(10)
20  A(1)=10: A(2)=12: A(3)=9: A(4)=11: A(5)=13  ⎫ Assigns values to
30  A(6)=14: A(7)=11: A(8)=12: A(9)=9: A(10)=10 ⎭ array
40  X=0: Y=0
50  FOR I=1 TO 10          ⎫
60  X=X+A(I): Y=Y+A(I)^2   ⎬ Calculates sum and sum of squares
70  NEXT I                 ⎭
```

At first glance, the array may appear to be rather troublesome to use, 
but it actually makes programming simpler when large volumes of data are being
assigned.

**EXAMPLE**

100 data items

**Numeric variables**

```basic
10  A1=61: A2=38: A3=90: A4=37: A5=99       ⎫ 
20  A6=12: A7=17: A8=94: A9=39: A10=75      ⎪ 
30  A11=24: A12=84: A13=46: A14=18: A15=55  ⎪
...                                         ⎬ Assigns values to variables
...                                         ⎪
170 A81=91: a82=46: A83=23: A84=37: A85=84  ⎪
180 A86=65: A87=23: A88=98: A89=51: A90=30  ⎪
190 A91=57: A92=78: A93=16: A94=39: A95=46  ⎪
200 A96=59: A97=24: A98=32: A99=74: A100=47 ⎭
210 X=A1+A2+A3+A4+....+A49+A50              ⎫
220 X=X+A51+A52+A53+...+A99+A100            ⎭ Calculates sum 
230 Y=A1^2+A2^2+...+A39^2+A40^2             ⎫
240 Y=Y+A41^2+A42^2+...+A79^2+A80^2         ⎬ Calculates sum of squares
250 Y=Y+A81^2+A82^2+...+A99^2+A100^2        ⎭
```


**Array**

```basic
10  DIM A(10)
20  FOR I=1 TO 100: READ A(I): NEXT I  ⎬ Assigns values to array
30  X=0: Y=0
40  FOR I=1 TO 10          ⎫
50  X=X+A(I): Y=Y+A(I)^2   ⎬ Calculates sum and sum of squares
60  NEXT I                 ⎭
70  DATA 61,38,90,37,99    ⎫
80  DATA 12,17,94,39,75    │
90  DATA 24,84,46,18,55    │
...                        ⎬ Data
...                        │
240 DATA 65,23,98,51,30    │
250 DATA 57,78,16,39,46    │
260 DATA 59,24,32,74,47    ⎭
```

A look at these programs reveals that an increase in data entails
virtually no change in the portion which calculates the sum and sum
of squares. The only changes would be in lines 10, 20 and 40, where the
constant would be cahnged from 10 to 100.

Again, the concept of the array can be better grasped by thinking of
them as boxes. Previously, a simple variable was described as a single box.
Arrays, on the other hand, would be a series of numbered boxes which
form a set.

```
┌──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┬...
│ A(0) │ A(1) │ A(2) │ A(3) │ A(4) │ A(5) │ A(6) │ A(7) │ A(8) │ A(9) |...
└──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┴...
```
As illustrated above, the array A(9) actually contains a total of ten boxes,
number from A(0) to A(9), with each box capable of holding a different value. The 
actual term used to refer to a box is "element". Recalling a stored value is performed
by simply specifying the corresponding element number.

**EXAMPLE:**

Recall value stored in element 4 of array A
```basic
Y=(4)
 or 
X=4: Y=A(X)
```
The value which specifies an element in an array (4 above) is called a subscript.

Until now, the only arrays covered have been those formed by a single line 
of elements or "boxes". These are known as *one-dimensional* arrays. Arrays may
also contain more than one dimension with elements connected vertically and horizontally
into *two-dimensional* and *three-dimensional* arrays.

**EXAMPLE:**

```basic
DIM A(2, 3)
```

```
┌────────┬────────┬────────┬────────┐
│ A(2,0) │ A(2,1) │ A(2,2) │ A(2,3) │
├────────┼────────┼────────┼────────┤
│ A(1,0) │ A(1,1) │ A(1,2) │ A(1,3) │
├────────┼────────┼────────┼────────┤
│ A(0,0) │ A(0,1) │ A(0,2) │ A(0,3) │
└────────┴────────┴────────┴────────┘
```

The declaration in this example sets up an array of three lines
and four columns, making it capable of storing 12 different values.

**Numeric arrays and string arrays**

As with simple variables, arrays can also be declared to hold strings
by using the "$" symbol following an array variable name. Again remember,
numeric values cannot be assigned to string arrays and strings cannot be assigned
to numeric arrays.

**EXAMPLE:**

The following procedure is used to declare an array and store the 
data for five individuals and their points scored during a certain game.

String array `N$(5)` declared for names
Numeric array `P(5)` declared for points

```basic
10  DIM N$(5), P(5)  ... Declaration of arrays to store names and points
20  FOR I=1 TO 5
30  READ A$, X
40  N$(I)=A$         ... Stores names to string array
50  P(I)=X           ... Stores points to numeric array
60  NEXT I
70  END
80  DATA SMITH, 70 BROWN, 68, JONES, 87, CARTER, 80, MILLS, 74
```

### Summary

**Variable Types**

The three following types of variables are available for use within this unit.

```
1. Numeric variables (up to 12-digit mantissa)  A, a, NUMBER, POINTS
2. String variables (up to 255 characters)      A$, STRING$
3. Array variables ──┬─── Numeric array         A(10), XX(3,3,3)
                     └─── String array          A$(10), ARRAY$(2,2)
```

**Variable Names**

 * Variable names can consist of upper, lower case or numeric characters, but 
   a numeric character cannot be used in the first position of the variable name 
   (i.e. 1AE, 3BC$ are illegal).
 * [Reserved words](command-index.md) cannot be used as the leading characters of a variable name
   (i.e. `RUNON`, `LIST1$` are illegal).
 * The maximum length of a variable name is 15 characters.

**Arrays**

1. Arrays are declared by `DIM` statements.
2. Elements described by subscripts which are integers greater than 0.
   Fractions are disregarded.
3. The number of dimensions is limited by stack capacity.
4. The maximum value of subscripts is limited by memory capacity.

**Variable/Array Application**

1. Variables and arrays can be used jointly by all program areas.
2. Arrays cannot be used unless first declared using the DIM statement.