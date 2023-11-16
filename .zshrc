alias gp="git pull"
alias gpsh="git push"
alias ga="git add"
alias gco="git commit -m"
alias gr="git rebase"
alias grm="git rebase master"
alias grg="git rebase green"
alias gs="git status"
alias gcm="git checkout master"
alias gcg="git checkout green"
alias gcb="git checkout -b"
alias gc="git checkout"
alias gl="git log"

eval "$(oh-my-posh init zsh --config /opt/homebrew/opt/oh-my-posh/themes/atomic.omp.json)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#00ffff"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

function gbd {
  readonly branch=${1:?"The branch must be specified."}
  git branch | rg "$branch" | xargs git branch -D
}

