#!/usr/bin/env bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"


pandoc --from markdown_strict prize.md -o prize.html



# replace special characters
sed -i -e "s/---/\&mdash;/g
	s/<\/p>/<\/p>\n/g
	s/<hr \/>/ /g
	s/--/\&ndash;/g
	s/\.\.\./\&#8230;/g 
	s/ '/ \&lsquo;/g
	s/('/(\&lsquo;/g
	s/>'/>\&lsquo;/g  
	s/' /\&rsquo; /g 
	s/'/\&rsquo;/g" prize.html 


Rscript merge.R	


# switch to firefox
wmctrl -vxa firefox

# refresh firefox after delay
sleep 0.2
xdotool key F5
