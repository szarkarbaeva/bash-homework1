#!/bin/bash

read -p "Enter the meat temperature: " temp
if [ $temp -ge 119 ] && [  $temp -le 131 ]
then
	echo "The meat temp is rare"

elif [ $temp -ge 130 ] && [ $temp -le 141 ]
then
	echo "The meat temp is medium rare"
elif [ $temp -ge 140 ] && [ $temp -le 151 ]
then
	echo "The meat temp is medium"
elif [ $temp -ge 150 ] && [ $temp -le 161 ]
then 
	echo "The meat temp is medium well"
elif [ $temp -ge 160 ] && [ $temp -le 171 ]
then 
	echo "The meat temp is Well done"
else 
	echo "Enter correct temperature"
fi
