#!/bin/bash

###test for external .env configs file
echo "commencing GCP_main.sh script execution"
if [ -e "./*.env" ]; then
	echo ".env file found in 'if'"
	export ERROR_STATUS=false
elif [ -e .env ]; then
	echo ".env file found in 'elif'"
	export ERROR_STATUS=false
else
	echo ".env file not found, script execution cannot complete"
	export ERROR_STATUS=true
fi