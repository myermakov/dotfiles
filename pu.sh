#! /bin/sh
if [ ! -f ~/.tmux.conf ]; then
  ln -s .tmux.conf ~/.tmux.conf
else
  echo "tmux conf file exists"
fi


if [ ! -f ~/.vimrc ]; then
  ln -s .vimrc ~/.vimrc
else
  echo "vimrc file exists"
fi


# TODO: bash and input
