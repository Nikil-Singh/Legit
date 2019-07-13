#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests modified file contents in multiple new branches.

sh legit-init
touch a
sh legit-add a
sh legit-commit -m "Commit 1"
./legit-branch aBranch1
./legit-checkout aBranch1
echo 1 >> a
sh legit-add a
sh legit-show :a
./legit-branch aBranch2
./legit-checkout aBranch2
sh legit-show :a
echo 2 >> a
sh legit-add a
sh legit-show :a
./legit-checkout aBranch1
sh legit-show :a
./legit-checkout master
sh legit-show :a
./legit-checkout aBranch1
sh legit-commit -m "Commit 2"
./legit-checkout aBranch2
sh legit-show :a
./legit-checkout master
sh legit-show :a
./legit-branch bBranch1
./legit-checkout bBranch1
echo 3 >> a
sh legit-commit -a -m "Commit 3"
echo 4 >> a
./legit-checkout aBranch1

# In the final command the changes to file 'a' would be overwritten with
# checkout.
