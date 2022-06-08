#!/bin/bash

# File:        readme-img-gen.sh
# Author:      Julian Orchard <hello@julianorchard.co.uk>
# Tag Added:   2022-06-08
# Description: WARN - I do not recommend this solution because parsing `ls`: 
#              https://unix.stackexchange.com/questions/128985/why-not-parse-ls-and-what-to-do-instead
#              but this is just for me, personally to use, so it's fine.

  mkdir output/tmp
  ls -p output |grep -v / |sort -R |tail -4 |while read file; do
    echo "Selected; ${file}"
    cp output/${file} output/tmp/${file}
  done
  magick montage output/tmp/*.jpg README.jpg
  rm -r output/tmp/
