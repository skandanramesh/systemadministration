#! /usr/bin/bash

for i in {01..30} 
do
	if [ "$i" -lt 11 ]
	then
		chmod go-rwx /home/sysAd_$i
		setfacl -m g:thirdyearsysAds:r-x /home/sysAd_$i
		setfacl -m g:fourthyearsysAds:r-x /home/sysAd_$i
		chmod go-rwx /home/appDev_$i
		setfacl -m g:thirdyearappDevs:r-x /home/appDev_$i
		setfacl -m g:fourthyearappDevs:r-x /home/appDev_$i
		chmod go-rwx /home/webDev_$i
		setfacl -m g:thirdyearwebDevs:r-x /home/webDev_$i
		setfacl -m g:fourthyearwebDevs:r-x /home/webDev_$i
		setfacl -m u:Jay_Jay:r-x /home/sysAd_$i
		setfacl -m u:Jay_Jay:r-x /home/appDev_$i
		setfacl -m u:Jay_Jay:r-x /home/webDev_$i
	elif [ "$i" -lt 21 ]
	then
		chmod go-rwx /home/sysAd_$i
		setfacl -m g:fourthyearsysAds:r-x /home/sysAd_$i
		chmod go-rwx /home/appDev_$i
		setfacl -m g:fourthyearappDevs:r-x /home/appDev_$i
		chmod go-rwx /home/webDev_$i
		setfacl -m g:fourthyearwebDevs:r-x /home/webDev_$i
		setfacl -m u:Jay_Jay:r-x /home/sysAd_$i
		setfacl -m u:Jay_Jay:r-x /home/appDev_$i
		setfacl -m u:Jay_Jay:r-x /home/webDev_$i
	else
		chmod go-rwx /home/sysAd_$i
		chmod go-rwx /home/appDev_$i
		chmod go-rwx /home/webDev_$i
		setfacl -m u:Jay_Jay:r-x /home/sysAd_$i
		setfacl -m u:Jay_Jay:r-x /home/appDev_$i
		setfacl -m u:Jay_Jay:r-x /home/webDev_$i
	fi
done
chmod go-rwx /home/Jay_Jay

