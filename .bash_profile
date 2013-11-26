#!/bin/sh

. /etc/profile
export PATH=$PATH:/home/csokol/bin/

export HISTSIZE=5000

# para o less ficar com cores
export LESS="-erX"

for file in `/usr/bin/ls ~/.bash-completion`; do 
    source ~/.bash-completion/$file ; 
done

#GIT_PS1_SHOWDIRTYSTATE=true
#PS1='\u@\h:\w $(__git_ps1 "(%s)")\$ '
__git_branch=`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`
PS1='\u@\h:\w$(git_ps1)\$ '


export PATH=/home/csokol/programas/vraptor-console/:$PATH

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
export PATH=/home/csokol/programas/sbt/bin:$PATH
export PATH=/home/csokol/programas/phantomjs/bin:$PATH
export PATH=/home/csokol/programas/bin:$PATH

#aliases
alias eclipse-jee='/home/csokol/eclipse/eclipse-jee/eclipse'
alias eclipse-scala='/home/csokol/eclipse/eclipse-scala/eclipse'
alias eclipse-android='/home/csokol/caelum/android/adt-bundle-linux-x86_64-20130219/eclipse/eclipse'
alias grep='grep --color=auto'
alias build_tubaina='gradle clean build  -x test  zip && unzip build/distributions/tubaina-1.8-SNAPSHOT.zip -d build/distributions/'
#alias build_vraptorconsole='mvn clean package && rm -rf ~/programas/vraptor-console/ && unzip target/vraptor-console-0.7.0-SNAPSHOT.zip -d ~/programas/ && chmod +x ~/programas/vraptor-console/vraptor-console.sh'
alias build_vraptorconsole='mvn clean package && rm -rf ~/programas/vraptor-console/ && tar xzvvf target/vraptor-console-0.7.0-SNAPSHOT.tar.gz -C ~/programas/' 
alias ssh_integracao='ssh -i ~/.ssh/casadocodigo.pem ec2-user@integracao.casadocodigo.com.br'
alias pdflatex_tubaina='echo "s\n" | pdflatex -shell-escape book.tex > /dev/null'
alias vpn_ssh='ssh csokol@labmap2.ime.usp.br -ND 8888 sleep 99999'
alias xclipcp='xclip -selection clipboard'
alias pwd='pwd; pwd | xclipcp'
alias workrebase='git co master && git pull && git co work && git rebase master'
alias worksync='workrebase && git co master && git merge work && git push && git co work' 
alias deploy_zhit='cd ~/caelum/workspace/zhit;mvn install; rm -rf ~/caelum/play/play/repository/cache/br.com.caelum/zhit/; cd -;'
alias ssh_sheriff='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

#java stuff 
#export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true "$_JAVA_OPTIONS
export CLASSPATH=.:$CLASSPATH:/home/csokol/caelum/tubaina/tubaina-build/
export M2_HOME=/home/csokol/programas/maven/apache-maven

#etc
[[ -s "/home/csokol/.rvm/scripts/rvm" ]] && source "/home/csokol/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
rvm gemset use global &> /dev/null
export TUBAINA_HOME=/home/csokol/caelum/tubaina/tubaina-build/

export DESKTOP_SESSION=LXDE

export HADOOP_HOME=~/ime/mestrado/hadoop/hadoop/
export PATH=$PATH:$HADOOP_HOME/bin



#export PATH=/home/csokol/caelum/workspace/caelumweb2/firefox/firefox:$PATH
