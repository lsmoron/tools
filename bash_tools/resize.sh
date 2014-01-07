#!/bin/bash

files=`ls *.JPG`
mkdir small
for file in $files
do
	cfile=`echo $file | sed 's/.JPG//' `
	echo "${cfile}.jpg"
	convert -resize 25% $file "small/${cfile}.jpg"
done