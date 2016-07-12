function gbx
  git branch | fzf | xargs git branch -d
end

