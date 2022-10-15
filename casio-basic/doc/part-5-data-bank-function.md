# PART 5 - DATA BANK FUNCTION

The DATA BANK function built into this unit gives it the capability to totally replace a standard
notebook. For the sake of example here, the following scientific constant table will be input
into the unit's DATA BANK

**SCIENTIFIC CONSTANT TABLE**

| Name                                | Symbol | Numeric value     | Unit    | Remarks     |
|-------------------------------------|--------|:------------------|---------|-------------|
| Acceleration of free fall           | g      | 9.80665           | ms⁻²    | FREE FALL   |
| Speed of light (in space)           | c      | 2.99792458 × 10⁸  | ms⁻¹    | SPEED LIGHT |
| Planck's constant                   | h      | 6.626176 × 10⁻³⁴  | Js      | PLANCK'S    | 
| Gravitational constant              | G      | 6.672 × 10⁻¹¹     | Nm²kg⁻² | GRAVITATION |
| Elementary charge                   | e      | 1.6021892 × 10⁻¹⁹ | C       | ELEMENTARY  |
| Electron mass                       | me     | 9.109534 × 10⁻³¹  | kg      | ELECTRON    |
| Atomic mass                         | u      | 1.6605655 × 10⁻²⁷ | kg      | ATOMIC      |
| Avogadro constant                   | Nₐ     | 6.022045 × 10²³   | mol⁻¹   | AVOGADRO    |
| Boltzmann's constant                | k      | 1.380662 × 10⁻²³  | JK⁻¹    | BOLTZMANN'S | 
| Molar volume of ideal gas at s.t.p. | Vm     | 2.241383 × 10⁻²   | m³mol⁻¹ | IDEAL GAS   |

## DATA INPUT 

The MEMO mode must be entered using the operation **MODE** **9** to allow input of data into the
DATA BANK. At this time, the display should appear as illustrated below:

```
                           Mode symbol       Record number
                                  ↓          ↓
        ┌─────────────────────────────────────────────┐
        │   CAPS          DEG    MEMO IN     1        │
        │                                             │
        │ ¯                                           │
        └─────────────────────────────────────────────┘
          ↑
          Cursor                  
```

The symbols appearing in the center of the top line of the display
indicate that the current mode is the MEMO IN mode. The value on the
upper right indicates the record number, which is actually DATA BANK
data line number. The record number 1 indicates that there is still
no data stored. The following is the procedure to enter the constant
for the acceleration of free fall.

**OPERATION:**

`CAPS G ,` → Lower case for input of g

`9 . 80665 , ` → Numeric value input

`M S - 2     ` → Lower case for input of ms⁻²

`SPC CAPS F R E E SPC F A L L EXE` → Upper case for remark input

Multiple items (i.e. symbols and values) can be included within a line
by separating them with commas. The final step of the operation is 
the **EXE** key which writes the data into memory. This operation also
causes the cursor to disappear from the display. Either press **EXE** again
to display the cursor at the upper left or simply enter the first character
for the next record. Either procedure switches to the next record number
for entry of the next item.

**OPERATION:**

`CAPS C ,` → Lower case for input of c

`2.99792458 𝔼 8 , ` → Numeric value input (exponent entered using 𝔼 )

`M S - 2     ` → Lower case for input of ms⁻²

`SPC CAPS S P E E D SPC L I G H T EXE` → Upper case for remark input

In this example, the value used as an exponent is entered using the **𝔼** key.
Note that both upper case and lower case letters were used in the first two lines.
Always check the display for the current mode. The indicator **CAPS** indicates the upper case mode,
while a clear display at the **CAPS** position indicates lower case.

Repeat the procedures outlined above until all ten constants are stored, 
and then switch to the CAL mode by pressing **MODE** **0**.

## DATA DISPLAY

All of the data stored can now be displayed to check for proper input.
While in the CAL mode, press the **MEMO** key to display records 1 and 2.
Note here that only record 1 is displayed if its length exceeds 32 characters.

