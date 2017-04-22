#General settings
HISTFILE="${HOME}/.zsh_history"
HISTSIZE=1000000000
SAVEHIST=1000000000
export EDITOR=vim
alias tmux='tmux -2'
alias clang-format='clang-format-3.8'
alias xcp='xclip -i -selection clipboard'
alias roscds='roscd && cd ../src'
alias cb='catkin build -j$(nproc)'
alias cbr='catkin build -j$(nproc) --cmake-args -DCMAKE_BUILD_TYPE=Release'
alias cbd='catkin build -j$(nproc) --cmake-args -DCMAKE_BUILD_TYPE=Debug'
alias git-graph='git log --graph --pretty=oneline --abbrev-commit'
