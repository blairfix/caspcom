#!/usr/bin/env bash

# parameters
wordpress=false
fig_location="./figures/"
month="2020/10/"

# source dir
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"


# get most recent draft
post=$(find . -maxdepth 1 -mindepth 1  -name '*[1-9].md' | sort | tail -n 1)

# normal post
pandoc $post -o about.html

