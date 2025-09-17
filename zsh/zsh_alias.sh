alias vim="nvim"

alias cc="clang"
alias c++="clang++"
alias b="bear -- make re"

alias i="make in && clear"

alias t="make test"
alias vt="make vtest"
alias re="make re"
alias rre="make rre"
alias bonus="make bonus"
alias clean="make clean"
alias fclean="make fclean"
alias ffclean="make ffclean"

alias oclean="rm -f *.o; rm -f *.cmo ; rm -f *.cmi ; rm -f *.cmx ; rm -f a.out"
alias d="dune build && dune exec bin/main.exe"

alias python='python3'
alias s='source .venv/bin/activate'

alias ga="git add -A"
alias gp="git push"

alias venv="source venv.sh"

alias logs="docker logs padam-dispatch --follow"

alias gpy="grep -n -r --include \*.py --include \*.pxd --include \*.pyx"
#
# Padam
alias pdc='docker compose exec padam-dispatch'
alias pdr='docker compose run --rm padam-dispatch'
alias padam='pdr'
alias padam-logs='docker compose logs -f padam-dispatch'
alias padam-shell='pdr shell_plus'
alias padam-bash='pdc bash'
function padam-notebook {
  docker compose run -p 8888:8888 padam-dispatch shell_plus --notebook
}
