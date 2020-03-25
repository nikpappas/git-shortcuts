# git-shortcuts
A suite of shortcuts aliases and funtions to enhance development.

It is very useful when you don't have wither the time or the energy to activate git auto-complete.

## Instalation
Copy the below lines into you .bash_profile or just run `source .bash_profile` locally to only enable the aliases for the current session.

## Usage:
git status -> `gits`

git checkout -> `gitc`

git log (nicely printed) -> `gitg`

git diff -> `gitd`

git branch -> `gitb`

Get a list of branches along with their index number:
`gitbl`

```
OUTPUT

1 feature-branch-1
2 feature-branch-2
3 master
```

Use the number of a branch to check it out.
`gitcb 2`

```
OUTPUT
Switched to branch 'feature-branch-2'
```

# More documented code with comments within the .bash_profile file. ; ]