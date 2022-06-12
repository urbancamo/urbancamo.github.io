pandoc \
--pdf-engine=xelatex \
-V 'mainfont:DejaVuSerif' \
-V 'mainfontoptions:Extension=.ttf, UprightFont=*, BoldFont=*-Bold, ItalicFont=*-Italic, BoldItalicFont=*-BoldItalic' \
-V 'sansfont:DejaVuSans.ttf' \
-V 'monofont:DejaVuSansMono.ttf' \
-V 'geometry:margin=0.5in' \
-V 'papersize=a4' \
-V 'fontsize=10pt' \
-o adif-processor.pdf \
adif-processor.md satellite/satellite.md
