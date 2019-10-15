#!/bin/bash

echo -e '\e[32m'
echo "
|-----------------------------------------------------|
|-------------------ADDING REPOSITORY-----------------|
|-----------------------------------------------------|"
echo -e '\e[0m'

echo -e '\e[36mInput repo to add:\e[0m'
read REPO
echo $REPO >> ~/.mp/Git/repos