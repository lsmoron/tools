#!/bin/bash - 
#===============================================================================
#
#          FILE: resize.sh
# 
#         USAGE: ./resize.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Luke Smoron (lms), luke.smoron@nokia.com
#  ORGANIZATION: Navteq
#       CREATED: 07/29/2013 05:57:31 PM CDT
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error



count=0
mkdir resized
echo "TODO" > resized/info.txt
mkdir resized/thmb
mkdir resized/thmb_s
find . -iname "*jpg" | while read file
do
  convert -auto-orient -resize 800x600 "$file" resized/img_$count.jpg
  convert -auto-orient -resize 200x160 -quality 50% "$file" resized/thmb/img_$count.jpg
  convert -auto-orient -resize 80x60 -quality 50% "$file" resized/thmb_s/img_$count.jpg
  echo $file
  count=$(($count + 1))
done

