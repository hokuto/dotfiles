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

export RUBYOPT='-W:no-deprecated'
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
type rbenv > /dev/null 2>&1 && eval "$(rbenv init -)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
type pyenv > /dev/null 2>&1 && eval "$(pyenv init -)"

export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
