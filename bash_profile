ulimit -n 2560
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
export PATH=/usr/local/mysql/bin:/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Git branch in prompt.

#parse_git_branch() {

#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'

#}

#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1="\[\033[33;1m\]\w\[\033[m\]\[\033[36m\]\$(parse_git_branch)\[\033[m\]$ "


# terminal prompt colors
export PS1='$(git branch &>/dev/null; if [ $? -eq 0 ]; then \
echo "\[\e[0;32m\][GIT: \[\e[0;32m\]$(basename `pwd`); \[\e[0;96m\]$(git branch | grep ^*|sed s/\*\ //) \
$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; if [ "$?" -eq "0" ]; then \
echo "\[\e[0;32m\]clean"; else \
echo "\[\e[0;31m\]dirty"; fi)\[\e[0;32m\]] -> "; else \
echo "\[\e[0;31m\][\w]\[\e[m\] -> "; fi) \[\e[0m\]'

# terminal folder colors, init
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

eval "$(direnv hook bash)"

rvm use 2.4
