#General settings
HISTFILE="${HOME}/.zsh_history"
HISTSIZE=1000000000
SAVEHIST=1000000000
export EDITOR=vim
export XDG_CONFIG_HOME=$HOME/.config
alias tmux='tmux -2'
alias xcp='xclip -i -selection clipboard'
alias rm="trash"

# about TEX
export TEXINPUTS=$TEXINPUTS:${HOME}/.dotfiles/private/tex/sty/
export BIBINPUTS=$BIBINPUTS:${HOME}/.dotfiles/private/tex/
export BSTINPUTS=$BSTINPUTS:${HOME}/.dotfiles/private/tex/
