alias gpu='watch -n 1 "nvidia-smi"'
alias cpu='top -d 2'
alias ..='cd ..'
alias gitpom='git push origin master'

alias sr="systemctl reboot"
alias sp="systemctl poweroff"

alias ll="exa -TBL 1 -lamuh --git --octal-permissions --no-permissions"
alias lln="exa -TBL 1 -lamuh --git --octal-permissions --no-permissions --sort modified"

alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"

alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

alias mkdir="mkdir -pv"

alias cda="cd /home/bijan/arbeitsplatz/"
alias cdb="cd /home/bijan/Bilder/"
alias cdd="cd /home/bijan/Downloads/"
alias cdf="cd /home/bijan/Dokumente/"
alias cdea="conda deactivate"

alias chx="chmod +x"

alias brc="vim /home/bijan/.bashrc"
alias ba="vim /home/bijan/.bash_aliases"

alias inte="snap run intellij-idea-community"
alias spot="snap run spotify"
alias thun="snap run thunderbird"
alias chro="snap run chromium"
alias fire="snap run firefox"
alias andr="snap run android-studio"

cr() {
	cargo run ${1-.}
}
ct() {
	cargo test ${1}
}
svim() {
	sudo vim ${1-.}
}
mcd() {
	mkdir -p $1
	cd $1
}
his() {
	history | cut -c 6- | fzf | /bin/bash
}
code() {
	snap run code $1
}
ca() {
	conda activate $1
}
pips() {
    for pkg in $@; do
	    pip install "$pkg" && {
		name="$(pip show "$pkg" | grep Name: | awk '{print $2}')";
		version="$(pip show "$pkg" | grep Version: | awk '{print $2}')";
		echo "${name}==${version}" >> requirements.txt;
	}
    done
}
pmp() {
	python main.py $1
}

