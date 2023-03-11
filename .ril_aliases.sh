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
alias alc='cd ~ && cd rc_bashrc_scripts/ && na aliases.sh'
alias alf='cd ~ && cd rc_bashrc_scripts/ && na funcs.sh'

### - edit config files
alias ctmx='cd ~ && nano .tmux.conf'

### - refresh bash
alias reba='source ~/.bashrc'
alias hclr='history -c && history -w'

### - cleaning
alias c='clear'

### - info
alias path='readlink -f'

### - navigation
alias nt='cd && cd Notes/'
alias ntl='cd && cd Notes/ && cd Linux/'
alias home='cd /home'
alias bcgit='cd && cd COMP167/BashConfig/'
alias ntgit='cd && cd COMP167/Notes'

### - Notes
alias ntse='ntl && wg CustomAndUsefulShortcuts.wg'
alias ntae='ntl && wg UsefulAndCoolTerminalApplications'

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
