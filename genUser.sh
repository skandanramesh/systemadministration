#! /usr/bin/bash

groupadd secondyearsysAds
groupadd thirdyearsysAds
groupadd fourthyearsysAds
groupadd secondyearwebDevs
groupadd thirdyearwebDevs
groupadd fourthyearwebDevs
groupadd secondyearappDevs
groupadd thirdyearappDevs
groupadd fourthyearappDevs
for i in {01..30} 
do
	if [ "$i" -lt 11 ]
	then
		useradd -m -g secondyearsysAds sysAd_$i
	elif [ "$i" -lt 21 ]
	then
		useradd -m -g thirdyearsysAds sysAd_$i
	else
		useradd -m -g fourthyearsysAds sysAd_$i
	fi
	echo sysAd_$i:password$i | chpasswd
done
for i in {01..30} 
do
	if [ "$i" -lt 11 ]
	then
		useradd -m -g secondyearappDevs appDev_$i
	elif [ "$i" -lt 21 ]
	then
		useradd -m -g thirdyearappDevs appDev_$i
	else
		useradd -m -g fourthyearappDevs appDev_$i
	fi
	echo appDev_$i:password$i | chpasswd
done
for i in {01..30} 
do
	if [ "$i" -lt 11 ]
	then
		useradd -m -g secondyearwebDevs webDev_$i
	elif [ "$i" -lt 21 ]
	then
		useradd -m -g thirdyearwebDevs webDev_$i
	else
		useradd -m -g fourthyearwebDevs webDev_$i
	fi
	echo webDev_$i:password$i | chpasswd
done
useradd -m Jay_Jay
echo Jay_Jay:password | chpasswd

