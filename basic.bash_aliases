alias l='ls -lF --color=auto'
alias s='ls -lF --color=auto'
alias la='ls -alF --color=auto'
alias ll='ls -lF --color=auto'

cd(){
  command cd $@
  command ls -F --color=auto
}
