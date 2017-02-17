# Check if zplug is installed
if [[ ! -d "$HOME/.zplug" ]]; then
  git clone https://github.com/zplug/zplug "$HOME/.zplug/repos/zplug/zplug"
  ln -s "$HOME/.zplug/repos/zplug/zplug/init.zsh" "$HOME/.zplug/init.zsh"
fi

# Load zplug
source ~/.zplug/init.zsh

# Plugins
zplug "zplug/zplug" # let zplug manage itself
zplug "supercrabtree/k"
zplug "rupa/z", use:"*.sh"
zplug "modules/history", from:prezto
zplug "modules/osx", from:prezto # osx aliases
zplug "modules/homebrew", from:prezto # homebrew aliases
zplug "zsh-users/zsh-syntax-highlighting", nice:9
zplug "zsh-users/zsh-history-substring-search", nice:10

# Install and manage nvm
zplug "lukechilds/zsh-nvm"
# npm completions
zplug "lukechilds/zsh-better-npm-completion", nice:10
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
