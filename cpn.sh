#!/bin/sh

create_sl()
{
  src=$1
  dst=$2
  echo "create symboliclink "$src" -> "$dst
  ln -s $src $dst
}

repopath=$(cd $(dirname $0) && pwd)/
distpath=$HOME"/"
echo $repopath

create_sl $repopath"tmux.conf" $distpath".tmux.conf"
create_sl $repopath"latexmkrc" $distpath".latexmkrc"
create_sl $repopath"dean.clang-format" $distpath".clang-format"
create_sl $repopath"dein.toml" $distpath".vim/dein.toml"


#zsh
create_sl $repopath"zshfuncs" $distpath".zshfuncs"
zshpath=$repopath"zshrcs/"
create_sl $zshpath"common.zshrc" $distpath".zshrc_common"
create_sl $zshpath"main.zshrc" $distpath".zshrc"
hostfile=$(uname -n | tr "[:upper:]" "[:lower:]")
check_path=$zshpath$hostfile".zshrc"
if [ "$check_path" != "" ] ; then
	create_sl $zshpath$hostfile".zshrc" $distpath".zshrc_local"
fi
create_sl $repopath"zpreztorc" $distpath".zpreztorc"

#vim
vimpath=$repopath"vimrcs/"
create_sl $vimpath"clang.vimrc" $distpath".clang.vimrc"
create_sl $vimpath"vimrc" $distpath".vimrc"
create_sl $vimpath"neocomplete.vimrc" $distpath".neocomplete.vimrc"
create_sl $vimpath"dein.vimrc" $distpath".dein.vimrc"

