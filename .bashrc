
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:~/Applications/vraptor-console"
export PATH="$PATH:/Users/csokol/Applications/bin"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home/

alias vpn='ssh inceptum@investbola.com.br -ND 8888 sleep 99999'

. ~/.git-completion.sh
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
PS1='\h:\w$(__git_ps1 " [\[\e[0;32m\]%s\[\e[0m\]]")\$ '

alias build-apostila='docker run --rm=true --volume /Users/csokol/caelum/apostilas-saida:/data/apostilas --volume /Users/csokol/caelum/apostilas-novas:/data/apostilas-novas   -t csokol/apostilas-novas ./gera.sh'
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/csokol/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1


