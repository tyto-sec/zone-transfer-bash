#!/bin/bash

echo -e "\nZone Transfer"
echo "Written by tyto"

if [ -z "$1" ]; then
	echo "Example: $0 domain.com"
else
	echo ""
	for server in $(host -t ns $1 | cut -d " " -f4); do
		host -l $1 $server | grep "has address"
	done
	echo ""
fi