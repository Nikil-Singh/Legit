#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests deleting the branch the user is currently on, then trying
# various commands.

sh legit-init
touch a
sh legit-add a
sh legit-commit -m "Commit 1"
./legit-branch -d master        # error message: can not delete branch 'master'
./legit-branch newBranch
./legit-checkout newBranch
./legit-branch -d newBranch     # Will actually delete the branch currently on.
./legit-show :a                 # Will attempt to access a, but fail
./legit-checkout master
./legit-branch anotherBranch
touch a
sh legit-add a                  # Won't work as directory for branch doesn't exist.
sh legit-commit -m "Commit 2"   # Also won't work successfully.
./legit-checkout master

# Will not be able to change back to master as there is no branch 'newBranch'
# so there are no previous commits. error message: your repository does not
# have any commits yet. The same applies to creating another new branch.
