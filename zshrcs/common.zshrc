#General settings
HISTFILE="${HOME}/.zsh_history"
HISTSIZE=1000000000
SAVEHIST=1000000000
export EDITOR=vim
alias tmux='tmux -2'
# alias clang-format='clang-format-3.8'
alias xcp='xclip -i -selection clipboard'
alias roscds='roscd && cd ../src'
export CATKIN_BUILD_COMPILER="clang++-3.8"
# export CATKIN_BUILD_COMPILER="g++-5"
alias cb='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER}'
alias cbr='catkin build -j$(nproc) --cmake-args -DCMAKE_BUILD_TYPE=Release -DRELEASE=1 -DDEBUG=0'
alias cbd='catkin build -j$(nproc) --cmake-args -DCMAKE_BUILD_TYPE=Debug -DRELEASE=0 -DDEBUG=1'
alias git-graph='git log --graph --pretty=oneline --abbrev-commit'
