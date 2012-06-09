#!/bin/csh -f

#To run:

#./imagicVols_to_spi.b [imagic vol file] [number of volumes]

set vol = $1
set num = $2

set i = 1
while ( $i <= $num )

setenv IMAGIC_BATCH 1
echo "! "
echo "! "
echo "! ====================== "
echo "! IMAGIC ACCUMULATE FILE "
echo "! ====================== "
echo "! "
echo "! "
echo "! IMAGIC program: inc3dmenu --------------------------------------------"
echo "! "
/opt/qb3/imagic-100312/threed/inc3dmenu.e MODE DENS_COPY <<EOF
${vol:r},$i
${vol:r}_vol${i}
EOF
echo "! "
echo "! IMAGIC program: em2em ------------------------------------------------"
echo "! "
/opt/qb3/imagic-100312/stand/em2em.e <<EOF
IM
SPI
SINGLE_FILE
3
${vol:r}_vol${i}
${vol:r}_vol${i}.spi
LINUX
YES
EOF

@ i = $i + 1

end 

