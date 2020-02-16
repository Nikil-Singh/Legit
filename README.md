# Legit
A University Assignment for the implementation of GIT using Shell Script and PERL.

COMMANDS:
1. legit-init: Implemented in shell. Initialises a hidden folder in current directory to store all files, similar to .git.
    Written as: $ legit-init, or $ sh legit-init
2. legit-add: Implemented in shelll. Adds all files following command to index for staging.
    Written as: $ legit-add <filenames>, or $ sh legit-add <filenames>
3. legit-commit: Implemented in shell. Commits all staged files. Using -a flag also re-stages any previously staged files.
    Written as: $ legit-commit [-a] -m commit-message, or $ sh legit-commit [-a] -m commit-message
4. legit-log: Implemented in shell. Prints out the commit log for the current branch.
    Written as: $ legit-log, or $ sh legit-log
5. legit-show: Implemented in shell. Displays the contents of the file as stored in previous commit or staged.
    Written as: $ legit-show <commit>:<filename>, or $ sh legit-show <commit>:<filename>
6. legit-rm: Implemented in shell. Removes a file from staging, and if opted the current working directory.
    Written as: $ legit-rm [--force] [--cached] <filename>, or $ sh legit-rm [--force] [--cached] <filename>
7. legit-status: Implemented in shell. Displays the status of all files from previous commit, staging and current working
    directory.
    Written as: $ legit-status, or $ sh legit-status
8. legit-branch: Implemented in perl. Creates new branches off the current branch. If no branch option given, then displays 
    branch list. Can also delete branch if opted.
    Written as: $ legit-rm [-d] branch, or $ sh legit-rm [-d] branch
9. legit-checkout: Implemented in perl. Switches between branches.
    Written as: $ legit-checkout <branch>, or $ sh legit-checkout <branch>
