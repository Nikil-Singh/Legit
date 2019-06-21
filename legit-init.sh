#!/bin/dash
# Created by Nikil Singh z5209322

# First check if there are one or more arguements on command line not including
# this actual shell.
if test $# -ne 0
then
    echo "usage: legit-init"
    exit 1
fi

if test -d .legit
then
    echo "legit-init: error: .legit already exists"
else
    mkdir .legit
    echo "Initialized empty legit repository in .legit"
fi
