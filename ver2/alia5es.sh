#! /usr/bin/bash

echo "alias genUser='cp -p genUser.sh /usr/local/bin/genUser.sh';" >> ~/.bashrc
echo "alias permit='cp -p permit.sh /usr/local/bin/genUser.sh';" >> ~/.bashrc
echo "alias schedule='cp -p schedule.sh /usr/local/bin/schedule.sh';" >> ~/.bashrc
echo "alias attendance='cp -p attendance.sh /usr/local/bin/attendance.sh';" >> ~/.bashrc
source ~/.bashrc
