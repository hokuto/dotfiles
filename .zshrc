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

eval "$(rbenv init -)"
eval "$(nodenv init -)"

export RUBYOPT=-W:no-deprecated
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
