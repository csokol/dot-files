export ZSH=/Users/csokol/.oh-my-zsh

ZSH_THEME="robbyrussell"

CLIENT_ID="2b74e4dc634f4f87bb29d682cdb42d39"
CLIENT_SECRET="6f9db34cd70a4f1fb07c16ddbb873981"

plugins=(osx git docker z ruby rails spotify)
source $ZSH/oh-my-zsh.sh

alias snext="spotify next"
alias sprev="spotify prev"
alias spause="spotify pause"
alias splay="spotify play"

alias k="kubectl"

export GOPATH=/Users/csokol/workspace/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/Users/csokol/workspace/go/bin
export PATH=$PATH:/usr/local/bin/

eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export SPARK_HOME=/Users/csokol/workspace/support/spark/current
export SPARK_LOCAL_IP=127.0.0.1
export HIVE_HOME=/Users/csokol/workspace/support/apache-hive-1.2.1-bin
export HADOOP_HOME=/Users/csokol/workspace/support/hadoop-2.7.1
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop

export HIVE_AUX_JARS_PATH="$HADOOP_HOME/share/hadoop/tools/lib/"

eval "$(jenv init -)"

function aws_profile() {
    if [[ -n $AWS_VAULT ]]; then
        echo "aws:%{$fg[yellow]%}$AWS_VAULT%{$reset_color%}"
    fi
}


PROMPT_SUCCESS_COLOR=$FG[117]
PROMPT_FAILURE_COLOR=$FG[124]
PROMPT_VCS_INFO_COLOR=$FG[242]
PROMPT_PROMPT=$FG[077]
GIT_DIRTY_COLOR=$FG[133]
GIT_CLEAN_COLOR=$FG[118]
GIT_PROMPT_INFO=$FG[012]

#source ~/code/kube-ps1/kube-ps1.sh
PROMPT='%{$PROMPT_SUCCESS_COLOR%}%~%{$reset_color%}$(virtualenv_prompt_info) %{$reset_color%}%{$PROMPT_PROMPT%}ᐅ%{$reset_color%} '

RPS1='${return_code}%{$GIT_PROMPT_INFO%}$(git_prompt_info)%{$GIT_DIRTY_COLOR%}$(git_prompt_status) %{$reset_color%}%{$PROMPT_PROMPT%}%{$reset_color%}$(aws_profile)'
export TALISMAN_HOME=/Users/csokol/.talisman/bin


