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
alias alc='cd ~ && cd rc_bashrc_scripts/ && na .ril_aliases.sh'
alias alf='cd ~ && cd rc_bashrc_scripts/ && na .ril_funcs.sh'

### - edit config files
alias ctmx='cd ~ && nano .tmux.conf'

### - refresh bash
alias reba='source ~/.bashrc'
alias hclr='history -c && history -w'

### - Cleaning
alias c='clear'

### - ls commands
alias lsa='ls -a'
alias lsae='ls -a | nms'

### - info
alias path='readlink -f'

### - navigation
alias nt='cd && cd Notes/'
alias ntl='cd && cd Notes/ && cd linux/'
alias home='cd /home'

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
alias fmr='ranger'
alias nn='nnn'

### - information
alias bt='bpytop'
alias ht='htop'
alias nf='neofetch'
alias dk='ncdu'
alias ls='exa'
alias ll='exa -lh'
alias tree='exa --tree'

### - webstuff
alias web='links2'

### - tasks
alias atb='tb -t'
alias dtb='tb -d'
alias ntb='tb -n'
alias stb='tb -b'
alias ctb='tb -c'

### - text readers
alias bat='batcat'

#-----------------------------------------------------------------#

##############################################################################################################

###################################################################
echo "Aliases Loaded"

