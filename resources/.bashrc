# general 
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias ll='ls -alF'
alias la='ls -A'
alias ff='find . -iname "*"'
alias gi='grep -iI'
alias gn='grep -nirI'

alias vi='nvim'
alias vim='nvim'


#cmake
alias cml='nvim CMakeLists.txt'


#tmux
alias tls='tmux list-sessions'
alias ta='tmux attach -t'

#git
alias gst='git status'
alias gad='git add .'
alias gib='git branch'

#configs
alias rc='vim ~/.bashrc'
alias src='source ~/.bashrc'
alias vrc='vim ~/.vimrc'
alias trc='vim ~/.tmux.conf'

alias cfg='cd ~/.config'
alias nvcfg='cd ~/.config/nvim'

eval "$(starship init bash)"
