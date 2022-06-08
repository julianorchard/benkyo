#!/bin/bash 

# File:        build.sh
# Author:      Julian Orchard <hello@julianorchard.co.uk>
# Tag Added:   2022-06-08
# Description: Creates cards using 4 fonts with ImageMagick.

# char to render
  char=$1
  numb=$2
  file="$numb-$char"

# output
  folder=$3
  out="${folder}${file}.jpg"

# colours and fonts
  fg_colour='#222222'
  bg_colour='#efdfc1'
  font_one='Meiryo-&-Meiryo-Italic-&-Meiryo-UI-&-Meiryo-UI-Italic'
  font_two='Noto-Serif-JP'
  font_thr='Yuji-Mai-Regular'
  font_fou='BIZ-UDGothic-&-BIZ-UDPGothic'
  
# feedback progress
  echo "Creating ${char}."

# Windows requires magick' to be part of the command
  magick convert -size 400x400 -pointsize 150 xc:${bg_colour} -stroke ${fg_colour} \
                     -gravity NorthWest -font ${font_one} -annotate +40+5  ${char} \
                     -gravity NorthEast -font ${font_two} -annotate +40-5  ${char} \
                     -gravity SouthWest -font ${font_thr} -annotate +40+15 ${char} \
                     -gravity SouthEast -font ${font_fou} -annotate +40+40 ${char} \
                     ${out}

