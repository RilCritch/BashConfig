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
alias reba='source ~/.bashrc'
alias rebac='source ~/.bashrc && c'
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
alias rcv='c && r && yellow "$(figlet -k "RilCritch")" && ll'

### - root user
alias s='cd /root/'
alias scv='c && s && red "$(figlet -k "ROOT")" && lla'

### - documents
alias d='cd /home/rc/Documents/'
alias dcv='c && d && blue "$(figlet -k "Documents")" && ls'

alias db='d && cd bashscripts/'
alias dbcv='c && db && lla'

alias dc='d && cd configfiles/'
alias dccv='c && dc && lla'

alias dn='d && cd note/'
alias dncv='c && dn && ls && tree'

alias ds='d && cd scripts/'
alias dscv='c && ds && lla'

### - github
alias g='cd /home/rc/COMP167/'
alias gcv='c && g && blue "$(figlet -k "GitHub")" && ls'

alias gb='g && cd BashConfig'
alias gbcv='c && gb && lla'

alias gn='g && cd Notes/'
alias gncv='c && gn && ls && tree'

alias gm='g && cd MiscConfigFiles/'
alias gmcv='c && gm && lla'

#-----------------------------------------------------------------#

# custom scripts -------------------------------------------------#

alias ufetch='/home/rc/Documents/scripts/termbling/ufetch.sh'

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
