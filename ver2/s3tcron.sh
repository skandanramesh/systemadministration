#! /usr/bin/bash

cp future.txt /usr/local/bin/future.txt
sed -i 's|./future.txt|/usr/local/bin/future.txt|g' schedule.sh
touch /etc/cron.daily/meeting_update
cp schedule.sh /etc/cron.daily/meeting_update
echo " " >> meeting_update
chmod u+x meeting_update

