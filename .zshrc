# Plugins
source '/usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh'
source '/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh'
source '/usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh'


PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})" 
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall

zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' menu select=3
zstyle :compinstall filename '/home/mik/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:~/Downloads/audio-share-server-cmd/bin



alias clear="printf '\033[2J\033[3J\033[1;1H'"
alias ls="ls --color"
