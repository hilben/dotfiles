echo 'loading Bennis bashrc v1.06'

alias r="source ~/.bashrc"
alias t="cd ~/tellit/tell_it/"
alias s="cd ~/tellit/statistics/"
alias a="cd ~/tellit/adapter/"

alias ss="rails s -p 3001"
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
alias gs='git status'
alias gc='git commit'
alias ga='git add' 
alias gp='git push' 

alias be='bundle exec'
alias b='bundle'

alias reload_bash="source ~/.bashrc"

PATH=$PATH:~/

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/benjaminhiltpolt/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export INFLUXDB_HOST="192.168.59.103"
export STATISTICS_DB_HOST="192.168.59.103"
export STATISTICS_HTTP_HOST="localhost:3001"

ruby ~/github/cats/print_texts.rb
