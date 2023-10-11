#! /usr/bin/bash

f="2019-09-27,"
while read a b c d;
do
	if [[ "$c" != "$f" ]]
        then
        	echo $e $g $f $h
        	f="$c";
        fi
	if [[ "$a" == *"_0"* ]] || [[ "$a" == *"_10" ]]
	then
        	e="$a";
        	f="$c";
        	g="$b";
        	h="$d";
	fi
done < ./attendance.log
