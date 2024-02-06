#!/bin/bash

DELAY=3

clear
cat <<- _EOF_
	Please Select:

	A. Display System Information
	B. Display Disk Space
	C. Display Home Space Utilization
	Q. Quit	
_EOF_
read -p "Enter selection [0-3] > "
	
case $REPLY in
	q|Q|0)
		echo "Program teminated."
		exit
		;;
	a|A|1)
		echo "Hostname: $HOSTNAME"
		uptime
		;;
	b|B|2)
		df -h
		;;
	c|C|3)
		if [[ $(id -u) -eq 0 ]]; then
			echo "Home Space Utilization (All Users)";
			du -sh /home/*;
		else
			echo "Home Space Utilization ($USER)"
			du -sh $HOME
		fi
		;;
	*)
		echo "Invalid entry"
		;;
esac
