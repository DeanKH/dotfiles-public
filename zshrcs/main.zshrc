#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${HOME}/.zprezto/init.zsh" ]]; then
  source "${HOME}/.zprezto/init.zsh"
fi

# # Source between multi machine setting
() {
  local target_path="${HOME}/.zshrc_common"
  if [[ -e "${target_path}" ]]; then
    source ${target_path} 
  fi
}

#Source between local machine setting
() {
  local target_path="${HOME}/.zshrc_local"
  if [[ -e "${target_path}" ]]; then
    source ${target_path}
  fi
}
# Source user difinition functions 
() {
local target_path="${HOME}/.zshfuncs"
  if [[ -e "${target_path}" ]]; then
    local abs_path=`readlink "${target_path}"`
    for file in `\find $abs_path -maxdepth 1 -type f`; do
      if  echo $file | grep -q ".swp"; then
        continue
      fi
      source $file
    done
  fi
}

# Terminal起動時にtmuxを立ち上げる
# if [[ -z "$TMUX" ]]
# then 
#   tmux new-session;
#   exit;
# fi 

# autoload commandの読込
() {
  local target_path="${HOME}/.zplugins"
  if [[ -e "${target_path}" ]]; then
    export FPATH="${FPATH}:"${target_path}
  fi

  local target_path="${HOME}/.zplugins/autoload_config.zsh"
  if [[ -e "${target_path}" ]]; then
    source ${target_path}
  fi
}
