#! /usr/bin/bash

for i in {01..30} 
do
	touch /home/sysAd_$i/schedule.txt
done
for i in {01..30} 
do
	touch /home/appDev_$i/schedule.txt
done
for i in {01..30} 
do
	touch /home/webDev_$i/schedule.txt
done
touch /home/Jay_Jay/schedule.txt

touch /etc/cron.daily/meeting_update
cp schedule2.sh /etc/cron.daily/meeting_update
echo " " >> meeting_update
