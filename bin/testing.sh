#!/bin/bash

  magick convert -size 400x400 -pointsize 200 xc:white -font Consolas \
					-gravity NorthWest -stroke '#000C' -annotate +60+10 'A' \
					-gravity NorthEast -stroke '#000C' -annotate +60+10 'B' \
					-gravity SouthWest -stroke '#000C' -annotate +60+10 'C' \
					-gravity SouthEast -stroke '#000C' -annotate +60+10 'D' \
          abcd.jpg
