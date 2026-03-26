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

# load environment variables key/value .env file if not found
if [ $ERROR_STATUS = true ]; then
  exit
elif [ $ERROR_STATUS = false ]; then
  environment.env
fi




