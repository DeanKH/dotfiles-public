#!/bin/sh

create_sl()
{
  src=$1
  dst=$2
  echo "create symboliclink "$src" -> "$dst
  ln -sb $src $dst
}

repopath=$(cd $(dirname $0) && pwd)/
distpath=$HOME"/"
echo $repopath

create_sl $repopath"tmux.conf" $distpath".tmux.conf"
create_sl $repopath"latexmkrc" $distpath".latexmkrc"
create_sl $repopath"dean.clang-format" $distpath".clang-format"
mkdir $distpath".vim/"
create_sl $repopath"dein.toml" $distpath".vim/dein.toml"


#zsh
create_sl $repopath"zshfuncs" $distpath".zshfuncs"
zshpath=$repopath"zshrcs/"
create_sl $zshpath"common.zshrc" $distpath".zshrc_common"
create_sl $zshpath"main.zshrc" $distpath".zshrc"
create_sl $repopath"zpreztorc" $distpath".zpreztorc"
create_sl $repopath"zplugins/" $distpath".zplugins"

#nvim
nvimpath=$repopath"nvim"
create_sl $nvimpath $distpath".config/"
