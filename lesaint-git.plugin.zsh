# I prefer using gci instead of gc
unalias gc
alias gci="git commit -v"
alias gcif="git commit -v --fixup"
alias gpf="git push --force-with-lease"
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


# Get the repo's main branch (can be prod, master, main)
# (source: Lout's page
ggm() {
  git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'
  # I used to use this one, but the alias above is faster!
  # git remote show origin | awk '/HEAD branch/ {print $NF}'
}

grefresh() {
  local main_branch="$(ggm)"
  local current_branch="$(g rev-parse --abbrev-ref HEAD)"

  g co "${main_branch}" && g pull && g co "${current_branch}" && g rebase "${main_branch}"
}

