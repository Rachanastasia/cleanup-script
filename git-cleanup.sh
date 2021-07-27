#!/bin/bash

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