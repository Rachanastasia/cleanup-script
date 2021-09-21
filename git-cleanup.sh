#!/bin/bash

read -p "Do you want to stage all files? [ Y / N ] " stage
	if (false); then # stage all files
		if git status; then
			echo "Staging all files with `git add -A`"
			git add -A 
		else 
			echo "Failed to make a cleanup commit because this is not a git repository"; exit 
		fi
	else 
		echo "No files were staged"
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