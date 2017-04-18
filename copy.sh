#!/bin/sh
dirpath=$(dirname $0)
abspath=$(cd $dirpath && pwd)/
# paste symbolic link

# zshrc
if [ -e ~/.zshrc ]; then
	echo "file already exists, move to backup"
	mv ~/.zshrc ~/.zshrc.backup
fi
ln -s "$abspath"'zshrcs/main.zshrc' ~/.zshrc

devname=$(uname -n | tr "[:upper:]" "[:lower:]")'.zshrc'
fullpath=$(find $abspath -name $devname)
if [ "$fullpath" != "" ] ; then
	if [ -e ~/.zshrc_local ]; then
		echo "file already exists, move to backup"
		mv ~/.zshrc_local ~/.zshrc_local.backup
	fi
	ln -s $fullpath ~/.zshrc_local && echo "Created synbolic link -> ~/.zshrc_local"
else
	echo "could not find $abspath$devname"
fi

ln -s "$abspath"'zshfuncs' ~/.zshfuncs

# vimrc
if [ ! -d ~/.vim ]; then
	mkdir ~/.vim
fi
ln -s "$abspath"'/dein.toml' ~/.vim/dein.toml

#files="$abspath"'vimrcs/*vimrc'
#for f in $files; do
#	echo "$f"
#	base=$(basename $f)
#	src="$abspath"'vimrcs/'"$base"
#	dst='~/.'"$base" 
#	ln -s $src $dst 
#done

# clang-format
if [ -e ~/.clang-format ]; then
	echo "file already exists, move to backup"
	mv ~/.clang-format ~/.clang-format.backup
fi
ln -s "$abspath"'dean.clang-format'  ~/.clang-format

ln -s "$abspath"'tmux.conf' ~/.tmux.conf
ln -s "$abspath"'latexmkrc' ~/.latexmkrc
