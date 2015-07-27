# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish
set fish_config $HOME/.config/fish

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
#set fish_plugins autojump bundler git rails node gem rake

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

Theme "agnoster"

# Load aliases
. $fish_config/aliases.fish

set -x fish_greeting ''
set -x EDITOR vim
set -x RBX_HOME $HOME/projects/rubinius/rubinius
set -x MAGLEV_OPTS "-q"
set -x MAGLEV_HOME $HOME/projects/maglev/maglev
set -x GEMSTONE $MAGLEV_HOME/gemstone
set -x GEMSTONE_GLOBAL_DIR $MAGLEV_HOME
set -e GEMSTONE_NRS_ALL

set -x PATH $PATH $HOME/src/bin
set -x PATH $PATH $MAGLEV_HOME/bin
set -x PATH $PATH /usr/local/heroku/bin

. /usr/local/share/chruby/chruby.fish
. /usr/local/share/chruby/auto.fish

chruby 2.2.2

if test -f ~/.ssh/private_tokens
  . ~/.ssh/private_tokens.fish
end

eval (direnv hook fish)

