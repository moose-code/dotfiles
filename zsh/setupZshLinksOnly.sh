#!/bin/bash

zsh_dir=$(cd $(dirname $0) && pwd)
zshConfigBackupFolder=~/.zsh-backup-$(date +%M)

mkdir -p ${zshConfigBackupFolder}
mv ~/.zlogin ${zshConfigBackupFolder}
mv ~/.zlogout ${zshConfigBackupFolder}
mv ~/.zpreztorc ${zshConfigBackupFolder}
mv ~/.zprofile ${zshConfigBackupFolder}
mv ~/.zshenv ${zshConfigBackupFolder}
mv ~/.zshrc ${zshConfigBackupFolder}

ln -s ${zsh_dir}/zlogin ~/.zlogin
ln -s ${zsh_dir}/zlogout ~/.zlogout
ln -s ${zsh_dir}/zpreztorc ~/.zpreztorc
ln -s ${zsh_dir}/zprofile ~/.zprofile
ln -s ${zsh_dir}/zshenv ~/.zshenv
ln -s ${zsh_dir}/zshrc ~/.zshrc
