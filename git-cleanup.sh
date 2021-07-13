#!/bin/bash


def cleanup_commit:
	try:
		git commit -m 'clean up'
		git push
		echo "Pushed cleanup commit to repository"
	except:
		echo "Failed to make a cleanup commit in this location"
cleanup_commit()
