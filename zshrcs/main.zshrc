#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# # Source between multi machine setting
() {
  local target_path="${ZDOTDIR:-$HOME}/.zshrc_common"
  if [[ -e "${target_path}" ]]; then
    source ${target_path} 
  fi
}

#Source between local machine setting
() {
  local target_path="${ZDOTDIR:-$HOME}/.zshrc_local"
  if [[ -e "${target_path}" ]]; then
    source ${target_path}
  fi
}
# Source user difinition functions 
() {
local target_path="${ZDOTDIR:-$HOME}/.zshfuncs"
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

# Source ROS Master setting
# () {
#   local target_path="${ZDOTDIR:-$HOME}/.zshrc_rosmaster"
#   if [[ -e "${target_path}" ]]; then
#     source ${target_path}
#   fi
# }
#
# () {
#   local target_path="${ZDOTDIR:-$HOME}/.zshrc_rosws"
#   if [[ -e "${target_path}" ]]; then
#     source ${target_path}
#   fi
# }
