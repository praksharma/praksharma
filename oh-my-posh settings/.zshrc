# oh-my-posh
export PATH="$PATH:/home/hell/.oh-my-posh"
eval "$(oh-my-posh init zsh --config ~/.oh-my-posh/themes/clean-detailed.omp.json)"

# Case-insensitive (non-sensitive) completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# End of oh-my-posh
