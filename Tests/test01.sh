#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests whether adding arguements to legit-commands that do not
# take any commands work.

sh legit-init a                 # usage: legit-init
sh legit-init
echo 1 > a
sh legit-add a
sh legit-commit -m "Commit 1"
sh legit-log r                  # usage: legit-log
sh legit-log
sh legit-status q               # No error message should appear
sh legit-status
