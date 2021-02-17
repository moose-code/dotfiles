vim:
	install-scripts/vim-plugins.sh

debian-packages:
	install-scripts/debian-packages.sh

links:
	install-scripts/symbolic-links.sh

zsh-setup:
	zsh/setupOtherTools.sh
	zsh/setupZshLinks.sh

all: vim links zsh-setup
