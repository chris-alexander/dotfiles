export ZPLUG_HOME="$HOME/.zplug"

# Check if zplug is installed
if [[ ! -d $ZPLUG_HOME ]]; then
  git clone https://github.com/zplug/zplug $ZPLUG_HOME
  source $ZPLUG_HOME/init.zsh && zplug update --self
fi

# Load zplug
source $ZPLUG_HOME/init.zsh

# change prezto fork
export _ZPLUG_PREZTO="zsh-users/prezto"

# Plugins
zplug "zplug/zplug", hook-build:"zplug --self-manage" # let zplug manage itself
zplug "supercrabtree/k"
zplug "rupa/z", use:"z.sh"
zplug "modules/history", from:prezto
zplug "modules/osx", from:prezto # osx aliases
zplug "modules/homebrew", from:prezto # homebrew aliases
zplug "zsh-users/zsh-syntax-highlighting", defer:3
zplug "zsh-users/zsh-history-substring-search", defer:3

# Install and manage nvm
zplug "lukechilds/zsh-nvm"
# npm completions
zplug "lukechilds/zsh-better-npm-completion", defer:3
zplug "zsh-users/zsh-completions"

# Theme
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"

# Install plugins if not installed
if ! zplug check --verbose; then
  zplug install
fi

# Source plugins and add commands to $path
zplug load --verbose
