#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests all the flags of legit-rm and existence of file in different
# branches.

sh legit-init
touch a b
sh legit-add a b
sh legit-commit -m "Commit 1"
sh legit-rm                     # error message: usage legit-rm [--force] [--cached] <filenames>
sh legit-rm --cached a
echo 1 >> b
sh legit-add b
echo 2 >> b
sh legit-rm b                   # error message: changes staged
sh legit-rm --cached b          # error message: changes staged
sh legit-rm --force b
sh legit-commit -m "Commit 2"
sh legit-show :b                # error message: file not found
echo 1 > c
sh legit-add c
sh legit-commit -m "Commit 3"
echo 2 >> c
sh legit-add c
echo 3 >> c
./legit-branch newBranch
sh legit-rm --cached --force c
./legit-checkout newBranch
sh legit-show :c                 # error message: file not found

# File will not be found in newBranch due to the nature of creating a new
# branch and changing files in original branch will cascade into new branch
# until a commit is made.
