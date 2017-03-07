# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

# Path to here
set fish_path $HOME/.local/share/omf
set fish_config $HOME/.config/fish

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Load aliases
. $fish_config/aliases.fish

set -x TERM "xterm-256color"
set -x fish_greeting ''
set -x EDITOR nvim
set -x MANPAGER "nvim -c 'set ft=neoman' -"
set -x RBX_HOME $HOME/projects/rubinius/rubinius
set -x MAGLEV_OPTS "-q"
set -x MAGLEV_HOME $HOME/projects/maglev/maglev
set -x GEMSTONE $MAGLEV_HOME/gemstone
set -x GEMSTONE_GLOBAL_DIR $MAGLEV_HOME
set -e GEMSTONE_NRS_ALL

set -x PATH $PATH $HOME/src/bin
set -x PATH $PATH $MAGLEV_HOME/bin
set -x PATH $PATH /usr/local/heroku/bin
set -x PATH $PATH $HOME/src/node/bin
set -x PATH $PATH $HOME/.cabal/bin

. $HOME/.local/share/nvim/plugged/neoman.vim/scripts/nman.fish
. /usr/local/share/chruby/chruby.fish
. /usr/local/share/chruby/auto.fish

if test -d /usr/local/go/bin
  set -x PATH $PATH /usr/local/go/bin
  set -x GOPATH $HOME/projects/golang
  set -x PATH $PATH $GOPATH/bin
end

chruby 2.4.0

if test -d $HOME/bin
  set -x PATH $PATH $HOME/bin
end

if test -f $HOME/.emoji_vars.fish
  source $HOME/.emoji_vars.fish
end

if test -d $HOME/.config/base16-shell
  toggle_shell_theme (get_theme_variant)
end

eval (direnv hook fish)
source ~/.asdf/asdf.fish
