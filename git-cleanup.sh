#!/bin/bash

read -p "Do you want to stage all files? [Y/N]" stage
if true; then # stage all files
	if git status; then
		echo "THIS BITCH RANNNNNNNNNN"
		git add -A 
	else 
		echo "Failed to make a cleanup commit because this is not a git repository"; exit 
	fi
else
	echo "FUCK THIS FUCKING THING"
fi

if git status; then
	if git commit -m 'removes logs, comments, and unused code'; then
		git push
		echo "Pushed cleanup commit to repository"
	else
		echo "Failed to make a cleanup commit because there are no staged files"
	fi
else
	echo "Failed to make a cleanup commit because this is not a git repository"
fi

exit 