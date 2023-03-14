# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias nvcc="/opt/cuda/bin/nvcc"

alias ls="tree -L 1"

alias lsa="ls -a"
alias lst="tree"

alias ls2="tree -L 2"
alias ls3="tree -L 3"
