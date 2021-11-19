autoload -U compinit promptinit 
compinit
promptinit

bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line 
bindkey "^[[4~" end-of-line 

source .aliases

