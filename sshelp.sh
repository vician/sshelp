#!/bin/bash

function init {
	# Alerady existing public keys?
	count_ssh_keys=$(ls ~/.ssh/*.pub 2>/dev/null | wc -l 2>/dev/null)
	if [ $? -ne 0 ] || [ $count_ssh_keys -eq 0 ]; then
		# No public key, generate one
		ssh-keygen -t rsa -b 4096
	fi

}

init
