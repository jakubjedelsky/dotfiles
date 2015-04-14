install: install-i3 install-bash install-xorg

reload-i3:
	i3-msg 'reload'

install-i3:
	@echo "--- Installing i3"
	ln -sf `pwd`/src/i3/config ~/.i3/config
	ln -sf `pwd`/src/i3/i3status.conf ~/.i3/i3status.conf
	ln -sf `pwd`/src/i3/i3exit.sh ~/.i3/i3exit.sh
	ln -sf `pwd`/src/i3/py3modules ~/.i3/py3modules
	@echo "!!!"
	@echo "!!! i3 should be reloaded 'make reload-i3'"
	@echo "!!!"
	@echo "--- i3 installed"

install-bash:
	@echo "--- Installing bash"
	ln -sf `pwd`/src/bash/bashrc ~/.bashrc
	ln -sf `pwd`/src/bash/bash_aliases ~/.bash_aliases
	ln -sf `pwd`/src/bash/bash_profile ~/.bash_profile
	@echo "--- bash installed"

install-xorg:
	@echo "--- Installing xorg"
	ln -sf `pwd`/src/xorg/Xdefaults ~/.Xdefaults
	# not sure if I need this
	ln -sf ~/.Xdefaults ~/.Xresources
	ln -sf `pwd`/src/xorg/00-touchpad.conf ~/.myconfig/00-touchpad.conf
	ln -sf `pwd`/src/xorg/00-xorg-display.conf ~/.myconfig/00-xorg-display.conf
	@echo "!!!"
	@echo "!!! Files ~/.myconfig/00-* have to be symlinked into /etc/X11/xorg.conf.d/"
	@echo "!!!"
	@echo "--- xorg installed"
