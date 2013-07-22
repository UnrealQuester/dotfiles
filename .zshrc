# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/avbudden/.zshrc'

autoload -U compinit promptinit
compinit
promptinit
prompt gentoo
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
alias latexmkspeciale="grep -l '\\documentclass' *tex | xargs latexmk -pdf -pvc -silent"
