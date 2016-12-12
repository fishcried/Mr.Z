#!/bin/bash
#
# The MIT License (MIT)
# Copyright (c) 2014 fishcried(tianqing.w@gmail.com)
#

LOG() {
	echo "$(date +'%Y/%m/%d %T')-> $@"
}

LOG "Begin config zsh ..."

dpkg -l | grep -qw zsh || sudo apt-get install zsh
[ ! -e "$HOME/.oh-my-zsh" ] && sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

rsync -vl zshrc $HOME/.zshrc
LOG "End config zsh ..."
