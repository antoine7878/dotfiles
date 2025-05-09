# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

alias g=gitacp
alias ga="git add -A"
alias gp="git push"
alias grep="grep -r -n --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,.venv,venv}"
alias conda='micromamba'

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

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
