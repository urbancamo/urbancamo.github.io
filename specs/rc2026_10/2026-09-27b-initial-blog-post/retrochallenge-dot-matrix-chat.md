# Retrochallenge 2026: Dot Matrix Printer Projects

*Chat export, 26–27 September 2026*

---

## User

Retrochallenge is a contest, or really just a challenge, that lasts for a month in October. I've got a wide carriage dot matrix printer a PP404 and a heap of paper. Suggest some interesting projects using this an an emulated computer.

## Claude

The PP 404 is a nice beast for this: it's a PSi industrial flatbed machine rather than a home printer, rated at 500 cps, handling an original plus 5 copies, with zero tear-off to avoid wasting forms, and it was aimed at printing lists, barcodes, labels and multi-part formsets. That means it's fast, happy with fanfold, and good with carbonless paper. Here are some ideas, roughly from "evening job" to "whole month".

**1. A VAX with a hardcopy console.** Run OpenVMS under SIMH and route the operator console to the PP 404, so the machine behaves as if it had an LA36 DECwriter. Every boot message, OPCOM alert and login appears on paper as it happens. You can add the LP11 line printer device too, which gives you proper job banner pages, `PRINT/FLAG` burst pages, and MACRO-32 listings with cross-references at 132 columns. At the end of the month you'd have a physical console log as your write-up.

**2. A live RTTY teleprinter.** This is the radio tie-in. Decode RTTY with fldigi, feed the text to an emulated machine or a small "teleprinter" program, and print it live. DWD's shortwave weather RTTY broadcasts are a good source if they're still on air (worth checking schedules first), and so are RTTY contests. As a second strand, you could collect and print vintage RTTY art, the pictures radio amateurs sent by teleprinter in the '60s and '70s.

**3. A Commodore printer translator.** VICE can send device 4 output to a file or a raw device. The catch is that Commodore MPS-801/803 graphics and PETSCII don't match Epson ESC/P. Writing a converter from MPS to ESC/P would let Print Shop banners, GEOS documents and Newsroom pages print correctly on the PP 404. A 6-metre Print Shop banner on continuous paper would make a good photo for the Retrochallenge blog.

**4. A chart recorder.** Have an emulated machine (a BBC Micro, CP/M BASIC or the C64) sample something slow and print one line every so often, like a pen recorder. Candidates are band activity from your SDR as a waterfall made of characters, solar flux, or temperature. The paper then becomes a month-long timeline.

**5. A retro logbook and QSL labels.** Export your ADIF log and print it from an emulated CP/M or Z88 program in a classic greenbar logbook layout. You could then use the printer's barcode and label abilities to print QSL labels with a Code 39 or 128 barcode of the QSO. Multi-part paper gives you a "carbon copy" station log.

**6. Big graphics at 132 columns.** A Mandelbrot or other plot in 9-pin bit-image mode, drawn by an emulated 8-bit machine and running across several fanfold pages. The speed of the PP 404 also makes a fun comparison: time the same job in the emulator's clock against how long a real 1983 FX-80 would have taken.

**7. Z88 with PipeDream.** Run the Cambridge Z88 in OZvm, use its printer driver editor to build a driver for the PP 404's escape codes, and print PipeDream spreadsheets. It's a small project that ties in with the Z80 work you've already looked into.

Before any of these, check two things on the printer. First, see which interface module it has (parallel, serial, USB or Ethernet). Second, see which emulations it offers; Epson ESC/P or IBM Proprinter are the likely ones, but check the menu. The simplest way in from Linux is sending raw data straight to `/dev/usb/lp0`, or to port 9100 if it's networked, so emulator output doesn't pass through a driver.

If I had to pick one, I'd go for the VAX with a hardcopy console combined with the RTTY teleprinter. Both are very visual, both are strongly period, and together they'd use up a satisfying amount of paper.

**Sources:**
- [PSi Dot Matrix Printer PP404 – Argecy](https://www.argecy.com/pp404)
- [PSi PP 404 – PSi Matrix](https://psi-matrix.eu/en/dot-matrix-printer-linematrix-printer-lineprinter-line-printer-industrial-printer-label-printer/pp404/)

---

## User

A big graphics project would be fun. Can you research how far anyone has taken the generation of graphics - we have the ability to program very compact characters and line spacing. We could do bit-mapped graphics too, but ASCII is more retro

## Claude

This is a well-explored field up to a point, and there is a clear gap that fits your printer's abilities. Here's how far people have got, roughly in order.

### 1. Typewriter art (by hand)

The early ceiling was set by people rather than computers. Paul Smith (1921–2007), who had cerebral palsy, taught himself to make images using only the ten symbol keys on the top row of a typewriter. He got different textures from different symbols, created depth by adjusting the spacing between characters, and controlled line spacing by moving the roller between lines. His freehand roller positioning is essentially a manual version of the fine line spacing you have. His Mona Lisa and portraits are still the benchmark for how photographic character art can look.

### 2. Mainframe line-printer art (1960s–70s)

Knowlton and Harmon's *Studies in Perception I* (1966) is the landmark piece. A photograph of the dancer Deborah Hay was reduced to a grid of grey squares, and each grey level was assigned a symbol taken from telephony circuit diagrams. The printout was 12 feet wide and was first hung in a colleague's office at Bell Labs as a prank. Note that it used symbol substitution with no overstrike.

Overstrike became the main technique soon after. Samuel Harbison at Princeton in the early '70s is the key name. His FORTRAN program linearly mapped the densities between a black cutoff and a white cutoff onto about 16 overstrike patterns, which formed his printer greyscale. His largest piece was roughly 4 feet square and looked best from about 20 feet away. The famous overstrike Mona Lisa circulated on DECUS tapes among minicomputer users. Harbison's original files (Aldrin, Spock and others, in EBCDIC and ASCII) survive on David Gesswein's PDP-8 site, so you have real 1970s source data you could reprint.

Overstrike was also used for generative art. ART 1 (1968) had six elementary drawing routines for lines, rectangles, ellipses, triangles and exponential curves, working in two 50 × 105 character arrays.

### 3. The modern revival

Hugh Pyle's Teletype ASR-33 work is the most rigorous modern treatment of overstrike. He began by printing and scanning a table of every two-character overstrike combination, and he now matches source images against that table using both luminance and edge orientation. That is the current practical state of the art on real hardware. He's limited to 72 columns, uppercase only, and a fixed platen.

### 4. The academic frontier

Research has moved from tone-matching to shape-matching. Xu, Zhang and Wong's SIGGRAPH 2010 paper points out that tone-based methods produce halftone-like results and need high text resolution, and instead fits the image's main line structure to the shapes of characters. There's follow-up work (ASCII Art Synthesis from Natural Photographs, 2017) and recent machine-learning comparisons. However, all of it assumes characters on a fixed grid, one per cell, on a screen.

### Where the gap is

Nobody I found has combined all three of these:

1. **Overstrike stacks**: several glyphs struck in one cell, as Harbison and Pyle do.
2. **Sub-cell positioning**: moving the paper by 1/216 inch (ESC J *n* in ESC/P) and shifting glyphs horizontally by fractions of a character (ESC \ relative positioning). This means glyphs don't have to sit on a grid. It is Paul Smith's roller technique done by machine.
3. **Structure-aware matching**: using the shapes of `/ \ | _ ( )` to draw edges, as in the SIGGRAPH work, with tone from overstrike filling the areas between edges.

Line printers and Teletypes can't do the second item, and screen-based research doesn't do the first or second. Your PP 404 can do all three, and its 132+ columns at condensed pitch give you plenty of resolution. I didn't find anyone doing this, which doesn't prove no one has, but I also didn't see it in the obvious places.

### A possible Retrochallenge project

- **Week 1: characterise the printer.** Print a calibration sheet of every printable glyph, every two-glyph overstrike, and some glyphs at sub-cell offsets. Scan it at high resolution. That gives you the actual ink footprint of each glyph on your ribbon, which works better than a font-based guess.
- **Week 2: build the renderer.** On a modern machine, write a greedy or annealing optimiser that places glyph "stamps" (glyph plus x/y offset) to minimise the difference from a target image, with edges weighted using the structure-based idea. The output is a stream of plain ESC/P text and positioning commands, with no bit-image mode, so it stays within the ASCII rules.
- **Week 3: add the retro part.** Replay the stream from an emulated machine, for example a small VAX program in SIMH, or CP/M BASIC reading the file and sending it to LST:. Then reprint one of Harbison's 1973 files as it was and next to it your version of the same subject, to compare 50 years of progress.
- **Week 4: go big.** Print a multi-sheet mural across the full width of the carriage, tiled Harbison-style and taped together.

One practical tip: your ribbon's wear will affect the calibration table from week 1, so fit a fresh ribbon before calibrating and keep a spare for the final print.

**Sources:**
- [Samuel Harbison interview – q7.neurotica.com](https://q7.neurotica.com/Oldtech/ASCII/)
- [hughpyle/ASR33 asciiart README – GitHub](https://github.com/hughpyle/ASR33/blob/master/asciiart/README.md)
- [Printing, Typing, Overstriking – Hugh Pyle](https://hughpyle.com/ASR33/)
- [Art1 by Richard Williams – GitHub](https://github.com/ef1j/Art1)
- [Studies in Perception I – V&A](https://collections.vam.ac.uk/item/O1488651/studies-in-perception-i-screenprint-ken-knowlton/)
- [Studies in Perception restoration – Jim Boulton](https://jimboulton.medium.com/studies-in-perception-a-restoration-story-241cd8c75ab1)
- [Paul Smith (artist) – Wikipedia](https://en.wikipedia.org/wiki/Paul_Smith_(artist))
- [Structure-based ASCII art – SIGGRAPH history](https://history.siggraph.org/learning/structure-based-ascii-art-by-xu-zhang-and-wong/)
