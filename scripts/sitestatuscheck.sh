#!/usr/bin/env bash

# Check if the user has provided a URL

if [ -z "$1" ]; then
        echo "$0 expects a URL"
        exit 1
else
	URL="$1"
	CODE="$(curl -s -o /dev/null -w "%{http_code}" "$URL")"

	# Check if whether the code returned is up or down

	if [ "$CODE" = "200" ] || [ "$CODE" = "301" ]; then
    		echo "$URL is up ($CODE)"
	else
    		echo "$URL is down ($CODE)"
	fi
fi
