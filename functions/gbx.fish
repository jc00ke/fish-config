function gbx
  git branch | fzf | xargs git branch -D
end

