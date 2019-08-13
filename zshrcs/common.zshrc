#General settings
HISTFILE="${HOME}/.zsh_history"
HISTSIZE=1000000000
SAVEHIST=1000000000
export EDITOR=vim
export XDG_CONFIG_HOME=$HOME/.config
alias tmux='tmux -2'
# alias clang-format='clang-format-3.8'
alias xcp='xclip -i -selection clipboard'
alias roscds='roscd && cd ../src'
alias git-graph='git log --graph --pretty=oneline --abbrev-commit'

# export CATKIN_BUILD_COMPILER="clang++-5.0"
export CATKIN_BUILD_COMPILER="g++-8"
# alias fin_call="aplay ~/.pronama_voice/kei1/wav/kei_voice_060.wav"
alias fin_call=""
alias fin_call=""
alias cb='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} \
  --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=1'
alias cbr='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} \
  --cmake-args -DCMAKE_BUILD_TYPE=Release -DRELEASE=1 -DDEBUG=0 -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ; fin_call'
alias cbr2='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} \
  --cmake-args -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -O2" -DRELEASE=1 -DDEBUG=0 -DCMAKE_EXPORT_COMPILE_COMMANDS=1; fin_call'
alias cbrd='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} \
  --cmake-args -DCMAKE_BUILD_TYPE=RelWithDebInfo -DRELEASE=1 -DDEBUG=0 -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -g" -DCMAKE_EXPORT_COMPILE_COMMANDS=1; fin_call'
alias cbd='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} \
  --cmake-args -DCMAKE_BUILD_TYPE=Debug -DRELEASE=0 -DDEBUG=1 -DCMAKE_EXPORT_COMPILE_COMMANDS=1; fin_call' #&
# alias cbrc='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} --cmake-args -DCMAKE_BUILD_TYPE=Release -DRELEASE=1 -DDEBUG=0 -DCMAKE_CXX_FLAGS=-pg -DCMAKE_EXE_LINKER_FLAGS=-pg -DCMAKE_SHARED_LINKER_FLAGS=-pg'
# alias cbdc='catkin build -j$(nproc) -DCMAKE_CXX_COMPILER=${CATKIN_BUILD_COMPILER} --cmake-args -DCMAKE_BUILD_TYPE=Debug -DRELEASE=0 -DDEBUG=1 -DCMAKE_CXX_FLAGS=-pg -DCMAKE_EXE_LINKER_FLAGS=-pg -DCMAKE_SHARED_LINKER_FLAGS=-pg'

# alias grep='grep --color=auto'
alias catkin_run_tests='catkin run_tests | grep -E -v "^Linked" | grep -E -v "^make" | grep -E -v "^\[build\]" | grep -v "Finished" | grep -E -v "^\/" | grep -E -v "^cd" | grep -E -v "^Starting" | grep -v "\/" | grep -v "Built"'
alias gpoc='git push origin $(git branch | grep -e "\*" | sed -e "s/\*\ //")'

# about common app config
alias rm="trash"

# about TEX
export TEXINPUTS=$TEXINPUTS:${HOME}/.dotfiles/private/tex/sty/
export BIBINPUTS=$BIBINPUTS:${HOME}/.dotfiles/private/tex/
export BSTINPUTS=$BSTINPUTS:${HOME}/.dotfiles/private/tex/
