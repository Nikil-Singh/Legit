sh legit-init
# Initialized empty legit repository in .legit
echo line 1 >a
echo hello world >b
sh legit-add a b
sh legit-commit -m "first commit"
# Committed as commit 0
echo line 2 >>a
sh legit-add a;
sh legit-commit -m "second commit"
# Committed as commit 1
sh legit-log
#1 second commit
#0 first commit
echo line 3 >>a
sh legit-add a
echo line 4 >>a
sh legit-show 0:a
# line 1
sh legit-show 1:a
# line 1
# line 2
sh legit-show :a
# line 1
# line 2
# line 3
sh legit-show 0:b
# hello world
sh legit-show 1:b
# hello world
