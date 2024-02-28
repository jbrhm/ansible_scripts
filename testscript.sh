#!/usr/bin/env bash

if [ $# -ne 1 ];
then
	echo "Please provide the ansible playbook using: sh $0 <path/to/playbook>"
	exit 1
fi

sudo -v

readonly CURR_PATH=$(dirname $0)
ansible-playbook "${CURR_PATH}"/"$1"
