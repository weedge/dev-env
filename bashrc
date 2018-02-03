if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias grep='grep --color=auto'
alias ll='ls -thla'

# Full Path
export PS1_BASE="[\[\033[0m\]\[\033[35m\]\t\[\033[m\] \[\033[0;36m\]\u\[\033[m\]@\[\033[0;32m\]${HOSTNAME%.*.*}:\[\033[0;33m\]\w\[\033[m\]]"
# Full Path(White)
export PS1_BASE="[\[\033[0m\]\[\033[35m\]\t\[\033[m\] \[\033[0;36m\]\u\[\033[m\]@\[\033[0;32m\]${HOSTNAME%.*.*}:\[\033[0;37m\]\w\[\033[m\]]"

export PS1_SUCCESS="$PS1_BASE\[\033[1;32m\]:) \[\033[m\]\\$ "
export PS1_FAIL="$PS1_BASE\[\033[1;31m\]:( \[\033[m\]\\$ "
export PROMPT_COMMAND='if [ $? -eq 0 ] ; then export PS1=$PS1_SUCCESS; else export PS1=$PS1_FAIL; fi; echo -ne "\033]0;${USER}@${HOSTNAME%.*.*}\007"'

LS_COLORS='di=00;32:ln=00;36:pi=40;33:so=00;35:do=00;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:*.py=00;96:*.sh=01;94:ex=01;37'

export GOROOT=/xbin/go
export GOPATH=/xbin/golib/go_basic:/xbin/golib/serv_util_idl:$HOME/project/go

export PATH=$PATH:$HOME/bin:$HOME/emacs/bin:$GOROOT/bin:$HOME/go/bin
