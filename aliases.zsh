if [ -f /usr/bin/dircolors ]; then
  LS_OPTS="--color=auto"
fi

# generic
alias t="tmux"
alias v="vagrant"
alias ls="ls -lh $LS_OPTS"
alias grep="grep --color=auto"

# alias for aliases
alias ae="vim ~/.dotfiles/aliases.zsh"
alias ar="source ~/.dotfiles/aliases.zsh"

# bundle
alias bi="bundle install"
alias bu="bundle update"

# rake / rails / rspec / rubocop
alias rk="rake"
alias ra="rails"
alias ru="rubocop"
alias rs="clear && rspec --format=documentation"

alias dbreset="rails db:environment:set RAILS_ENV=test && RAILS_ENV=test rails db:drop && RAILS_ENV=test rails db:create && RAILS_ENV=test rails db:migrate"

# spring
alias sp="spring"
alias sra="spring rails"
alias sps="clear && spring stop && ps -ax | grep spring"
alias srs="clear && spring rspec --format=documentation"
