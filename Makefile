vim:
	install-scripts/vim-plugins.sh

debian-packages:
	install-scripts/debian-packages.sh

links:
	install-scripts/symbolic-links.sh

zsh-setup:
	zsh/setupZshLinks.sh
	zsh/setupOtherTools.sh

all: vim links zsh-setup
