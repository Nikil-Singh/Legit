#!/bin/dash
# Created by Nikil Singh z5209322
legit-init
#Initialized empty legit repository in .legit
touch a b
legit-add a b
legit-commit -m "first commit"
#Committed as commit 0
rm a
legit-commit -m "second commit"
#nothing to commit
legit-add a
legit-commit -m "second commit"
#Committed as commit 1
legit-rm --cached b
legit-commit -m "second commit"
#Committed as commit 2
legit-rm b
#legit-rm: error: 'b' is not in the legit repository
legit-add b
legit-rm b
#legit-rm: error: 'b' has changes staged in the index
legit-commit -m "third commit"
#Committed as commit 3
legit-rm b
legit-commit -m "fourth commit"
#Committed as commit 4
