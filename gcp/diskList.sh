#!/usr/bin/bash

# This BASH script is designed to list GCP disks
# Takes argument for project and argument for server name 
# Current version only looks through a project, one to iterate through all projects is pending

# Variables 
server=$1
project=$2

# Help
if [[ $1 == "help" || $1 == "Help" ]]
then
	echo "disklist server project"
	exit
fi

if [ -z $server ]
then
	echo -n "Please enter a server to search for: "
	read server 
fi

if [ -z $project ]
then
	echo =n "Please enter a project to use: "
	read project
fi

gcloud compute disks list --project $project | grep $server
