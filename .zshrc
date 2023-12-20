alias gb="git branch"
alias gp="git pull"
alias gpsh="git push"
alias ga="git add"
alias gco="git commit -m"
alias gr="git rebase"
alias grst="git restore"
alias gre="git reset"
alias greh="git reset --hard"
alias gre1="git reset HEAD~1"
alias grm="git rebase master"
alias grg="git rebase green"
alias gs="git status"
alias gcm="git checkout master"
alias gcg="git checkout green"
alias gcb="git checkout -b"
alias gc="git checkout"
alias gl="git log"

function gbd {
  readonly branch=${1:?"The branch must be specified."}
  git branch | rg "$branch" | xargs git branch -D
}

eval "$(oh-my-posh init zsh --config /opt/homebrew/opt/oh-my-posh/themes/atomic.omp.json)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#888888"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
