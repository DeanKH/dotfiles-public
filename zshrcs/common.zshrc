#General settings
HISTFILE="${HOME}/.zsh_history"
HISTSIZE=1000000000
SAVEHIST=1000000000
export EDITOR=vim
alias tmux='tmux -2'
alias clang-format='clang-format-3.8'
alias xcp='xclip -i -selection clipboard'
alias roscds='roscd && cd ../src'
alias cb8='catkin build -j8'
alias cb8r='catkin build -j8 --cmake-args -DCMAKE_BUILD_TYPE=Release'
alias cb8d='catkin build -j8 --cmake-args -DCMAKE_BUILD_TYPE=Debug'
alias git-graph='git log --graph --pretty=oneline --abbrev-commit'
