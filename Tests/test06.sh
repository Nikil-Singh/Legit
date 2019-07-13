#!/bin/dash
# Created by Nikil Singh z5209322

# The following tests whether flags/arguements can be given in different orders.

sh legit-init
touch a b c d e
sh legit-add a b c d e
sh legit-commit -m "Commit 1"
sh legit-rm a --cached
echo 1 >> b
sh legit-rm --force b --cached
echo 3 > c
echo 5 > d
sh legit-commit -m "Commit 2" -a
sh legit-show 1:c
sh legit-show 1:d
sh legit-rm c --cached d --force  # error message: usage legit-rm [--force] [--cached] <filenames>
sh legit-rm c --cached --force
sh legit-rm d --force

# Error will appear when different files are given separately (i.e. separated
# by flags.)
