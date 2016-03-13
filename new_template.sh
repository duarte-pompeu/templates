#!/usr/bin/sh

TEMPL_FOLDER=~/Templates
EXTENSION=$(echo $1 | tr "." ":" | awk -F: '{print $2}')
FILE=$(ls $TEMPL_FOLDER | grep -E "*\.$EXTENSION\$")

cp $TEMPL_FOLDER/$FILE $1
