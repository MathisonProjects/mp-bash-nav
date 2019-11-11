#!/bin/bash

DIRECTORYLIST=~/.mp/Ref_Lists/QuickDir-list
COUNTER=0

echo -e '\e[32m'
echo '|-----------------------------------------------------|'
echo "|----------------LOG DIRECTORY Available----------------|"
echo '|-----------------------------------------------------|'
echo
while read -r line
do
	DIRECTORYITEMIZED[${#DIRECTORYITEMIZED[@]}]="$line"
	echo -e "\e[33m[${COUNTER}] \e[94m${line}"
	du -h --max-depth=1 DIRECTORYITEMIZED[${#DIRECTORYITEMIZED[@]}]
	COUNTER=$(expr $COUNTER + 1)
done < "$DIRECTORYLIST"
echo
echo -e "\e[33m|-----------------------------------------------------|"
echo
echo -e "\e[36mWhich directory do you want to clear?\e[0m"
echo -n "Enter a number, and press [ENTER]: "
read SELECTION

echo -e "\e[33m|-----------------------------------------------------|"

echo ${DIRECTORYITEMIZED[${SELECTION}]}

rm -rf ${DIRECTORYITEMIZED[${SELECTION}]}/*
