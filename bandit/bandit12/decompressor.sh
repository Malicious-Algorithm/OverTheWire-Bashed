#!/bin/bash

name_de=$(7z l content.gzip | grep "Name" -A 2 | tail -n 1 | awk 'NF{print $NF}')
7z x content.gzip > /dev/null 2>&1

while true; do
	7z l $name_de > /dev/null 2>&1

	if [ "$(echo $?)" == "0" ]; then
		de_next=$(7z l $name_de | grep "Name" -A 2 | tail -n 1 | awk 'NF{print $NF}')
		7z x $name_de > /dev/null 2>&1 && name_de=$de_next
	else
		cat $name_de; rm data* 2>/dev/null
		exit 1
	fi
done
