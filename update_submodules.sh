#!/bin/bash

NOTES_PATHS=`find -maxdepth 1 -type d`
TO_AVOID="^(|\.|\./\.git)$"

for PATH in $NOTES_PATHS; do
    if ! [[ "$PATH" =~ $TO_AVOID ]]
    then
        cd $PATH
        /usr/bin/git checkout main
        cd ..
    fi
done
