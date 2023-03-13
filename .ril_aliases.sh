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

### - edit config files
alias ctmx='cd ~ && na .tmux.conf'
alias cna='cd /etc && sudo na nanorc'

### - refresh bash
alias reba='source ~/.bashrc && c'
alias hclr='history -c && history -w'

### - cleaning
alias c='clear'

### - info
alias path='readlink -f'

### - navigation
alias nt='doc && cd note/'
alias ntl='nt && cd linux/'
alias home='cd /home'
alias doc='cd /home/rc/Documents/'
alias bcgit='cd && cd COMP167/BashConfig/'
alias ntgit='cd && cd COMP167/Notes/'
alias mcgit='cd && cd COMP167/MiscConfigFiles/'

### - notes
alias ntse='ntl && wg shortcuts.wg'
alias ntae='ntl && wg favapps.wg'

### - nav clear and info
alias rcv='c && cd && ll'
alias dcv='c && doc && ls && tree'
alias gtv='c && cd && cd COMP167/ && ll'

#-----------------------------------------------------------------#

## terminal application aliases ----------------------------------#

### - text editors
alias na='nano --linenumbers'
alias nano='nano --linenumbers'
alias vi='vim'
alias wg='wordgrinder'

### - copy and paste
alias pbc='xsel --clipboard --input'
alias pbp='xsel --clipboard --output'

### - file managers
alias fmr='ranger'
alias nn='nnn'
alias f='mc'

### - sys information
alias bt='bpytop'
alias ht='htop'
alias nf='neofetch'
alias dk='ncdu'

### - directory info
alias lsa='exa -a'
alias lsae='exa -a | nms'
alias ls='exa'
alias ll='exa -lh'
alias lla='exa -lha'
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
