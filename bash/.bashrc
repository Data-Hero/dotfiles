case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "$HOME/.cargo/env"

set editing-mode vi
set keymap vi

# tools like conda 
# ...

# prompt
light_gray="\[\e[0;37m\]"
dark_red="\[\e[0;31m\]"
blue="\[\e[1;34m\]"
reset_color="\[\e[m\]"

PS3=">> "
PS2="└─▪ "

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="auto verbose git"

is_conda_env() {
	if [ ! -z "$CONDA_DEFAULT_ENV" ]; then
		printf -- "[%s]" "$CONDA_DEFAULT_ENV"
	fi
}

PS1="${dark_red}┌─${blue}[\W]${dark_red}$(is_conda_env)${light_gray}\$(__git_ps1 "[%s]")
${dark_red}└─▪ ${reset_color}"

