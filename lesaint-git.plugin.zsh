# I prefer using gci instead of gc
unalias gc
alias gci="git commit -v"
alias gcif="git commit -v --fixup"
compdef _git gci=git-commit

# Performs a merge from a branch into another, making sure local checkout is up-to-date in both branches
# 
# $1 : merge source
# $2 : merge target
function gitMergeAfterPull() {
  gco $1
  gup
  gco $2
  gup
  g merge $1
}
