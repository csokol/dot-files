#!/bin/sh

. /etc/profile

# para o less ficar com cores
export LESS="-erX"

#git stuff
if [ -f /etc/bash_completion.d/git ]; then
	. /etc/bash_completion.d/git
fi
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\u@\h:\w $(__git_ps1 "(%s)")\$ '

#coisas no path
export PATH=/home/csokol/caelum/gradle-1.1/bin:$PATH
export PATH=/home/csokol/programas/scala/bin:$PATH
export PATH=/home/csokol/caelum/tubaina/tubaina-build/etc/:$PATH
export PATH=/home/csokol/caelum/heroku-client/:$PATH
export PATH=/home/csokol/programas/sublime_text2:$PATH
export PATH=/home/csokol/caelum/play/play:$PATH
export PATH=~/.rvm/bin:$PATH
export PATH=/home/csokol/programas/maven/apache-maven/bin:$PATH
export PATH=/home/csokol/eclipse/idea/bin:$PATH

#aliases
alias eclipse-jee='/home/csokol/eclipse/eclipse-jee/eclipse'
alias grep='grep --color=auto'
alias build_tubaina='gradle clean build zip && unzip build/distributions/tubaina-1.8-SNAPSHOT.zip -d build/distributions/'
alias ssh_integracao='ssh -i ~/.ssh/casadocodigo.pem ec2-user@integracao.casadocodigo.com.br'
alias pdflatex_tubaina='echo "s\n" | pdflatex -shell-escape book.tex > /dev/null'
alias vpn_ssh='ssh csokol@labmap.ime.usp.br -ND 8888 sleep 99999'
alias xclipcp='xclip -selection clipboard'
alias pwd='pwd; pwd | xclipcp'
alias workrebase='git co master && git pull && git co work && git rebase master'
alias worksync='workrebase && git co master && git merge work && git push && git co work' 

#java stuff 
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true "$_JAVA_OPTIONS
export CLASSPATH=.:$CLASSPATH:/home/csokol/caelum/tubaina/tubaina-build/
export M2_HOME=/home/csokol/programas/maven/apache-maven

#etc
[[ -s "/home/csokol/.rvm/scripts/rvm" ]] && source "/home/csokol/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
rvm gemset use global &> /dev/null
export TUBAINA_HOME=/home/csokol/caelum/tubaina/tubaina-build/

