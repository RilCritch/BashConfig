# RIL FUNCS #################################################################################################
#############################################################################################################
### Updated: 03/11/2023 #####################################################################################
#############################################################################################################

# How to put in .bashrc

## - variables - ##
#SD="/home/rc/Documents/bashscripts/"
#AL="aliases.sh"
#FN="funcs.sh"
#
### - functions - ##
#FNP="$SD$FN"
#if [ -f "$FNP" ];
#then
#        . "$FNP"
#else
#        echo "ERROR: failed to load $FN"
#fi

###################################################################
#!/bin/bash
CONF_LOADED=true
###################################################################

# - UTIL ------------------------------------------------------------------------------------------------ #

## - printline() - pl --------------------------------------------#
#### - retrive and print line from document
#### - EX:
######## - 'printline 2000,2250 <file>' - file to copy from
######## - 'printline 2000,2250 <file> > <output>' - output location
pl()
{
	sed -n -e "$1p" "$2"
}

## - viewcolors() - vc
#### - a script that outputs the terminal colors
#### - source: https://askubuntu.com/questions/27314/script-to-display-all-terminal-colors
vc()
{
    for x in {0..8}; do
        for i in {30..37}; do
            for a in {40..47}; do
                echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
            done
            echo
        done
    done
    echo ""

}

# ------------------------------------------------------------------------------------------------------- #

# - GIT ------------------------------------------------------------------------------------------------- #

## - push bash config files to github ----------------------------#
pushbc()
{
	gb && putil
}

## - push note files to github -----------------------------------#
pushnt()
{
	gn && putil
}

## - push mis config to github
pushmc()
{
	gm && putil
}

## - utility for push fncs ---------------------------------------#
#### - Send it a location
putil()
{
	git add . && git commit -m "update" && git push --all
}

## - check status of github repos --------------------------------#
gitStatusAll()
{
	echo "| - Bash Configs - |"
	gb && git status
	echo -e "|------------------|\n"
	echo "| - Notes - |"
	gn && git status
	echo -e "|------------------|\n"
	echo "| - Misc Configs - |"
	gm && git status
	echo -e "|------------------|\n"
}

# ------------------------------------------------------------------------------------------------------- #

# - COLOR FUNCTIONS ------------------------------------------------------------------------------------- #

RED_B='\e[1;91m'
GREEN_B='\e[1;92m'
YELLOW_B='\e[1;93m'
BLUE_B='\e[1;94m'
PURPLE_B='\e[1;95m'
CYAN_B='\e[1;96m'
WHITE_B='\e[1;97m'
RESET='\e[0m'

red() { echo -e "${RED_B}${1}${RESET}"; }
green() { echo -e "${GREEN_B}${1}${RESET}"; }
yellow() { echo -e "${YELLOW_B}${1}${RESET}"; }
blue() { echo -e "${BLUE_B}${1}${RESET}"; }
purple() { echo -e "${PURPLE_B}${1}${RESET}"; }
cyan() { echo -e "${CYAN_B}${1}${RESET}"; }
white() { echo -e "${WHITE_B}${1}${RESET}"; }

# ------------------------------------------------------------------------------------------------------- #

# - ARCHIVE EXTRACTION ---------------------------------------------------------------------------------- #

## Copied from DistroTubes gitlab
## usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# ------------------------------------------------------------------------------------------------------- #
