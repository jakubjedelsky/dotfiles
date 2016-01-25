install: i3 bash xorg git zsh

reload-i3:
	@i3-msg 'reload'
	@echo "i3 reloaded"

i3:
	@ln -sf `pwd`/src/i3/config ~/.i3/config
	@ln -sf `pwd`/src/i3/i3status.conf ~/.i3/i3status.conf
	@ln -sf `pwd`/src/i3/i3exit.sh ~/.i3/i3exit.sh
	@ln -snf `pwd`/src/i3/py3modules ~/.i3/py3modules
	@echo "i3 prepared"
	@echo " ! i3 should be reloaded 'make reload-i3'"

bash:
	@echo "OBSOLETE"
	@#ln -sf `pwd`/src/bash/bashrc ~/.bashrc
	@#ln -sf `pwd`/src/bash/bash_aliases ~/.bash_aliases
	@#ln -sf `pwd`/src/bash/bash_profile ~/.bash_profile
	@#echo "bash prepared"

zsh:
	@mkdir -p ~/.zsh
	@ln -sf `pwd`/src/zsh/zprofile ~/.zprofile
	@ln -sf `pwd`/src/zsh/alias.zsh ~/.zsh/alias.zsh
	@ln -sf `pwd`/src/zsh/git_prompt.zsh ~/.zsh/git_prompt.zsh
	@if [ -d ~/.zsh/zsh-syntax-highlighting ] ; then \
		pushd ~/.zsh/zsh-syntax-highlighting >/dev/null; \
		git pull -q; \
		popd >/dev/null; \
	else \
		git clone -q git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting;  \
	fi
	@ln -sf `pwd`/src/zsh/zshrc ~/.zshrc
	@echo "zsh prepared"

xorg:
	@ln -sf `pwd`/src/xorg/Xdefaults ~/.Xdefaults
	@# not sure if I need this
	@ln -sf ~/.Xdefaults ~/.Xresources
	@ln -sf `pwd`/src/xorg/00-touchpad.conf ~/.myconfig/00-touchpad.conf
	@ln -sf `pwd`/src/xorg/00-xorg-display.conf ~/.myconfig/00-xorg-display.conf
	@echo "Xorg prepared"
	@echo " ! Files ~/.myconfig/00-* have to be symlinked into /etc/X11/xorg.conf.d/"

git:
	@ln -sf `pwd`/src/git/gitconfig ~/.gitconfig
	@echo "Git prepared"
