alias l='ls -lF --color=auto'
alias la='ls -aF --color=auto'
alias ll='ls -lF --color=auto'
alias ls='ls -lF --color=auto'

cd() {
  command cd @1
  command ls -F --color=auto
}

usage() {
  command /usr/local/bin/du -sk * .??* | sort -n
  echo "------------------------------"
  echo "Disk Usage:"
  command /usr/local/bin/du -sk ~/.
  echo "------------------------------"
}

core() {
  command rm -i ~/VLSI24/core*
}
