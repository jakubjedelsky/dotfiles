# Install (my) dotfiles easily
This repo stores my dotfiles which can be installed easily.

To install all dotfiles just run:

	make install

## I3wm
Improved tiling window manager. See [custom dotfile docs](src/i3/README.md) for details.
Install:

	make i3

Reload (it is useful after changing configuration files):

	make reload-i3

## zsh
Prepare zsh initialization files. Install with:

	make zsh

## Bash
*OBSOLETE*
Prepare bash personal initialization files. Install with:

	make bash

## Xorg
Install configuration for urxvt terminal emulator and some stuff for better using of Lenovo X1 carbon laptop (touchpad and screen).

	make xorg

## Git
Basic gitconfig:

	make git

## TODO
What I like to have there:
 - all of current dot files (vim, git, xorg, ...)
 - chceck if dirs exist and create them if not (improve install)
 - load and install modules automatically (eg. vim modules through git)
 - some minimal install for servers
