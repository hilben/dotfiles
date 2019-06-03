#!/bin/bash
echo 'loading bens bashrc v2.2'
alias  kb='xingboxctl kc dev-benjamin-hiltpolt'

export PATH=/opt/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/xing/olympus-tools/bin:$PATH"

alias r="source ~/.bashrc"
alias eb="vim ~/.bashrc"
alias edit_bash_secure="vim ~/.bashrc_secure"
alias x="cd ~/xing/"
alias a="cd ~/go/src/source.xing.com/e-recruiting-api-team/api"
alias int="~/xing/api-integration-tests"
alias c="cd ~/xing/cra"
alias c2="cd ~/xing/cra2"
alias gh="cd ~/github"
alias db="cd ~/xing/redboard"
alias clear_cache="echo 'Rails.cache.clear' | bundle exec rails c"
alias clear_cache_xingbox="xing x exec \"echo 'Rails.cache.clear' | bundle exec rails c\""
alias cop="cp ~/.rubocop* ."
alias -g scramble="/Users/benjamin.hiltpolt/github/scrambler/scramble"
alias kb="xingboxctl kc dev-benjamin-hiltpolt"

alias rpsec="nocorrect rspec"
alias rspec="nocorrect rspec"
alias spec="nocorrect rspec"
alias srpec="nocorrect rspec"
alias srpec="nocorrect rspec"
alias gt="go test ./..."

alias docker_clean="docker rmi \$(docker images -f 'dangling=true' -q)"
alias docker_clean2="docker rm -f \$(docker ps -aq)"
alias doker="docker"
alias docker_con="screen ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty"

alias rials="rails"
alias raisl="rails"

source ~/.bashrc_secure

# Foreman 
alias bef='bundle exec foreman start'

alias fixpry='stty echo' # fix broken console

alias installpg_gem="gem install pg -- --with-pg-config=/Applications/Postgres.app/Contents/Versions/9.3/bin/pg_config"

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
alias -g bes='bundle exec rspec'
alias -g bes_no_feature="bundle exec spring rspec -c --exclude-pattern 'spec/features/**/*_spec.rb'"

alias wipe='echo '\''flush_all'\'' | nc localhost 11211'
alias wipe_sandbox="xing x e --app memcached \"'echo '\''flush_all'\'' | nc localhost 11211'\""
alias mysql='mysqld --gdb'
alias forward_rabbit_mq_kingbox="xingboxctl port-forward add dev-benjamin-hiltpolt rabbitmq 5672:5672"
alias port_scan="sudo lsof -i -P -n | grep LISTEN"


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

ruby ~/github/printtext/print_texts.rb
