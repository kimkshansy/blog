#!/bin/sh

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
hugo -t newsroom

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi

git add .
git commit -m "$msg"
git push origin master
