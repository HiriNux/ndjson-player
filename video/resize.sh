#!/bin/bash
# This script resize all files in a directory and store them in another directory
if [[ $2 == "" ]]; then
    echo "Usage: $0 DIR WIDTH"
    exit;
fi
dir=${1%/}
width=$2
echo "Resizing $dir..."
mkdir -p "$dir-$width/"
mogrify -resize "$width"x"$width" -path "$dir-$width" $dir/*.jpg
