# sets up program d
source ~/.d/bin/env.sh

# path for binaries
export PATH=$PATH:$PWD/bin

# homebrew
[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

#history search
# start typing + [Up-Arrow] - fuzzy find history forward
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# sets up starship
eval "$(starship init zsh)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cameronmorgan/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cameronmorgan/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cameronmorgan/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cameronmorgan/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
