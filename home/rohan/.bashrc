#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

complete -cf sudo
export HISTCONTROL=ignoreboth:erasedups

alias reflector_update='sudo reflector --latest 20 --verbose --sort rate --protocol https --protocol http --save /etc/pacman.d/mirrorlist'
# export MKLROOT='/opt/intel/mkl/'
# export IPPROOT='/opt/intel/ipp/'
# export TBBROOT='/opt/intel/tbb/'

# export LD_LIBARY_PATH=/usr/local/lib:/opt/intel/mkl/lib/intel64:/opt/intel/ipp/lib/intel64:/opt/intel/tbb/lib/intel64/gcc4.7:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig/
export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python3.7/site-packages/
export PATH="~/.gem/ruby/2.6.0/bin":$PATH


powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
