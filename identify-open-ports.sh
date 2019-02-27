#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: ./identify-open-ports.sh TARGET-IP-RANGE"
	exit 1

fi


echo ""
echo "Scanning IP Address range ${1}"
echo "Excluding IP Address ranges ${hostnames}"
echo "nmap -e eth1 -Pn -sS -F -n -vv --reason --open ${1}"

nmap -e eth1 -Pn -sS -F -n -vv --reason --open ${1}
