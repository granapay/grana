
Debian
====================
This directory contains files used to package granad/grana-qt
for Debian-based Linux systems. If you compile granad/grana-qt yourself, there are some useful files here.

## grana: URI support ##


grana-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install grana-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your grana-qt binary to `/usr/bin`
and the `../../share/pixmaps/grana128.png` to `/usr/share/pixmaps`

grana-qt.protocol (KDE)

