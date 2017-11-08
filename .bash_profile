# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH" # Add homebrew to PATH
export PATH="$PATH:~/development/fits/"

alias ctags="`brew --prefix`/bin/ctags"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
