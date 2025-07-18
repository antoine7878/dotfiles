export PATH=$PATH:"$HOME/Appimage"
export PATH=$PATH:"$HOME/.local/bin"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="/usr/local/cuda/bin${PATH:+:${PATH}}"
export PATH="$CUDA_HOME/bin:$PATH"
export PATH="$PATH:/path/to/lua-language-server/bin/Linux"

export CUDA_HOME=/opt/cuda
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH
export XLA_FLAGS="--xla_gpu_cuda_data_dir=/opt/cuda"
export LD_LIBRARY_PATH=/usr/local/cuda-12.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export PYGAME_HIDE_SUPPORT_PROMPT=hide
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export HOMEBREW_NO_ENV_HINTS
export RUST_BACKTRACE=1


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
[[ ! -r '/home/ale-tell/.opam/opam-init/init.zsh' ]] || source '/home/ale-tell/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
export XDG_CONFIG_HOME="$HOME/.config"
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(opam env)"
