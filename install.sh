#!/bin/bash
ignore=("." ".." ".git" ".devcontainer");

cd `dirname $0`
for f in .*; do
	if `echo ${ignore[@]} | grep -q "$f"`; then continue; fi
	test ! -L ~/$f && ln -s $PWD/$f ~/
done
which git >/dev/null && config --global include.path '~/.gitconfig.local'
