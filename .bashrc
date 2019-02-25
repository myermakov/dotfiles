# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


set -o vi
# set editing-mode vi 
# check bind -P
# normal people use ctrl-X / ctrl-E to bring up the command in editor mode


if [ -d /vagrant/ ] ; then 
    NIFTY="/vagrant/nifty" 
else 
    NIFTY="~/nifty" 
fi

alias rememba='echo `history 2 | head -1` \<- $@ >> ${NIFTY}'


alias ipy="ipython --TerminalInteractiveShell.editing_mode=vi"

export PIP_CERT="/etc/pki/ca-trust/source/anchors/zscaler.crt"

# alias cdiff="diff something something | colordiff"  < pass it in?



