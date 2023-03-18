# RIL ALIASES ###############################################################################################
#############################################################################################################
### Updated: 03/11/2023 #####################################################################################
#############################################################################################################

# How to include in .bashrc
## - Change location paths to where you put the files on your system and name them

## - variables - ##
#SD="/home/rc/Documents/bashscripts/"
#AL="aliases.sh"
#FN="funcs.sh"
#
### - aliases - ##
#ALP="$SD$AL"
#if [ -f "$ALP" ];
#then
#        . "$ALP"
#else
#        echo "ERROR: failed to load $AL"
#fi

###################################################################
#!/bin/bash
CONF_LOADED=true
###################################################################

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
alias ban='na /home/rc/.bashrc'
alias bav='vim /home/rc/.bashrc'
alias alc='na /home/rc/COMP167/BashConfig/ril_aliases.sh'
alias fnc='na /home/rc/COMP167/BashConfig/ril_funcs.sh'

### - refresh bash
alias reba='source ~/.bashrc'
alias rebac='source ~/.bashrc && c'
alias hclr='history -c && history -w'

### - clearing
alias c='clear && colorscript -e 21'
alias ca='clear &&'

### - file creation
alias sc='ln -s'
alias nf='touch'

### - info
alias path='readlink -f'

### - confrim before overwriting
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

#-----------------------------------------------------------------#

## navigation ----------------------------------------------------#

### - rilcritch user
alias r='cd /home/rc/'
alias rcv='clear && r && yellow "$(figlet -k "RilCritch")" && ll'

### - root user
alias s='cd /root/'
alias scv='clear && s && red "$(figlet -k "ROOT")" && lla'

### - documents
alias d='cd /home/rc/Documents/'
alias dcv='clear && d && cyan "$(figlet -k "Documents")" && ls'

alias db='d && cd bashscripts/'
alias dbcv='clear && db && cyan "$(figlet -k "BashConfig")" && lla'

alias dc='d && cd configfiles/'
alias dccv='clear && dc && cyan "$(figlet -k "ConfigFiles")" && lla'

alias dn='d && cd note/'
alias dncv='clear && dn && cyan "$(figlet -k "Notes")" && ls && tree'

alias ds='d && cd scripts/'
alias dscv='clear && ds && cyan "$(figlet -k "Scripts")" && ls && tree'

### - github
alias g='cd /home/rc/COMP167/'
alias gcv='clear && g && blue "$(figlet -k "GitHub")" && ls'

alias gb='g && cd BashConfig'
alias gbcv='clear && gb && blue "$(figlet -k "BashConfig")" && lla'

alias gn='g && cd Notes/'
alias gncv='clear && gn && blue "$(figlet -k "Notes")" && ls && tree'

alias gm='g && cd MiscConfigFiles/'
alias gmcv='clear && gm && blue "$(figlet -k "ConfigFiles")" && lla'

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
alias lsa='exa -a --color=always --group-directories-first'
alias ls='exa --color=always --group-directories-first'
alias ll='exa -lh --color=always --group-directories-first'
alias lla='exa -lha --color=always --group-directories-first'
alias tree='exa --tree --color=always --group-directories-first'

### - text readers
alias bat='batcat'

#-----------------------------------------------------------------#
