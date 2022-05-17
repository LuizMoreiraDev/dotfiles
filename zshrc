autoload -Uz compinit bashcompinit
compinit
bashcompinit


# show branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git





export CLICOLOR=1
export LSCOLORS="Gxfxcxdxbxegedabagacad"
autoload -U colors && colors
PS1="%{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[cyan]%}%1~%{$reset_color%} %% "

# completion case insensitive and colors
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'

source ~/.dotfiles/aliases.zsh

if [ -d ~/.zsh.after/ ]; then
  if [ "$(ls -A ~/.zsh.after/)" ]; then
    for file (~/.zsh.after/*.zsh) source $file
  fi
fi
