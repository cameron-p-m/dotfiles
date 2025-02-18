# sets up program d
source ~/.d/bin/env.sh

# function to get current git branch
get_git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --exact-match 2>/dev/null)
  [[ -n $branch ]] && echo "[$branch]"
}

# sets the prompt
autoload -Uz vcs_info

setopt prompt_subst
PROMPT=' %F{blue}%2c %F{green}$(get_git_branch)%F{blue} →%f '

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


## git prompt to show the branch

