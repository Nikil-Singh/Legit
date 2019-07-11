#!/bin/dash
sh legit-init
#Initialized empty legit repository in .legit
echo hello >a
sh legit-add a
sh legit-commit -m commit-A
#Committed as commit 0
./legit-branch branchA
echo world >b
sh legit-add b
sh legit-commit -m commit-B
#Committed as commit 1
./legit-checkout branchA
#Switched to branch 'branchA'
echo new contents >b
./legit-checkout master
#legit-checkout: error: Your changes to the following files would be overwritten by checkout:
#b
sh legit-add b
sh legit-commit -m commit-C
#Committed as commit 2
./legit-checkout master
#Switched to branch 'master'
