function git_current() {
    git branch --show-current
}

function git_track() {
    git branch --set-upstream-to=origin/$(git_current) $(git_current)
}

alias push='git push origin $(git_current)'
alias pull='git pull'
alias ts='tig status'
alias pr='gh pr create'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gcp='git checkout production'
alias gmm='git merge master'
alias clone='gh repo clone'
alias git-track='git_track'
alias c='clear'
alias m='python manage.py'
alias emberts='ember t -s --filter $1'
alias eft='ember exam --split=2 --parallel --silent'

alias aliases='nvim ~/.dotfiles/zsh/aliases.sh'
alias dotfiles='cd ~/.dotfiles'
