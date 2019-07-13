#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests the contents of files of the same name in different
# branches.

sh legit-init
echo 1 > a
sh legit-add a
sh legit-commit -m  "Commit 1"
./legit-branch newBranch
./legit-checkout newBranch
echo 2 >> a
sh legit-add a
sh legit-commit -m "Commit 2"
sh legit-show :a
./legit-checkout master
sh legit-show :a

# The contents if a in index of newBranch is:
# 1
# 2
# The contents of a in index of master is:
# 1
