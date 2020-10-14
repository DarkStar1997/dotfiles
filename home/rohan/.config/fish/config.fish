function fish_greeting
end


set -g theme_date_timezone Asia/Kolkata
set -g theme_nerd_fonts yes

set fish_prompt_pwd_dir_length 0

alias reflector_update='sudo reflector --latest 20 --verbose --sort rate --protocol https --protocol http --save /etc/pacman.d/mirrorlist'
set -x PATH $PATH $HOME/Downloads/Write
set -x PKG_CONFIG_PATH $PKG_CONFIG_PATH /usr/local/lib/pkgconfig/
set -x EDITOR /usr/bin/vim
set -x VISUAL /usr/bin/vim

alias nnn "nnn -e"
set -x NNN_FIFO "/tmp/nnn.fifo"
set -x NNN_PLUG "o:fzopen;c:fzcd;p:preview-tui;t:preview-tabbed"
set -x NNN_TMPFILE 1
source "$HOME/.config/fish/quitcd.fish"
[ -n "$NNNLVL" ] && set PS1 "N$NNNLVL $PS1"
