#General settings
HISTFILE="${HOME}/.zsh_history"
HISTSIZE=1000000000
SAVEHIST=1000000000
export EDITOR=vim
alias tmux='tmux -2'
# alias clang-format='clang-format-3.8'
alias xcp='xclip -i -selection clipboard'
alias roscds='roscd && cd ../src'
alias git-graph='git log --graph --pretty=oneline --abbrev-commit'

# export CATKIN_BUILD_COMPILER="clang++-4.0"
export CATKIN_BUILD_COMPILER="g++-5"
alias cb='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER}'
alias cbr='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} --cmake-args -DCMAKE_BUILD_TYPE=Release -DRELEASE=1 -DDEBUG=0'
# alias cbrc='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} --cmake-args -DCMAKE_BUILD_TYPE=Release -DRELEASE=1 -DDEBUG=0 -DCMAKE_CXX_FLAGS=-pg -DCMAKE_EXE_LINKER_FLAGS=-pg -DCMAKE_SHARED_LINKER_FLAGS=-pg'
alias cbd='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} --cmake-args -DCMAKE_BUILD_TYPE=Debug -DRELEASE=0 -DDEBUG=1'
# alias cbdc='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} --cmake-args -DCMAKE_BUILD_TYPE=Debug -DRELEASE=0 -DDEBUG=1 -DCMAKE_CXX_FLAGS=-pg -DCMAKE_EXE_LINKER_FLAGS=-pg -DCMAKE_SHARED_LINKER_FLAGS=-pg'

# alias grep='grep --color=auto'
