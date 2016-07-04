echo 'loading bens bashrc v1.14'

alias r="source ~/.bashrc"
alias edit_bash="vim ~/.bashrc"
alias edit_bash_secure="vim ~/.bashrc_secure"
alias x="cd ~/xing/"
alias x_notes="cat ~/xing/notes.txt"
alias y="cd ~/xing/yoda"
alias j="cd ~/xing/jobs"
alias gh="cd ~/github"
alias n="cd ~/github/spacenexus"

alias prepare_deploy="bundle exec rake changelog:update"
alias sandbox_reset="xing e r dev-benjamin-hiltpolt"
#&& xing e r
#test-benjamin-hiltpolt && xing e r edge-benjamin-hiltpolt"
alias sandbox_services="xing s r -s ds_autocompletion yoda ds_entity-matching &&
  xing s r -s ds_autocompletion yoda ds_entity-matching --host test && xing s r
-s ds_autocompletion yoda ds_entity-matching --host edge"

source ~/.bashrc_secure

alias yod_re='xing sandbox sync -f --app yoda'
alias jobs_re='xing sandbox sync -f --app jobs'
alias yod_re2='xing sandbox sync -f --app yoda --host dev2-benjamin-hiltpolt.env.xing.com'
alias jobs_re2='xing sandbox sync -f --app jobs --host dev2-benjamin-hiltpolt.env.xing.com'
alias yod_re3='xing sandbox sync -f --app yoda --host dev3-benjamin-hiltpolt.env.xing.com'
alias jobs_re3='xing sandbox sync -f --app jobs --host dev3-benjamin-hiltpolt.env.xing.com'
alias yod_kaza='xing sandbox sync -f --app yoda --host dev-katarzyna-zarnowiec.env.xing.com'
alias yod_kaza_test='xing sandbox sync -f --app yoda --host test-katarzyna-zarnowiec.env.xing.com'

# Foreman 
alias bef='bundle exec foreman start'
alias mahout="~/mahout-distribution-0.9/bin/mahout"
#alias fitman="ssh benhil@192.168.65.156"
alias fitman="ssh benhil@138.232.65.156"
alias dockerselenium="export HUB_PORT_4444_TCP_ADDR=192.168.59.103"
alias dockerselenium_localhost="export HUB_PORT_4444_TCP_ADDR=localhost"

alias docker_clean_up="source ~/.destroy_all_docker.sh"
alias docker_remove_old_containers="source ~/.remove_old_containers.sh"

alias docker_run_chrome="docker run -d -p 4444:4444 selenium/standalone-chrome:2.45.0"

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

alias be='bundle exec'
alias b='bundle'
alias bes='bundle exec rspec'
alias bes_no_feature="bundle exec spring rspec -c --exclude-pattern 'spec/features/**/*_spec.rb'"

alias bem='be rake db:migrate'
alias ber='be rake db:reset'

alias rs='ruby -e "while 1
begin
system %q{bundle exec rspec}
sleep 3
rescue
end
end"'

alias rsc='echo "while 1
begin
system %q{bundle exec rspec}
sleep 3
rescue
end
end" > run.rb' 

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

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export INFLUXDB_HOST="192.168.59.103"
#export STATISTICS_DB_HOST="192.168.59.103"
#export STATISTICS_HTTP_HOST="localhost:3001"
ruby ~/github/printtext/print_texts.rb
