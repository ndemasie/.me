## Setup bash completion PATH, MANPATH, etc., for Homebrew.
# eval "$(/opt/homebrew/bin/brew shellenv)"
# source /opt/homebrew/etc/profile.d/bash_completion.sh

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# Source fns
source "$HOME/.me/templates/fn_confirm.sh"

source "$HOME/.me/fn-close-port-process.sh"
source "$HOME/.me/fn-docker.sh"
source "$HOME/.me/fn-git.sh"

# Load all secrets
for secret in $HOME/.me/secrets/.secrets*(N.); do
  source "$secret"
done

# Update PATH
PATH="$PATH:$HOME/.docker/bin"

# PATH="/usr/local/sbin:$PATH"             # Homebrew /usr/local/sbin
# PATH="$(brew --prefix python)/bin:$PATH" # Python3

export PATH

# custom
alias gf='
bash "${HOME}/.me/script-gitmoji-commit.sh" \
  --ticket-number-length 6 \
  --menu-setting "--search" \
  --menu-setting "--page=7" \
  --option "✨ FEAT" \
  --option "🐛 FIX" \
  --option "📄 DOCS" \
  --option "🎨 STYLE" \
  --option "♻️  REFACTOR" \
  --option "⚡️ PERF" \
  --option "🧪 TEST" \
  --option "🏗️  BUILD" \
  --option "👷 CI" \
  --option "🔧 CHORE" \
  --option "🔙 REVERT" \
  && \
bash "${HOME}/.me/script-open-azure-pr.sh"'

alias l10n="bash $HOME/scripts/fn-locize.sh"
alias run="npm run"