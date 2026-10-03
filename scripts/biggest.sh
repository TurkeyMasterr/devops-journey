#!/usr/bin/env bash

if [ -z "$1" ]; then
	echo "Usage: $0  <folder>"
	exit 1

fi

du -ah "$1" | sort -rh | head -5
