# RIL FUNCS #################################################################################################
#############################################################################################################
### Updated: 03/11/2023 #####################################################################################
#############################################################################################################

###################################################################
#!/bin/bash
CONF_LOADED=true
###################################################################

## - printline() - pl --------------------------------------------#
#### - retrive and print line from document
#### - EX:
######## - 'printline 2000,2250 <file>' - file to copy from
######## - 'printline 2000,2250 <file> > <output>' - output location
pl()
{
	sed -n -e "$1p" "$2"
}

## - push bash config files to github ----------------------------#
pushbc()
{
	bcgit && putil
}

## - push note files to github -----------------------------------#
pushnt()
{
	ntgit && putil
}

## - push mis config to github
pushmc()
{
	mcgit && putil
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
	bcgit && git status
	echo "| - Notes - |"
	ntgit && git status
}

###################################################################
echo "Functions Loaded"
###################################################################
