#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests the logs of different branches after multiple commits.

sh legit-init
touch a b
sh legit-add a b
sh legit-commit -m "First commit in master"
./legit-branch newBranch1
echo 1 >> a
sh legit-commit -a -m "Second commit in master"
./legit-branch newBranch2
./legit-checkout newBranch1
echo 2 >> a
echo 1 >> b
sh legit-commit -a -m "First commit in newBranch1"
./legit-checkout newBranch2
echo hello >> a
sh legit-commit -a -m "First commit in newBranch2"
./legit-checkout master
echo 3 >> b
sh legit-commit -a -m "Third commit in master"
./legit-checkout newBranch1
echo world >> a
sh legit-commit -a -m "Second commit in newBranch1"
./legit-branch newBranch3
./legit-checkout newBranch3
echo 44 >> a
sh legit-commit -a -m "First commit in newBranch3"
./legit-checkout newBranch2
echo 12 > a
sh legit-commit -a -m "Second commit in newBranch2"
sh legit-log
./legit-checkout newBranch3
sh legit-log
./legit-checkout newBranch1
sh legit-log
./legit-checkout master
sh legit-log

# Log for newBranch2 is:
# 7 Second commit in newBranch2
# 3 First commit in newBranch2
# 1 Second commit in master
# 0 First commit in master

# Log for newBranch3 is:
# 6 First commit in newBranch3
# 5 Second commit in newBranch1
# 2 First commit in newBranch1
# 0 First commit in master

# Log for newBranch1 is:
# 5 Second commit in newBranch1
# 2 First commit in newBranch1
# 0 First commit in master

# Log for master is:
# 4 Third commit in master
# 1 Second commit in master
# 0 First commit in master
