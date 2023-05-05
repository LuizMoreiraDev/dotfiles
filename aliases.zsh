if [ -f /usr/bin/dircolors ]; then
  LS_OPTS="--color=auto"
fi

alias lab="cd ~/Code/luizclaudiomoreira/lab && clear"

alias g=git
alias irb="clear && irb"
alias vim="nvim"
# alias ruby="clear && ruby"

alias a="cd ~/Code/programador-do-futuro/aulas && clear"
alias e="cd ~/Code/luizclaudiomoreira/exercicios-ruby && clear"
alias ep="cd ~/Code/programador-do-futuro/exercicios-ruby && clear"
alias lc="cd ~/Code/luizclaudiomoreira && clear"
alias t="cd ~/Code/programador-do-futuro/t0-exercicios && clear"

alias brew="arch -arm64 /opt/homebrew/bin/brew"
alias ibrew="arch -x86_64 /usr/local/bin/brew"

# generic
# alias t="tmux"
alias tn="tmux new-session -A -D -s"
# alias v="vagrant"
alias ls="ls -lh $LS_OPTS"
alias grep="grep --color=auto"

# alias for aliases
alias ae="vim ~/.dotfiles/aliases.zsh"
alias ar="source ~/.dotfiles/aliases.zsh"

# docker
# alias dk="docker"
# alias dkc="docker compose"

# bundle
# alias bi="bundle install"
# alias bu="bundle update"

# rake / rails / rspec / rubocop
alias rspec="clear && rspec"
alias rk="rake"
alias ra="rails"
# alias ru="rubocop --require rubocop-rspec --require rubocop-rails"
alias rs="clear && rspec --format=documentation"

alias dbreset="rails db:environment:set RAILS_ENV=test && RAILS_ENV=test rails db:drop && RAILS_ENV=test rails db:create && RAILS_ENV=test rails db:migrate && RAILS_ENV=development rails db:reset"

# spring
# alias sp="spring"
# alias sra="spring rails"
# alias sps="clear && spring stop && ps -ax | grep spring"
# alias srs="clear && spring rspec --format=documentation"
