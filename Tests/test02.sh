#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests the various states for all files using legit-status.

sh legit-init
touch a b c d e f g h i
sh legit-add a b c d f g h
sh legit-commit -m "Commit 1"
echo 1 >> b
echo 1 >> c
echo 1 >> d
echo 1 >> f
sh legit-add b d e f
echo 2 >> b
rm f g
sh legit-rm h
sh legit-status

# Final output from legit-status is:
# a - same as repo
# b - file changed, different changes staged for commit.
# c - file changed, changes not staged for commit.
# d - file changed, changes staged for commit.
# e - added to index.
# f - file deleted, different changes staged for commit.
# g - file deleted.
# h - deleted.
# i - untracked
