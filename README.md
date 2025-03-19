lesaint-git
===========

My Git plugins for [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) which can be integrated via [Antigen](https://github.com/zsh-users/antigen) and works as an override of the Git plugin bundled with Oh-My-Zsh.

Replace alias I found dangerous in Git plugin :

* gc => gci

Add new methods 

* gitMergeAfterPull : Performs a merge from a branch into another, making sure local checkout is up-to-date in both branches
* `ggm` : get the name of the main branch of the current repo
* `grefresh` : rebase the current branch upon the main branch of the current repo

