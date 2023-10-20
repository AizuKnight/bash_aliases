######################################################################
#
#  $HOME/.bashrc file
#  Last Updated: 2022-05-24
#
#    The most recent file is kept under ~stdskel/ .
#    You may revise your files by copying from there.
#    URL : http://web-int.u-aizu.ac.jp/~stdskel/stdskel.html
#
#  The University of Aizu Information Network System (AINS)
#  Information System and Technology Center (ISTC)
#  E-mail: std-help@u-aizu.ac.jp
#
#  Modified by AizuKnight
#
######################################################################

cd(){
  command cd $@
  command ls
}
usage(){
  command /usr/local/bin/du  -sk  *  .??*  |  sort  -n
  command /usr/local/bin/du  -sk  ~/.
}
cleartrash(){
  echo "You are going to delete all files in trash directiory."
  command rm -fR ~/.Trash/ *
  command rm -fR ~/.local/share/Trash/*
  echo "You deleted all files in trash dirctory. "
}
core(){
  command rm -f ~/Cadence*/core*
}
verilog() {
  command code ~/Cadence23L/$1/testfixture.verilog
}

alias ls='ls -l'
