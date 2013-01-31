PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
### Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

PS1="\W\$(__git_ps1) \$ "
export PGHOST=localhost
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

alias search='find . | xargs grep -I --no-messages --colour --line-number'
alias sizeof='du -chs'

