# Install (my) dotfiles easily
This repo stores my dotfiles which can be installed easily.

To install all dotfiles just run:

	make install

## i3wm
Improved tiling window manager. See [custom dotfile docs](src/i3/README.md) for details.
Install:

	make install-i3

Reload (it is useful after changing configuration files):

	make reload-i3

## TODO
What I like to have there:
 - all of current dot files (vim, git, xorg, ...)
 - chceck if dirs exist and create them if not (improve install)
 - load and install modules automatically (eg. vim modules through git)
 - some minimal install for servers
