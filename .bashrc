alias gg='git log --graph --pretty=oneline --oneline --abbrev-commit --decorate'
alias gga='git log --all --graph --pretty=oneline --oneline --abbrev-commit --decorate'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gcb='git checkout -b'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit --message'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias ga='git add'
alias gau='git add -u'
alias gai='git add -i'
alias gm='git merge --no-ff'
alias gf='git merge --ff-only'
alias grbo='git rebase --onto'
alias grbc='git cherry-pick'
alias gpush='git push'
alias gp='git pull'
alias gpm='git pull origin master'
alias gff='git pull --ff-only origin'
alias gcgname='git config --global user.name'
alias gcname='git config user.name'
alias gcgemail='git config --global user.email'
alias gcemail='git config user.email'
alias gr='git reset'
alias grh='git reset --hard'
alias gra='git remote add'
alias grb='git rebase'

alias grhr='git reset --hard && git submodule foreach --recursive git reset --hard'
alias gpr="git pull --recurse-submodule"
#alias gpr="git submodule update --merge"

alias pbcopy='xclip -selection clipboard'
alias hinit='cabal init --m -n -x '' -a Dai -e daig@sodality.cc -p'

eval "$(fasd --init auto)"
