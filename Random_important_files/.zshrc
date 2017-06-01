# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh-histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory autocd beep extendedglob nomatch notify

# End of lines configured by zsh-newuser-install


# Default settings to export and adding your bin folder to the $PATH
export EDITOR=vim
export TERMINAL=terminator
export BROWSER=firefox
#export PATH="$HOME/bin:$PATH"
# Gtk themes 
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"


# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 2
zstyle :compinstall filename '/home/aaron/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Gtk themes 
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Set default permissions to allow group writing 
# rwxrwxr_x
umask 0002

# Add Custom Prompt with time and date and pids and all kinds of info...
autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit
prompt elite2

# Source my personal alias file
source ~/.alias

# Add Personal bin folder to PATH
#if [ -f $HOME/bin ]; then      
PATH=$PATH:$HOME/bin
#fi

# Functions

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

PATH=$PATH:~/android-sdk-linux/tools:~/android-sdk-linux/platform-tools

