#!/bin/bash

case $1 in
	start)
	echo "Start"
	;;
	stop)
	echo "Stop"
	;;
	restart)
	echo "Restart"
	;;
	help)
	echo "Help"
	;;
	*)
	echo "You inputed $1"
esac

