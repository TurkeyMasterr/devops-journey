#!/usr/bin/env bash

LOG="$1"

if [ -z "$LOG" ]; then
	echo "$0 requires a log file to sample through"
	exit 1
else
	awk '{print $1}' "$LOG" | sort | uniq -c | sort -rn
fi
