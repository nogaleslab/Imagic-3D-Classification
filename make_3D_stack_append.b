#!/bin/csh -f

foreach file (vol*.img)

set out='3D_stack'

setenv IMAGIC_BATCH 1
echo "! "
echo "! "
echo "! ====================== "
echo "! IMAGIC ACCUMULATE FILE "
echo "! ====================== "
echo "! "
echo "! "
echo "! IMAGIC program: append -----------------------------------------------"
echo "! "
/opt/qb3/imagic-110326/stand/append.e <<EOF
${file:r}
$out
EOF

end

