HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
autoload -Uz colors
colors
PROMPT="%# "
RPROMPT="[%~]"
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified
autoload -Uz compinit
compinit

alias ls='ls -G'
alias gm='git checkout master; git pull --prune'
alias gd='git checkout develop; git pull --prune'
alias gbd='git branch | xargs git branch -d'

type nodenv > /dev/null 2>&1 && eval "$(nodenv init -)"

export RUBYOPT=-W:no-deprecated
type rbenv > /dev/null 2>&1 && eval "$(rbenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
type pyenv > /dev/null 2>&1 && eval "$(pyenv init -)"
