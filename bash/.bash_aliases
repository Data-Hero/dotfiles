alias gpu='watch -n 1 "nvidia-smi"'
alias cpu='top -d 2'
alias ..='cd ..'
alias gitpom='git push origin master'

alias ll="ls -alh"
alias lln="ls -alth"

alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"

alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

alias mkdir="mkdir -pv"

cr() {
	cargo run ${1-.}
}
ct() {
	cargo test ${1}
}
svim() {
	sudo vim ${1-.}
}


mcd () {
		mkdir -p $1
	        cd $1
}
