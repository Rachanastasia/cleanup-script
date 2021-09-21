#!/bin/bash

if git status; then
	git status

	read -p "Do you want to stage all files? [ Y / N ] " stage
		if (false); then # stage all files
			echo "Staging all files with `git add -A`"
			git add -A 
		else 
			echo "Files were not staged"
		fi

	if git commit -m 'removes logs, comments, and unused code'; then
		git push
		echo "Pushed cleanup commit to repository"
	else
		echo "Failed to make a cleanup commit because there are no staged files"
	fi
else 
	echo "Failed to make a cleanup commit because this is not a git repository"; exit 
fi; exit
