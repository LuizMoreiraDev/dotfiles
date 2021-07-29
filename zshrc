source ~/.dotfiles/aliases.zsh

if [ -d ~/.zsh.after/ ]; then
  if [ "$(ls -A ~/.zsh.after/)" ]; then
    for file (~/.zsh.after/*.zsh) source $file
  fi
fi
