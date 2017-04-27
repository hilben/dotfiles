echo 'loading bens bashrc v1.14'

alias r="source ~/.bashrc"
alias edit_bash="vim ~/.bashrc"
alias edit_bash_secure="vim ~/.bashrc_secure"
alias x="cd ~/xing/"
alias p="cd ~/xing/profile"
alias kpi="cd ~/xing/be_kpi"
alias x_notes="cat ~/xing/notes.txt"
alias y="cd ~/xing/yoda"
alias y2="cd ~/xing/yoda2"
alias j="cd ~/xing/jobs"
alias c="cd ~/xing/cra"
alias gh="cd ~/github"
alias db="cd ~/xing/redboard"
alias n="cd ~/github/spacenexus"
alias sr="cd ~/github/spacerover"
alias h="cd ~/xing/hermes"
alias e="~/exercism/elixir"
alias cc="dscacheutil -flushcache"

alias prepare_deploy="bundle exec rake changelog:update"
alias sandbox_reset="xing e r dev-benjamin-hiltpolt"
alias sandbox_prepare="xing x exec --app yoda 'rm -rf /app/public/assets/jobmanager/'"
#&& xing e r
#test-benjamin-hiltpolt && xing e r edge-benjamin-hiltpolt"
alias sandbox_services="xing s r -s ds_autocompletion yoda ds_entity-matching &&
  xing s r -s ds_autocompletion yoda ds_entity-matching --host test && xing s r
-s ds_autocompletion yoda ds_entity-matching --host edge"

alias rpsec="rspec"

source ~/.bashrc_secure

# Foreman 
alias bef='bundle exec foreman start'

alias docker_clean_up="source ~/.destroy_all_docker.sh"
alias docker_remove_old_containers="source ~/.remove_old_containers.sh"

alias fixpry='stty echo'

alias installpg_gem="gem install pg -- --with-pg-config=/Applications/Postgres.app/Contents/Versions/9.3/bin/pg_config"

alias g='git'
alias ga='git add' 
alias gb='git branch' 
alias gc='git commit'
alias gd='git diff HEAD@{1}'
alias gl='git log'
alias gp='git pull' 
alias gs='git status'

alias gitconfig='cat ~/.gitconfig'
alias xingnotes='cat ~/xing/notes.txt'
alias start_sql='mysqld --gdb'

alias be='bundle exec'
alias b='bundle'
alias bes='bundle exec rspec'
alias bes_no_feature="bundle exec spring rspec -c --exclude-pattern 'spec/features/**/*_spec.rb'"

alias bem='be rake db:migrate'
alias ber='be rake db:reset'

alias wipe='echo '\''flush_all'\'' | nc localhost 11211'

alias reload_bash="source ~/.bashrc"

PATH=$PATH:~/

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/benjaminhiltpolt/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

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

complete -C `which xing_autocompletion` -o default xing
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

ruby ~/github/printtext/print_texts.rb

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
