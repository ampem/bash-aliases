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
alias gb="git branch"
alias gcob="git checkout -b"
# list branches sorted by last modified
alias gbs="!git for-each-ref --sort='-authordate' --format='%(authordate)%09%(objectname:short)%09%(refname)' refs/heads | sed -e 's-refs/heads/--'"

# list aliases
alias gla="!git config -l | grep alias | cut -c 7-"

#take a screenshot
#alias tss="scrot -s screenshot-`ls screenshot-*.png|wc -l`.png"
