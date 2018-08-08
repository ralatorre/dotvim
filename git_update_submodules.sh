#!/bin/bash

################
# Uncomment if you want the script to always use the scripts
# directory as the folder to look through
#REPOSITORIES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPOSITORIES=`pwd`

IFS=$'\n'
echo "$REPOSITORIES"
REPOS=`ls "$REPOSITORIES/bundle"`
echo "$REPOS"
for REPO in `ls "$REPOSITORIES/bundle"`
do
  echo "$REPOSITORIES/bundle/$REPO/"
  if [ -d "$REPOSITORIES/bundle/$REPO" ]
  then
    echo "Updating $REPOSITORIES/bundle/$REPO at `date`"
    if [ -f "$REPOSITORIES/bundle/$REPO/.git" ]
    then
      cd "$REPOSITORIES/bundle/$REPO"
      git checkout master
      git status
      echo "Fetching"
      git fetch origin
      echo "Pulling"
      git pull origin master
    else
      echo "Skipping because it doesn't look like it has a .git folder."
    fi
    echo "Done at `date`"
    echo
  else
    echo "Something went wrong."
  fi
done
