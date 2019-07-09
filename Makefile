vim:
	install-scripts/vim-plugins.sh

debian-packages:
	install-scripts/debian-packages.sh

links:
	install-scripts/symbolic-links.sh


all: vim links
