###############################################################################
# go settings:
###############################################################################
# GOPATH is the path of `go worskpace` where go install installs dependencies
export GOPATH="$HOME/go"
# Add GOPATH/bin to $PATH
path+=("$GOPATH/bin") # To append any path to $PATH use this syntax, to prepend simply use path=('somepath')
###############################################################################
# pyenv settings:
###############################################################################
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi
###############################################################################
# Starship settings:
###############################################################################
eval "$(starship init zsh)"
###############################################################################
