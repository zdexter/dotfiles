PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
### Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

PS1="\W\$(__git_ps1) \$ "
export PGHOST=localhost
