# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# load OS X configs
usernamestring = `uname`
if [ $usernamestring == 'Darwin' ]; then
  . ~/.bash_osx
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
