alias ls='ls -lF --color=auto'
alias la='ls -alF --color=auto'
alias l='ls -lF --color=auto'
alias ome='cd ~/CHANGE_HERE && code .'
alias tsome1='cd ~/CHANGE_HERE && docker run --rm -v $(pwd):/workdir ome-doc-latex sh -c "cd 01 ; llmk"'
alias tsome2='cd ~/CHANGE_HERE && docker run --rm -v $(pwd):/workdir ome-doc-latex sh -c "cd 02 ; llmk"'
alias tsome3='cd ~/CHANGE_HERE && docker run --rm -v $(pwd):/workdir ome-doc-latex sh -c "cd 03 ; llmk"'
alias tsome4='cd ~/CHANGE_HERE && docker run --rm -v $(pwd):/workdir ome-doc-latex sh -c "cd 04 ; llmk"'
alias tsome5='cd ~/CHANGE_HERE && docker run --rm -v $(pwd):/workdir ome-doc-latex sh -c "cd 05 ; llmk"'
alias tsome6='cd ~/CHANGE_HERE && docker run --rm -v $(pwd):/workdir ome-doc-latex sh -c "cd 06 ; llmk"'
alias tsome7='cd ~/CHANGE_HERE && docker run --rm -v $(pwd):/workdir ome-doc-latex sh -c "cd 07 ; llmk"'
alias tsome8='cd ~/CHANGE_HERE && docker run --rm -v $(pwd):/workdir ome-doc-latex sh -c "cd 08 ; llmk"'

cd(){
  command cd $@
  command ls -F --color=auto
}
