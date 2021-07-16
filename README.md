# Clean up Script

This script is for automating cleanup commits (removing `console.log`s, comments, etc.). It makes a commit with the message "cleanup" and pushes it to the current repository. 

***This script does not stage files for the user.*** If the user runs the script in a directory that is not in a git repository or there are no staged files in the repository, the user is given appropriate feedback.

## Using the script 

Alias the script in your `~/.zshrc` file with `alias cleanup="bash /path/to/dir/git-cleanup.sh"`.

When you want to make a cleanup commit in an existing repository, stage files and run `cleanup`.