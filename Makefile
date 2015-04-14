install: i3 bash xorg git

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
	@ln -sf `pwd`/src/bash/bashrc ~/.bashrc
	@ln -sf `pwd`/src/bash/bash_aliases ~/.bash_aliases
	@ln -sf `pwd`/src/bash/bash_profile ~/.bash_profile
	@echo "bash prepared"

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
