#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests the creation of a branch, in which files are created and
# added to index but committed in the original branch.

sh legit-init
echo 1 > a
sh legit-add a
sh legit-commit -m "Commit 1"
./legit-branch newBranch
./legit-checkout newBranch
echo 2 >> a
sh legit-add a
./legit-checkout master
sh legit-commit -m "Commit 2"
sh legit-show :a
cat a
./legit-checkout newBranch
sh legit-show :a
cat a

# The contents of a in newBranch for both current directory and index is:
# 1
# The contents if a in master for both current directory and index is:
# 1
# 2
