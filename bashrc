# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

set -o vi
export EDITOR=vim
export BG=dark

export PYTHONPATH=.

# Set BG to dark/light to match your screen's background color. This will help
# pick a good color scheme
# export BG=light

#export LSCOLORS="exFxCxDxBxegedabagacad"
alias ls='ls -G'
alias ll='ls -lG'
alias ok='growlnotify -m DONE'

# set colors for ls
#[ "$BG" = "dark" ] && {
    #export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.cpp=01;34:*.hpp=01;34:*.py=01;34:*.pyc=01;30:*.o=01;30:*.lo=01;30';
#}

# PS1="\h \w > "
PROMPT_COLOR='\[\033[1;33;1m\]'
RESET_COLOR='\[\033[0m\]'
PS1="${PROMPT_COLOR}\w $ ${RESET_COLOR}"

# increase history size
export HISTSIZE=2000
# make bash append rather than overwrite history on disk
shopt -s histappend
# whenever displaying the prompt, write the previous line to disk
PROMPT_COMMAND='history -a'

# bindings a la emacs
bind -m vi-insert "\C-l":clear-screen
bind -m vi-insert "\C-p":previous-history
bind -m vi-insert "\C-n":next-history
