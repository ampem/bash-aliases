# one-line log
alias gl="git log --pretty=format:\"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]\" --decorate --date=short"

alias ga="git add"
alias gap="git add -p"
alias gc="git commit --verbose"
alias gcp="git commit --verbose -p"
alias gca="git commit -a --verbose"
alias gcm="git commit -m"
alias gcam="git commit -a -m"

alias gd="git diff"
alias gds="git diff --stat"
alias gdc="git diff --cached"

alias gs="git status -s"
alias gco="git checkout"
# List branches
alias gb="git branch -vv"
# Use fzf to select branches
alias gbf="git branch -vv --color=always | fzf --ansi"
# Search the list of branches
alias gbs="git branch -vv | grep "
# List the current branch
alias gbc="git branch -vv | grep '*'"
alias gcob="git checkout -b"

# Grep the codebase
alias gg="git grep -n "

# list aliases
alias gla="!git config -l | grep alias | cut -c 7-"

# Open files where search is found
function ggs {
	git grep -n $1 | awk '{print $1}' | sed 's/:$//g' | xargs subl -a
}

# Open files where search is found
function ggc {
	git grep -n $1 | awk '{print $1}' | sed 's/:$//g' | xargs code -g
}
