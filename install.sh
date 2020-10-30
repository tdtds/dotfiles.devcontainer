#!/bin/bash
ignore=("." ".." ".git" ".devcontainer");

cd `dirname $0`
for f in .*; do
	if `echo ${ignore[@]} | grep -q "$f"`; then continue; fi
	test ! -L ~/$f && ln -s $PWD/$f ~/
done

# add some value into gitconfig
git config --global user.name "Tada, Tadashi"
git config --global user.email t@tdtds.jp
