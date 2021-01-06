#!/bin/sh

#vol=`(amixer sget Master) | awk -F"[][]" '/dB/ { print $2 }'`
vol="71"

if [ "$vol" -gt "70" ]; then
	icon=""
elif [ "$vol" -lt "30" ]; then
	icon=""
else
	icon=""
fi

echo "$icon $vol"

