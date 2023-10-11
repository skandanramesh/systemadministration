#!/usr/bin/bash

if [[ $1 == employeeId ]] 
then
	i=1
elif [[ $1 == name ]]
then
	i=2
elif [[ $1 == phone ]]
then
	i=3
elif [[ $1 == salaries ]]
then
	i=4
elif [[ $1 == email ]]
then
	i=5
elif [[ $1 == year ]]
then
	i=6	
fi
original=$2
change=$3

awk -F, -v col="$i" -v original="$original" -v change="$change" 'BEGIN {OFS=FS} {       
  if ($col==original) $col=change;
  print $0
}' ./file4.txt > temp.txt && mv temp.txt file4.txt
