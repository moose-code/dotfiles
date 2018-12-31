#!/bin/bash

set -e

script_dir=$(cd $(dirname $0) && pwd)
source ${script_dir}/common.sh

VIM_PLUGIN_LIST="\
	scrooloose/nerdtree \
	Valloric/YouCompleteMe \
	SirVer/ultisnips \
	honza/vim-snippets \
	ervandew/supertab
	"
VIM_PLUGINS_FOLDER=$HOME/.vim/bundle 

function _pathogen_install() {
	mkdir -p ${HOME}/.vim/autoload ${VIM_PLUGINS_FOLDER} && \
	curl -LSso ${HOME}/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

function _git_clone() {
	local repo_url=$1
	local repo_folder=$2
	if pushd ${repo_folder}; then
		git pull
		git submodule update --init --recursive
		popd
	else
		git clone ${repo_url} ${repo_folder}
	fi
}

# YouCompleteMe needs an install step to start working
function _ycm_init() {
	pushd ${VIM_PLUGINS_FOLDER}/YouCompleteMe
	./install.sh
	popd
}

function main() {
	# Install Pathogen
	info "Installing Pathogen"
	_pathogen_install
	
	# Download Plugins
	info "Installing Vim Plugins:"
	info "-----------------------"
	for plugin in ${VIM_PLUGIN_LIST}; do
		info "Cloning ${plugin}"
		local plugin_name=$(last_path_segment $plugin)
		_git_clone "https://github.com/${plugin}.git" "${VIM_PLUGINS_FOLDER}/${plugin_name}"
	done

	info "Extra step needed for YouCompleteMe plugin"
	#_ycm_init 
}

# Entrypoint
main

