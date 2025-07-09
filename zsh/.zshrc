export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $ZDOTDIR/zsh_function.sh
source $ZDOTDIR/zsh_alias.sh
source $ZDOTDIR/zsh_env.sh


alias luamake="/home/antoine/.config/nvim/lua-language-server/3rd/luamake/luamake"
