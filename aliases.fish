alias free "free -m"
alias l "ls -lahF"
alias lv "vim -R"
alias .. "cd .."
alias ... "cd ../.."
alias cdr "cd .. and cd -"
alias xclipx "xclip -selection clipboard"

alias pt "papertrail -c ~/.ssh/papertrail.yml"
alias ctp "colortail -g papertrail"

alias git="hub"
alias gst "git status --ignore-submodules=dirty"
alias gd "git icdiff"
alias gdt "git difftool"
alias gc "git commit -v"
alias gca "git commit -v -a"
alias gb "git branch"
alias gba "git branch -a"
alias gm "git merge"
alias gmv "git mv"
alias ga "git add"
alias gco "git checkout"
alias gsr "git svn rebase"
alias gsd "git svn dcommit"
alias gg "git log --pretty=oneline --abbrev-commit --branches=* --graph --decorate --color"
alias gfa "git commit --amend --reset-author -CHEAD"
alias conflicts "git ls-files --unmerged | cut -f2 | uniq"

alias up "git push origin `parse_git_this_branch`"
alias down "git pull origin `parse_git_this_branch`"
alias uph "git push heroku `parse_git_this_branch`"
alias downh "git pull heroku `parse_git_this_branch`"

alias rbxci "bin/mspec tag --list fails :ci_files -tx19"
alias cdrbx "cd ~/src/rubinius/rubinius"
alias mac "rake db:migrate db:test:clone"
alias b "bundle exec"

alias gem+ "gem install --no-rdoc --no-ri"
alias gem- "gem uninstall"
alias "gem^" "gem update --no-rdoc --no-ri"
alias "gem^!" "gem update --system"

alias unhitch 'hitch -u'

function oops
  eval command sudo $history[1]
end
alias fuck "oops"
alias yolo "oops"
