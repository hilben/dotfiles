#!/bin/bash
echo 'loading bens bashrc v1.2'

export PATH=/opt/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"

eval "$(rbenv init -)"
alias r="source ~/.bashrc"
alias eb="vim ~/.bashrc"
alias edit_bash_secure="vim ~/.bashrc_secure"
alias cb="cat ~/.bashrc"
alias x="cd ~/xing/"
alias a="cd ~/go/src/source.xing.com/e-recruiting-api-team/api"
alias p="cd ~/xing/profile"
alias kpi="cd ~/xing/be_kpi"
alias x_notes="cat ~/xing/notes.txt"
alias y="cd ~/xing/yoda"
alias y2="cd ~/xing/yoda2"
alias j="cd ~/xing/jobs"
alias c="cd ~/xing/cra"
alias c2="cd ~/xing/cra2"
alias gh="cd ~/github"
alias hh="cd ~/github/hicisteis"
alias db="cd ~/xing/redboard"
alias n="cd ~/github/spacenexus"
alias sr="cd ~/github/spacerover"
alias h="cd ~/xing/hermes"
alias e="~/exercism/elixir"
alias cc="dscacheutil -flushcache"
alias featurer_on="xing x exec \"echo 'Featurer.add(:xtp_user, /.*/)' | bundle exec rails c\""
alias clear_cache_xingbox="xing x exec \"echo 'Rails.cache.clear' | bundle exec rails c\""
alias gitconfbu="mv .gitignore{,.orig}"
alias gpp="git push --set-upstream origin $(current_branch)"
alias gup="mv .gitignore_bu .gitignore"
alias gap="mv .gitignore .gitignore_bu"
alias cop="cp ~/.rubocop* ."

alias prepare_deploy="bundle exec rake changelog:update"
alias sandbox_reset="xing e r dev-benjamin-hiltpolt"
alias sandbox_prepare="xing x exec --app yoda 'rm -rf /app/public/assets/jobmanager/'"
alias sandbox_services="xing s r -s ds_autocompletion yoda ds_entity-matching &&
  xing s r -s ds_autocompletion yoda ds_entity-matching --host test && xing s r
-s ds_autocompletion yoda ds_entity-matching --host edge"

alias rpsec="nocorrect rspec"
alias rspec="nocorrect rspec"
alias spec="nocorrect rspec"
alias srpec="nocorrect rspec"
alias srpec="nocorrect rspec"

alias rials="rails"
alias ails="rails"
alias raisl="rails"

source ~/.autocorrect.sh
source ~/.bashrc_secure

# Foreman 
alias bef='bundle exec foreman start'

alias fixpry='stty echo' # fix broken console

alias installpg_gem="gem install pg -- --with-pg-config=/Applications/Postgres.app/Contents/Versions/9.3/bin/pg_config"

alias g='git'
alias ga='git add' 
alias gb='git branch' 
alias gc='git commit'
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

alias gitconfig='cat ~/.gitconfig'
alias xingnotes='cat ~/xing/notes.txt'
alias start_sql='mysqld --gdb'

alias rials='rails'
alias rpsec='rspec'
alias be='bundle exec'
alias b='bundle' 
alias rdr='rake db:migrate:reset'
alias -g bes='bundle exec rspec'
alias -g bes_no_feature="bundle exec spring rspec -c --exclude-pattern 'spec/features/**/*_spec.rb'"

alias bem='be rake db:migrate'
alias ber='be rake db:reset'

alias wipe='echo '\''flush_all'\'' | nc localhost 11211'
alias wipe_sandbox="xing x e --app memcached \"'echo '\''flush_all'\'' | nc localhost 11211'\""
alias mysql='mysqld --gdb'

alias reload_bash="source ~/.bashrc"

### Prepare release changelog
function prepare_cl() {
    if [ -d .git ]; then
  echo "##### THIS GOES IN THE CHANGELOG #####"
  # git log --pretty=format:%B `git describe --abbrev=0 --tags`..HEAD | grep "Merge"
  git log --pretty=format:%B `git describe --abbrev=0 --tags`..HEAD | grep "\["
    else
  echo "Not a git repository, can do anything"
    fi
}

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin

ruby ~/github/printtext/print_texts.rb
