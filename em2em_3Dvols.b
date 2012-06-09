#!/bin/csh -f

foreach file (vol*)

setenv IMAGIC_BATCH 1
echo "! "
echo "! "
echo "! ====================== "
echo "! IMAGIC ACCUMULATE FILE "
echo "! ====================== "
echo "! "
echo "! "
echo "! IMAGIC program: em2em ------------------------------------------------"
echo "! "
/opt/qb3/imagic-110326/stand/em2em.e <<EOF
SPI
SIN
IMAGIC
3
$file
${file:r}
4.23,4.23,4.23
YES
0
EOF

end

