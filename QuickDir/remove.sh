#!/bin/bash

DIRECTORYLIST=~/.mp/Ref_Lists/QuickDir-list
COUNTER=1

echo -e '\e[32m'
echo '|-----------------------------------------------------|'
echo "|----------------Directories Available----------------|"
echo '|-----------------------------------------------------|'
echo
while read -r line
do
	DIRECTORYITEMIZED[${#DIRECTORYITEMIZED[@]}]="$line"
	echo -e "\e[33m[${COUNTER}] \e[94m${line}"
	COUNTER=$(expr $COUNTER + 1)
done < "$DIRECTORYLIST"
echo
echo
echo -e "\e[36mWhich directory do you want to remove?\e[0m"
echo -n "Enter a number, and press [ENTER]: "
read SELECTION

echo -e "\e[33m|-----------------------------------------------------|"
echo "DELETING LINE #${SELECTION}"
echo -e "\e[33m|-----------------------------------------------------|"

sed "${SELECTION}d" ~/.mp/Ref_Lists/QuickDir-list > ~/.mp/Ref_Lists/QuickDir-list.tmp
mv ~/.mp/Ref_Lists/QuickDir-list.tmp ~/.mp/Ref_Lists/QuickDir-list