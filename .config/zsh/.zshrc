autoload -U compinit promptinit 
compinit
promptinit

if [[ -f $ZDOTDIR/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE} ]];
then
	source $ZDOTDIR/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE} 
fi

[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"      beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"       end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"    overwrite-mode 
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}" backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"    delete-char  
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"        up-line-or-history 
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"      down-line-or-history 
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"      backward-char 
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"     forward-char 
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"    beginning-of-buffer-or-history    
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"  end-of-buffer-or-history    

zstyle ':completion:*' menu select

source $XDG_CONFIG_HOME/.aliases

export PATH=$PATH:$HOME/.local/bin

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
