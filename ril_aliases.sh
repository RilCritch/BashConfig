# RIL ALIASES ###############################################################################################
#############################################################################################################
### Updated: 03/11/2023 #####################################################################################
#############################################################################################################

###################################################################
#!/bin/bash
CONF_LOADED=true
###################################################################

##############################################################################################################

## apt aliases ---------------------------------------------------#

### - install
alias sai='sudo apt install'
alias sagi='sudo apt-get install'

### - update and upgrade
alias aptup='sudo apt update && sudo apt upgrade'
alias aptupd='sudo apt update'
alias aptupu='sudo apt upgrade'

#-----------------------------------------------------------------#

## common task aliases -------------------------------------------#

### - edit bashrc
alias ban='cd ~ && na .bashrc'
alias bav='cd ~ && vi .bashrc'
alias alc='cd /home/rc/Documents/bashscripts/ && na aliases.sh'
alias fnc='cd /home/rc/Documents/bashscripts/ && na funcs.sh'

### - refresh bash
alias reba='cd && source ~/.bashrc && c'
alias hclr='history -c && history -w'

### - clearing
alias c='clear'
alias ca='clear &&'

### - file creation
alias sc='ln -s'
alias nf='touch'

### - info
alias path='readlink -f'

#-----------------------------------------------------------------#

## navigation ----------------------------------------------------#

### - rilcritch user
alias r='cd /home/rc/'
alias rcv='c && rc && figlet RilCritch && ll'

### - root user
alias s='cd /root/'
alias scv='c && s && figlet ROOT && lla'

### - documents
alias d='cd /home/rc/Documents/'
alias dcv='c && doc && figlet DOCUMENTS && ls && tree'

alias db='d && cd bashcripts/'
alias dbcv='c && db && lla'

alias dc='d && cd configfiles'
alias dccv='c && dc && lla'

alias dn='d && cd note'
alias dncv='c && dn && tree'

### - github
alias g='cd /home/rc/COMP167/'
alias gcv='c && g && figlet GITHUB && ls && tree'

alias gb='g && cd /BashConfig'
alias gbcv='c && gb && lla'

alias gn='g && cd /Notes/'
alias gncv='c && gn && tree'

alias gm='g && cd /MiscConfigFiles/'
alias gmcv='c && gm && lla'

#-----------------------------------------------------------------#

## terminal application aliases ----------------------------------#

### - text editors
alias na='nano --linenumbers'
alias vi='vim'
alias wg='wordgrinder'

### - copy and paste
alias pbc='xsel --clipboard --input'
alias pbp='xsel --clipboard --output'

### - file managers
alias f='mc'

### - sys information
alias bt='bpytop'
alias nf='neofetch'
alias dk='ncdu'

### - directory info
alias lsa='exa -a'
alias lsae='exa -a | nms'
alias ls='exa'
alias ll='exa -lh'
alias lla='exa -lha'
alias tree='exa --tree'

### - text readers
alias bat='batcat'

#-----------------------------------------------------------------#
##############################################################################################################

###################################################################
echo "Aliases Loaded"
