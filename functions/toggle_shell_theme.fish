function toggle_shell_theme
  set -g FISH_COLOR_THEME_VARIANT $argv
  set -q FISH_COLOR_THEME_VARIANT; or set -g FISH_COLOR_THEME_VARIANT dark
  eval sh $HOME/.config/base16-shell/base16-solarized."$FISH_COLOR_THEME_VARIANT".sh
end
