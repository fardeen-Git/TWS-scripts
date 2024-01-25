#!/bin/bash

echo "Type"
echo "A, if you want to create a directory"
echo "B, if you want to create a folder"

read -p "Enter your choice: " choice

case $choice in
A) read -p "Enter the name of the Directory that you want to create: " Directoryname
   mkdir $Directoryname
   echo "Directory created successfully!" ;;
B) read -p "Enter the name of the File that you want to create: " Filename
   touch $Filename
   echo "File created successfully!" ;;
*) echo "Invalid choice"
esac
