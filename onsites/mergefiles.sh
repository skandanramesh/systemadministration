#! /usr/bin/bash

while IFS=, read -r name employeeId phone
do
	file2line="$(grep -n $employeeId ./file2.txt | cut -f1 -d:)"
	grep -q $employeeId ./file2.txt
	file2existence=$?
	if [ $file2existence == 0 ]
	then
		salaries="$(awk -F ',' -v row="$file2line" -v col=2 'NR==row{print $col}' ./file2.txt)"
	else
		salaries="-------"
	fi
	file3line="$(grep -n $phone ./file3.txt | cut -f1 -d:)"
	grep -q $phone ./file3.txt
	file3existence=$?
	if [ $file3existence == 0 ]
	then
		email="$(awk -F ',' -v row="$file3line" -v col=1 'NR==row{print $col}' ./file3.txt)"
		year="$(awk -F ',' -v row="$file3line" -v col=3 'NR==row{print $col}' ./file3.txt)"
	else
		email="-------------------"
		year="----"
	fi
	echo "$employeeId,$name,$phone,$salaries,$email,$year" >> ./file4.txt		
done < file1.txt

