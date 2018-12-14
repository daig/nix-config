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

alias wifi_scan='sudo iwlist wlp2s0 scan | grep SSID'
wifi_add() {
  wpa_passphrase "$1" "$2" >> /etc/wpa_supplicant.conf && systemctl restart wpa_supplicant.service
}

breadcrumbs() {
  local dirList=`dirs`
  echo "${dirList// / < }"
}

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_HIDE_IF_PWD_IGNORED=true
export GIT_PS1_SHOWCOLORHINTS=true
export PROMPT_COMMAND='__git_ps1 "[`breadcrumbs`]" "\n$ "'
