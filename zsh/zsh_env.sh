eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ $(whoami) = "antoine" ]]; then
	[[ ! -r '/home/ale-tell/.opam/opam-init/init.zsh' ]] || source '/home/ale-tell/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
	# export XDG_CONFIG_HOME="$HOME/.config"
	# export PATH=$HOME/.cargo/bin:$PATH
	# export PATH="/Users/antoine/.cargo/bin${PATH:+:${PATH}}"
	# export PATH=$HOME/.brew/bin:$PATH
	# export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
	# export HOMEBREW_NO_ENV_HINTS
	# export RUST_BACKTRACE=1

	. "$HOME/.cargo/env"
fi

if [[ $(whoami) = "aino" ]]; then
fi

