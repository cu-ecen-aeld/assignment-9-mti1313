#!/bin/sh

case "$1" in 
	start)
		echo 'start scull and misc-modules'
		module_load faulty
		scull_load
		aesdchar_load
		modprobe hello
		;;
	stop)
		echo 'Stop scull and misc-modules'
		module_unload faulty
		scull_unload
		aesdchar_unload
		rmmod hello
		;;
	*)
	echo "USAGE: $0 <start|stop> - to loading and unloading kernel modules"
	exit 1
esac

exit 0
