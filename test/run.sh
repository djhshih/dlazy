#!/bin/bash

mkdir -p out

if [[ $1 != "E" ]]; then
	echo "processed $1" > out/$1.txt
else
	exit 69
fi
