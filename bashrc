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

__RED_C=$(tput setaf 1)
__CYAN_C=$(tput setaf 6)
__GREEN_C=$(tput setaf 2)
__YELLOW_C=$(tput setaf 3)
__RESET_C=$(tput sgr0)

function __my_prompt()
{
    local fpart="${__CYAN_C}$1::$2 ${__GREEN_C}$3${__RESET_C}"
    local gitpart="${__YELLOW_C}$(__git_ps1 "(%s)")${__RESET_C}"
    local lpart="${__RED_C}\$${__RESET_C} "
    if [ "x$(__git_ps1 "(%s)")" != "x" ]; then
        printf %s "${fpart} ${gitpart} ${lpart}"
    else
        printf %s "${fpart} ${lpart}"
    fi
}

export PS1="\$(__my_prompt \u \W)"
