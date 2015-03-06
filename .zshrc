# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/alexander/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
unsetopt BEEP
setopt AUTO_CD
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY


[[ -s ~/zsh-history-substring-search/zsh-history-substring-search.zsh ]] && source ~/zsh-history-substring-search/zsh-history-substring-search.zsh
[[ -s ~/.shell_prompt.sh ]] && source ~/.shell_prompt.sh
[[ -s ~/dirhistory.zsh ]] && source ~/dirhistory.zsh
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh

HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=''
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND=''

eval `dircolors ~/dircolors/dircolors.ansi-dark`
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
_comp_options+=(globdots)
setopt dotglob


autoload -U promptinit
export PATH="`ruby -e 'print Gem.user_dir'`/bin:/sbin:/usr/sbin:$PATH"

promptinit
PROMPT="%n@%m %~ %% "
export TERM=xterm-256color

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

bindkey '⇦' reverse-menu-complete
# fix del key
bindkey '\e[3~' delete-char

alias latexmkspeciale="grep -l '\\documentclass' *tex | xargs latexmk -pdf -pvc -silent"
alias ls="ls --color=auto"
alias :q="exit"
alias emerge="sudo emerge"
alias irssi="TERM=screen-256color irssi"
alias ranger="TERM=screen-256color ranger"
alias htop="TERM=screen-256color htop"
alias ...="cd ../.."
