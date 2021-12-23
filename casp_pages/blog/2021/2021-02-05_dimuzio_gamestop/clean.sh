#!/usr/bin/env bash
#**********************

# parameters
wordpress=true
fig_location="./figures/"
month="2021/02/"
fig_iteration="0"


#**********************
# source dir
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"


# get most recent draft
post=$(find . -maxdepth 1 -mindepth 1  -name '*.md' | sort | tail -n 1)

# normal post
pandoc $post -o temp.html

# post with mathjax
#pandoc --mathjax $post -s -o temp.html


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
	s/'/\&rsquo;/g" temp.html 
	
sed -i -e 's/">/" target="_blank">/g
	s/target="_blank"><sup>/><sup>/g
	s/target="_blank">↩/>↩/g
	' temp.html

# insert script
#Rscript insert.R

# add hrefs for figures
Rscript /home/blair/Dropbox/cloud_work/blog/pages/utilities/wordpress_fig/fig_ref.R $parent_path --save

	
# split body and footer
sed -n '/footer_here/q;p' temp.html > body.html
sed -n '/footer_here/,$p'  temp.html > foot.html
sed -i 's/footer_here//g' foot.html

	
# add references
cat ./references/references.html >> foot.html


# add header and footer
header=~/Dropbox/cloud_work/blog/pages/utilities/frontmatter/header
footer=~/Dropbox/cloud_work/blog/pages/utilities/frontmatter/footer


# final draft for local browser
cat $header body.html foot.html > final_draft.html
echo "</body>" >> final_draft.html
echo "</html>" >> final_draft.html


# final draft for wordpress
if [ $wordpress = true ] ; then
    
    cat  body.html   | sed -e '/<h2/d' -e '/Excerpt:/d'  > wordpress_temp.html

    Rscript /home/blair/Dropbox/cloud_work/blog/pages/utilities/wordpress_fig/clean.R $parent_path $fig_location $month $fig_iteration --save

    #cat wordpress_temp.html  | xclip -selection clipboard
    #rm wordpress_temp.html 

fi

#https://capitalaspower.com/wp-content/uploads/2021/02/fig1.png
# fix image source
sed -i -e 's/economicsfromthetopdown.files.wordpress.com/capitalaspower.com\/wp-content\/uploads/g' wordpress_temp.html

# remove temp.html files
rm temp.html
rm foot.html
rm body.html


# switch to firefox
wmctrl -vxa firefox

# refresh firefox after delay
sleep 0.2
xdotool key F5
