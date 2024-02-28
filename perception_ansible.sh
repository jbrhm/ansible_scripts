#!/usr/bin/env bash

sudo -v

if [[ ! $(lshw -C display | grep vendor) =~ NVIDIA ]]; then
  echo "Computer Needs to have an NVIDIA GPU"
  exit 0
fi

if [[ ! $(which zsh) =~ /usr/bin/zsh ]]; then
	echo "This script requires ZSH"
	exit 0
fi

ansible-playbook ./Perception_DevOps.yml
