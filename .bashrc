# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


set -o vi
# set editing-mode vi 
# check bind -P
# normal people use ctrl-X / ctrl-E to bring up the command in editor mode

alias ipy="ipython --TerminalInteractiveShell.editing_mode=vi"
