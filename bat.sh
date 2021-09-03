#!/bin/bash
f="$(cat /sys/class/power_supply/BAT?/capacity)"
for x in /sys/class/power_supply/BAT?/capacity
do
	case "$(cat $x)" in
		100|9[0-9])	echo " $f%" ;;
		8[0-9]|7[0-9]) 	echo " $f%" ;;
		6[0-9]|5[0-9])	echo " $f%" ;;
		4[0-9]|3[0-9])	echo " $f%" ;;
		*)		echo " $f%" ;;
	esac
done
