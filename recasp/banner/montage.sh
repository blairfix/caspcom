#!/bin/sh

cd ./pics

montage   -tile x1  -geometry 600x300-120+0 *.jpg  montage.jpg 

mv montage.jpg ../


