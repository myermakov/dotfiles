#! /bin/sh
if [ ! -f ~/.tmux.conf ]; then
  ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
else
  echo "tmux conf file exists"
fi


if [ ! -f ~/.vimrc ]; then
  ln -s ~/dotfiles/.vimrc ~/.vimrc
else
  echo "vimrc file exists"
fi


# TODO: bash and input resource files

# TODO: clean up
# TODO: force push

# vim plugin bootstrap

# if no .vim folder
# make it & cd
# pull Vundle
# trigger install?



# TODO: roll a function?
# check return codes
#check that vim is installed
#check that git is installed
which git
which vim
RC=$?  
if [ $RC -ne 0 ]; then
  echo "messed it up"
  exit 1
else
  echo "ok" 
fi

if [ ! -e ~/.vim ]; then
  mkdir ~/.vim
  mkdir ~/.vim/bundle
else
  rm -rf ~/.vim/bundle
fi


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
