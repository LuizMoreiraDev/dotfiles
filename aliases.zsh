if [ -f /usr/bin/dircolors ]; then
  LS_OPTS="--color=auto"
fi

alias g=git
alias gs="git status"
alias irb="clear && irb"
alias vim="nvim"
# alias ruby="clear && ruby"

alias t="tmux"

alias brew="arch -arm64 /opt/homebrew/bin/brew"
alias ibrew="arch -x86_64 /usr/local/bin/brew"

# generic
alias t="tmux"
alias tn="tmux new-session -A -s"
alias tni="tmux -CC new-session -A -s"
alias ls="ls -lh $LS_OPTS"
alias grep="grep --color=auto"

# alias for aliases
alias ae="nvim ~/.dotfiles/aliases.zsh"
alias ar="source ~/.dotfiles/aliases.zsh"

# rake / rails / rspec / rubocop
alias rspec="clear && bundle exec rspec"
alias rk="bundle exec rake"
alias ra="clear && bundle exec rails"
alias rs="clear && rspec --format=documentation"
alias ts="clear && rails test --backtrace --verbose --color"

alias dbreset="rm db/structure.sql && rails db:environment:set RAILS_ENV=test && RAILS_ENV=test rails db:drop && RAILS_ENV=test rails db:create && RAILS_ENV=test rails db:migrate && RAILS_ENV=development rails db:reset"
