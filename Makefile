install: install-i3

reload-i3:
	i3-msg 'reload'

install-i3:
	@echo "--- Installing i3"
	rm -f ~/.i3/config
	ln -s `pwd`/src/i3/config ~/.i3/config
	rm -f ~/.i3/i3status.conf
	ln -s `pwd`/src/i3/i3status.conf ~/.i3/i3status.conf
	rm -f ~/.i3/i3exit.sh
	ln -s `pwd`/src/i3/i3exit.sh ~/.i3/i3exit.sh
	rm -rf ~/.i3/py3modules
	ln -s `pwd`/src/i3/py3modules ~/.i3/py3modules
	@echo "--- i3 installed, try to restart it with 'make reload-i3'"
