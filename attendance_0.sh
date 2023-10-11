#! /bin/bash

echo $1 $2
d1="2019-09-27"
d2=$(date -I)
while [ $d1 != $d2 ]
do

for i in {01..30}
do
grep -q "$d1" /home/skandan/Documents/DELTA_T1/attendance.log
var1=$?
if [ $var1 == 1 ]
then 
break
fi
grep -q "webDev_$i - $d1" /home/skandan/Documents/DELTA_T1/attendance.log
var2=$?
grep -q "appDev_$i - $d1" /home/skandan/Documents/DELTA_T1/attendance.log
var3=$?
grep -q "sysAd_$i - $d1" /home/skandan/Documents/DELTA_T1/attendance.log
var4=$?
if [ $var1 != $var2 ]
then
echo "absent: webDev_$i - $d1"
fi
if [ $var1 != $var3 ]
then
echo "absent: appDev_$i - $d1"
fi
if [ $var1 != $var4 ]
then
echo "absent: sysAd_$i - $d1"
fi
done
d1=$(date -I -d "$d1 + 1 day")

done
