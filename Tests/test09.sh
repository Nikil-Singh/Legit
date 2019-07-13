#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests legit-merge theoretically.
# Note legit-merge is not provided.

sh legit-init
echo 1 > a
echo 2 >> a
echo 3 >> a
sh legit-add a
sh legit-commit -m "Commit 1"
./legit-branch newBranch
./legit-checkout newBranch
echo 1 > a
echo 4 >> a
echo 3 >> a
sh legit-commit -a -m "Commit 2"
sh legit-show :a
./legit-checkout master
sh legit-show :a
2041 legit-merge newBranch -m "Merged newBranch into master"
sh legit-show 1:a

# A new commit will not be created. The contents of index and current directory
# are updated only for master branch.

# Note 2041 legit-merge will not actually work as is essentially a wrapper for
# GIT and uses a GIT repository while the legit-commands provided do not use
# GIT. The following is just the concept of the expected output.

# Contents of 'a' before merge:
# In master:
# 1
# 2
# 3
# In newBranch:
# 1
# 4
# 3

# Contents of 'a' after merge:
# 1
# 4
# 3
