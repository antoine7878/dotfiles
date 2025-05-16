export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

alias gg="ccf main.c && ./a.out"
alias vim="nvim"
alias t="make test"
alias vt="make vtest"
alias re="make re"
alias rre="make rre"
alias bonus="make bonus"
alias clean="make clean"
alias fclean="make fclean"
alias ffclean="make ffclean"
alias b="bear -- make re"
alias bash="bash --posix"
alias count="cat *.c */*.c | wc -l"

gitacp() {
  if [ $# -eq 0 ]; then
    echo "Error: Commit message is required"
    echo "Usage: gitacp \"your commit message\""
    return 1
  fi
  git add -A
  git commit -m "$1"
  git push
}

setxkbmap -option caps:escape

export PYGAME_HIDE_SUPPORT_PROMPT=hide

alias g=gitacp
alias ga="git add -A"
alias gp="git push"
alias grep="grep -r -n --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,.venv,venv}"

if [ "$USER" = "ale-tell" ]; then
	export PATH=$HOME/.brew/bin:$PATH
	export PATH=$PATH:"$HOME/Appimage"
	export PATH=$PATH:"$HOME/.local/bin"
	export PATH=$PATH:"$HOME/42/MyClass/"
else
	alias cc="clang"
	alias c++="clang++"
	alias python="python3"
	export PATH="$PATH:/opt/nvim-linux64/bin"
	export PATH="$PATH:/home/antoine/.local/bin"
	export PATH="$PATH:/home/antoine/.avm/bin/"
fi
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/antoine/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/antoine/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/antoine/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/antoine/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

