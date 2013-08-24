PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
### Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"
PATH="/Users/zdexter/Downloads/play-2.1.3:$PATH"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

PS1="\W\$(__git_ps1) \$ "
export PGHOST=localhost
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

# Aliases
alias li='ls -liah'
alias la='ls -AF'
alias l='ls -F'
alias search='find . | xargs grep -I --no-messages --colour --line-number'
alias sizeof='du -chs'

# My prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1

__RED_C="\[$(tput setaf 1)\]"
__CYAN_C="\[$(tput setaf 6)\]"
__GREEN_C="\[$(tput setaf 2)\]"
__YELLOW_C="\[$(tput setaf 3)\]"
__RESET_C="\[$(tput sgr0)\]"

function __my_git()
{
    local gitps1="$(__git_ps1 "(%s)")"
    if [ "x${gitps1}" != "x" ]; then
        printf %s "${gitps1} "
    else
        printf %s ""
    fi
}

export PS1="${__CYAN_C}\u::\h ${__GREEN_C}\W${__RESET_C} ${__YELLOW_C}\$(__my_git)${__RESET_C}${__RED_C}\$${__RESET_C} "

# Terminal title setter

function set_title()
{
    echo -en "\033]0;$*\a"
}

export GOPATH="/users/zdexter/gocode"
export COLUMNS=250
