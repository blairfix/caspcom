#!/bin/sh

cd ./pics

montage   -tile x1  -geometry 600x300-120+0 *.jpg  montage.jpg 

#convert montage.jpg   -blur 0x4   montage.jpg
#convert montage.jpg  -level 0%,100%,0.5   montage.jpg
convert montage.jpg  -fill black -colorize 50%   montage.jpg

mv montage.jpg ../


