#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests all the commands implemented, working in conjunction in
# the proper manner.

sh legit-init
echo 0 > a
echo 0 > b
sh legit-add a b
sh legit-commit -m "Commit 1"
./legit-branch newBranch
./legit-branch
./legit-checkout newBranch
echo 1 >> a
echo -1 >> b
sh legit-commit -a -m "Commit 2"
sh legit-show 1:a
sh legit-show 1:b
./legit-checkout master
sh legit-log
echo 3 >> a
sh legit-add a
echo 4 >> a
sh legit-rm --cached a              # error message: file is different...
sh legit-rm --cached --force a
sh legit-status
./legit-branch -d newBranch

# The final command would give an error message about unmerged changes if
# legit-merge were implemented.
