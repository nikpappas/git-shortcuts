# Copy the below lines into you .bash_profile or just run `source .bash_profile` to only enable the aliases for the current session.
# Alternatively you can just source it from your bash profile with a line like `source <path to this file including the file name >`

# Add files to your staging area
# Usage: gita <unix file pattern>
alias gita='git add'
# Get a report of the current status of your staging and working areas
# Usage: gits
alias gits='git status'
# Get a list of branches that exist locally
# Usage: gitb [-r]
alias gitb='git branch'
# Get a list of branches that exist remotely
# Usage: gitbr
alias gitbr='gitb -r'
# Get a list of branches that exist locally zipped with indeces. (For use with other commands like `gitcb` and `gitbd`)
# Usage: gitbl
alias gitbl='gitb | cat -n'
# Get a list of branches that exist remotely zipped with indeces. (For use with other commands like `gitcbr`)
# Usage: gitblr
alias gitblr='gitbr | cat -n'
# Checkout a branch
# Usage: gitc <BRANCH_NAME>
alias gitc='git checkout'
# Get a diff of (default) the current working are with HEAD
# Usage: gitd 
# Usage: gitd `gitbn 3` Gives the fiff between current working area with the branch indexed 3.
# Usage: gitd `gitbn 3` `gitbn 5` Gives the fiff between the branch indexed 3 and 5 basing the comparison on branch 3.
alias gitd='git diff'
alias gitf='git fetch'
# Fetches changes form the remote repo deleting branches that had a remote equivalent that no longer exists remotely.
alias gitfp='gitf --prune'
alias gitg='git log --all --decorate --oneline --graph'
alias gitg-date='gitg --pretty=format:"%C(yellow)%h% %C(red)%x09%ad%x09%C(white)%s"'
# Git reset
alias gitrs='git reset'
alias gitrsh='gitr --hard'
# Git rebase
alias gitrb='git rebase'
alias gitrbc='gitrb --continue'
# Git push
alias gitp='git push'
alias gitpfwl='gitp --force-with-lease'

# Get branch name as string by index (see `gitbl` and `gitcb`)
# Usage: gitbn <BRANCH_NUMBER>
# Example in conjunction with other git commands:
# gitd `gitn 3` would give the diff between the current local HEAD and the third branch as per `gitbl`
function gitbn {
  gitb | sed -n $1p | sed -e 's/origin\///g' | sed -e 's/[*| ]//g'
}

# Delete branch by index (see `gitbl` and `gitcb`)
# Usage: gitbd <BRANCH_NUMBER> [-D]
function gitbd {
  if [ "$2" = '-D' ]; then
    FLAG='-D'
  else
    FLAG='-d'
  fi

  gitb $FLAG `gitbn $1`
}

# Usage: gitcb <BRANCH_NUMBER> [-r]
function gitcb {
  gitc `gitbn $1`
}

function gitcbr {
  gitc `gitbn $1 -r`
}
