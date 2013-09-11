#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="gitconfig gitignore bashrc vimrc vim zshrc oh-my-zsh floorc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

dir=$dir/bash_completion.d
files="git-completion.sh git-flow-completion.sh git-prompt.sh"
completions_dir=`brew --prefix`/etc/bash_completion.d 

if [ -d $completions_dir ]; then
  echo "Symlinking bash completion files"
  for file in $files; do
    ln -s $dir/$file $completions_dir 
  done
fi

git config --global core.excludesfile ~/.gitignore

echo "Done."
