# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# bash-completion
if [ -f `brew --prefix`/etc/bash_completion  ]; then
      . `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# User specific environment and startup programs

PATH=~$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# export PATH

export PATH="/usr/local/sbin:$PATH"
export PATH=":/usr/local/bin:$PATH" # Add homebrew to PATH
