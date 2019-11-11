#!/bin/bash

HEADER=${1}
TEXTTOADD=${2}
FILENAME=${3}

~/.mp/funcs/header.sh $HEADER
echo -e "\e[36m${TEXTTOADD}\e[0m"
read NEWTEXT
echo $NEWTEXT >> $FILENAME