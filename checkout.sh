#!/usr/bin/env bash

NOTES_PATHS=`find -maxdepth 1 -type d`
NOTES_PATHS="$NOTES_PATHS ./packages/Nyx"

TO_AVOID="^(|\.|\./\.git|\./packages)$"

for PATH in $NOTES_PATHS; do
    if ! [[ "$PATH" =~ $TO_AVOID ]]
    then
        cd $PATH
        echo "##### INSIDE $PATH ##### "
        /etc/profiles/per-user/aless/bin/git checkout main
        cd ..
    fi
done
