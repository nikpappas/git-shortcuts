# Copy the below lines into you .bash_profile or just run `source .bash_profile` to only enable the aliases for the current session.
alias gits='git status'
alias gitg='git log --all --decorate --oneline --graph'
alias gitg-date='gitg --pretty=format:"%C(yellow)%h% %C(red)%x09%ad%x09%C(white)%s"'
alias gitc='git checkout'
alias gitb='git branch'
alias gitd='git diff'
alias gitbl='git branch | cat -n'

function gitbn {
  gitb | sed -n $1p
}
function gitbs {
  gitb | sed -n $1p
}
function gitcb {
  gitc `gitb | sed -n $1p`
}