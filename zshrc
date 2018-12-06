source ~/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

NVM_LAZY_LOAD=true
zplugin light "lukechilds/zsh-nvm"
zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light "sindresorhus/pure"
zplugin ice "rupa/z" pick"z.sh"; zplugin light "rupa/z"
zplugin light "supercrabtree/k"
zplugin light "zsh-users/zsh-history-substring-search"

zplugin snippet PZT::modules/history/init.zsh
# zplugin ice svn; zplugin snippet PZT::modules/osx
zplugin snippet PZT::modules/homebrew/init.zsh

zplugin light "lukechilds/zsh-better-npm-completion"
zplugin light "zsh-users/zsh-completions"

zplugin light "zdharma/fast-syntax-highlighting"

autoload -Uz compinit
compinit

zplugin cdreplay -q
