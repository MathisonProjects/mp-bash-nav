#!/bin/bash

SECTIONNAME=$1
SECTIONLEN=${#SECTIONNAME}
let TOTALDASHES=40-$SECTIONLEN
let HALFDASH=$TOTALDASHES/2
let HALFDASHADDED=$HALFDASH+$HALFDASH
DISPLAYDASH=""

for (( c=1; c<=$HALFDASH; c++ ))
do  
	DISPLAYDASH="${DISPLAYDASH}-"
done

echo -e '\e[32m'
echo '|----------------------------------------|'

if [ $HALFDASHADDED == $TOTALDASHES ]; then
	echo "|${DISPLAYDASH}${SECTIONNAME}${DISPLAYDASH}|"
else
	echo "|${DISPLAYDASH}${SECTIONNAME}${DISPLAYDASH}-|"
fi

echo '|----------------------------------------|'
echo -e '\e[0m'
