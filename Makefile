install: install-i3 install-bash

reload-i3:
	i3-msg 'reload'

install-i3:
	@echo "--- Installing i3"
	ln -sf `pwd`/src/i3/config ~/.i3/config
	ln -sf `pwd`/src/i3/i3status.conf ~/.i3/i3status.conf
	ln -sf `pwd`/src/i3/i3exit.sh ~/.i3/i3exit.sh
	ln -sf `pwd`/src/i3/py3modules ~/.i3/py3modules
	@echo "--- i3 installed, try to restart it with 'make reload-i3'"

install-bash:
	@echo "--- Installing bash"
	ln -sf `pwd`/src/bash/bashrc ~/.bashrc
	ln -sf `pwd`/src/bash/bash_aliases ~/.bash_aliases
	ln -sf `pwd`/src/bash/bash_profile ~/.bash_profile
	@echo "--- bash installed"
