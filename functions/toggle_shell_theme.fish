function toggle_shell_theme
  set -l variant (get_theme_variant; or echo "dark")
  if test -n "$argv" -a "$argv" != "$variant"
    set_theme_variant "$argv"
  end
  eval sh $HOME/.config/base16-shell/base16-google."$argv".sh
end
