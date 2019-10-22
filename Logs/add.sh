#!/bin/bash

echo -e '\e[32m'
echo "
|-----------------------------------------------------|
|-----------------ADDING LOG DIRECTORY----------------|
|-----------------------------------------------------|"
echo -e '\e[0m'

echo -e '\e[36mInput logs to add:\e[0m'
read NEWDIR
echo $NEWDIR >> ~/.mp/Ref_Lists/Logs-list