#!/usr/bin/env bash
#**********************


#**********************
# source dir
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"


# get most recent draft
post=$(find . -maxdepth 1 -mindepth 1  -name '*.md' | sort | tail -n 1)

# normal post
pandoc $post -o final.html


# switch to firefox
wmctrl -vxa firefox

# refresh firefox after delay
sleep 0.2
xdotool key F5
