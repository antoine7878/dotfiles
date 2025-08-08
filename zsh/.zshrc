export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $ZDOTDIR/zsh_function.sh
source $ZDOTDIR/zsh_alias.sh
source $ZDOTDIR/zsh_env.sh


alias luamake="/home/antoine/.config/nvim/lua-language-server/3rd/luamake/luamake"

if [[ $(uname) == "Darwin" ]]; then
	source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
	export PATH=$HOME/.brew/bin:$PATH
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
	[[ ! -r '/home/ale-tell/.opam/opam-init/init.zsh' ]] || source '/home/ale-tell/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
	export XDG_CONFIG_HOME="$HOME/.config"
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	eval "$(opam env)"
	. "$HOME/.cargo/env"
fi
