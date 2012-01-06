# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Environment
if [ -f ~/.bash_environment ]; then
    . ~/.bash_environment
fi

# ssh-agent configuration
if [ -f ~/.bash_ssh_agent ]; then
    . ~/.bash_ssh_agent
fi

# git completion
if [ -f ~/.bash_git_completion.sh ]; then
    . ~/.bash_git_completion.sh
fi

# Set prompt
PS1='\[\033[01;34m\]\u@\h\[\033[00m\]:\w$(__git_ps1 " (%s)")\$ '
