#!/bin/bash
echo 'loading bens bashrc v2.3'

export PATH=/opt/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

alias r="source ~/.zshrc"
alias eb="vim ~/.bashrc"
alias edit_bash_secure="vim ~/.bashrc_secure"
alias gh="cd ~/github"
alias clear_cache="echo 'Rails.cache.clear' | bundle exec rails c"

alias rpsec="nocorrect rspec"
alias rspec="nocorrect rspec"
alias spec="nocorrect rspec"
alias srpec="nocorrect rspec"
alias srpec="nocorrect rspec"

alias docker_clean="docker rmi \$(docker images -f 'dangling=true' -q)"
alias docker_clean2="docker rm -f \$(docker ps -aq)"
alias doker="docker"
alias docker_con="screen ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty"

alias rials="rails"
alias raisl="rails"

source ~/.bashrc_secure

alias fixpry='stty echo' # fix broken console

alias g='git'
alias gd='git diff HEAD@{1}'
alias gl='git log'
alias gp='git pull'
alias gs='git status'
alias got='git'
alias gut='git'
alias glist='git for-each-ref --count=5 --sort=-committerdate refs/heads/ --format="%(refname:short)"'
alias gbb='git for-each-ref --sort=-committerdate refs/heads/' # most recent branches
alias gsync="git fetch origin && git rebase origin/master" # sync git with up up to date master
alias grb="git rebase -i origin/master"
alias last_files="git diff HEAD~1 --name-only " # files changed in last commit

alias start_sql='mysqld --gdb'

alias rials='rails'
alias rpsec='rspec'
alias be='bundle exec'
alias b='bundle' 

alias wipe='echo '\''flush_all'\'' | nc localhost 11211'
alias mysql='mysqld --gdb'
alias port_scan="sudo lsof -i -P -n | grep LISTEN"

alias loc_js='wc -l $(git ls-files | grep ".*\.js")'
alias loc_rb='wc -l $(git ls-files | grep ".*\.rb")'
alias loc_java='wc -l $(git ls-files | grep ".*\.java")'


alias reload_bash="source ~/.bashrc"

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export GOPATH="$HOME/go"
export CGO_ENABLED=1

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Users/benjamin.hiltpolt/.oly/bin
export GO111MODULE=on
eval "$(rbenv init -)"
eval $(thefuck --alias)

defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
