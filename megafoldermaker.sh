#!/bin/bash

  #For every number between the first argument and the last
 for ((i = 5; i <= 6; i++))
 do
 #Create a new folder for that number
    echo "Creating directory number $i"
    mkdir "week $i"
done
#If there aren't two arguments to the script
 if (( $#!=2 )); then
    #Print an error and exit
    echo "Error, provide two numbers" && exit 1
fi


   