# Paths
# =====
function add_to_path
  if not test -d $argv[1]
    return
  end
  if not contains $argv[1] $PATH
    set PATH $PATH $argv[1]
  end
end

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
set -g theme_display_ruby no
set -g theme_color_scheme base16

set -x TERM "xterm-256color"
set -x TERMINAL "kitty"
set -x fish_greeting ''
set -x EDITOR "nvim"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -gx FZF_DEFAULT_COMMAND  'rg --files --color=never'

add_to_path "$HOME/src/bin"
add_to_path "$HOME/bin"
add_to_path "$HOME/.local/bin"
add_to_path "$HOME/src/node/bin"
add_to_path "$HOME/src/DataGrip/bin"
add_to_path "$HOME/.config/yarn/global/node_modules/.bin"
add_to_path "$HOME/.yarn/bin"
set PATH $PATH ".git/safe/../../bin"

# this function may be required
function fish_title
  true
end

if test -z "$HOME/.dokku/contrib/dokku_client.sh"
  alias dokku "bash $HOME/.dokku/contrib/dokku_client.sh"
end

# Abbreviations
# =============
# Clean abbreviations
set -e fish_user_abbreviations

abbr -a .. "cd .."
abbr -a ... "cd ../.."
abbr -a b "bundle exec"
abbr -a cat "bat"
abbr -a cdr "cd .. and cd -"
abbr -a conflicts "git ls-files --unmerged | cut -f2 | uniq"
abbr -a dc "docker-compose"
abbr -a e nvim
abbr -a es "nvim -S"
abbr -a fd "fdfind"
abbr -a free "free -m"
abbr -a ga "git add"
abbr -a gap "git add -p"
abbr -a gb "git branch"
abbr -a gba "git branch -a"
abbr -a gc "git commit -v"
abbr -a gca "git commit -v -a"
abbr -a gco "git checkout"
abbr -a gd "git diff"
abbr -a gdt "git difftool"
abbr -a gfa "git commit --amend --reset-author -CHEAD"
abbr -a gfp "git fetch --prune"
abbr -a gg "git log --pretty=oneline --abbrev-commit --branches=* --graph --decorate --color"
abbr -a gm "git merge"
abbr -a gmv "git mv"
abbr -a gsd "git svn dcommit"
abbr -a gsr "git svn rebase"
abbr -a gst "git status --ignore-submodules=dirty"
abbr -a hh "heroku"
abbr -a l "ls -la"
abbr -a lv "nvim -R"
abbr -a xclipx "xclip -selection clipboard"
abbr -a xx "exit"

function oops
  eval command sudo $history[1]
end
abbr -a fuck "oops"
abbr -a yolo "oops"


eval (direnv hook fish)
source ~/.asdf/asdf.fish
