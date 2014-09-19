# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# cd ~/Documents/realtime

# if running bash
#if [ -n "$BASH_VERSION" ]; then
   # # include .bashrc if it exists
    #if [ -f "$HOME/.bashrc" ]; then
	 #"$HOME/.bashrc"
    #fi
#fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

export PS1='\[\033[00m\] \w\[\033[31m\] $(__git_ps1 "(%s)") \[\033[32m\]
$\[\033[00m\] '

# if [[ $(git rev-parse --git-dir 2> /dev/null) && -z "$GIT_MOTD" ]]; then
#     echo -e "\x1B[00;32m- \x1B[01;33mWelcome $(id -u -n)"
#     echo -e "\x1B[00;32m- \x1B[01;32mGIT BRANCH \x1B[00;32m-----------------------------------------------------\x1B[00m"
#     git branch
#     echo -e "\x1B[00;32m- \x1B[01;32mGIT STATUS \x1B[00;32m-----------------------------------------------------\x1B[00m"
#     git status
#     echo -e "\x1B[00;32m------------------------------------------------------------------\x1B[00m"
#     GIT_MOTD=1;
# fi

export PATH="/usr/local/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
