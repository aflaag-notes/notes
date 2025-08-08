#!/usr/bin/env bash

GIT=`which git`

NOTES_PATHS=`find -maxdepth 1 -type d`
NOTES_PATHS="$NOTES_PATHS ./packages/Nyx"

TO_AVOID="^(|\.|\./\.git|\./packages)$"

for PATH in $NOTES_PATHS; do
    if ! [[ "$PATH" =~ $TO_AVOID ]]
    then
        cd $PATH
        echo "##### INSIDE $PATH #####"
        $GIT checkout main
        cd ..
    fi
done
