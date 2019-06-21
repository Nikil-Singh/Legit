#!/bin/dash
# Created by Nikil Singh z5209322

# Check if there are arguements.
if test $# -eq 0
then
    echo "Error Message"
else
    mkdir ./legit/.index

    # Check if directory was created successfully.
    if test -d ./legit/.index
    then
        # Nothing
    else
        echo "Error Message"
    fi
fi

# Check if all arguements are valid files.
for file in $@
do

done
