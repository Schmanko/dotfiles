# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/benedikt/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# arrow nav
bindkey "^[[1;3D" emacs-backward-word
bindkey "^[[1;3C" emacs-forward-word


# prompt
SYSINFO="%B%F{green}%n%f%F{blue}@%f%F{green}%m%f%b: "
PATHANDROOT="%~ %# "
PROMPT="$SYSINFO$PATHANDROOT"

STATUSCODE="[%?]"
#GITBRANCH=$(git branch  --show-current 2> /dev/null)
RPROMPT="%(?.$STATUSCODE.%B%F{red}$STATUSCODE%f%b"


#zplug
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load #--verbose

