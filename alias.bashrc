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

MACHINE=`uname -s`-`uname -r`

umask 077

case "$MACHINE" in
  Linux-*) ;;
  *)    PATH=/usr/local/perl5/bin:/usr/local/texlive/bin:/usr/local/bin:/usr/local/gnu/bin ;;
esac

case "$MACHINE" in
  # for Solaris 2.x
  SunOS-5.11*)  PATH=/usr/local/gcc/bin:/usr/local/java/jdk/bin:$PATH
        PATH=$PATH:/usr/openwin/bin:/usr/bin:/usr/sbin
        PATH=$PATH:/usr/local/SolarisStudio/bin:/usr/ccs/bin

        MANPATH=/usr/local/perl5/man:/usr/local/man
        MANPATH=$MANPATH:/usr/local/share/man:/usr/local/gnu/man
        MANPATH=$MANPATH:/usr/local/gnu/share/man:/usr/share/man
        MANPATH=$MANPATH:/usr/local/SolarisStudio/man
    ;;
  # for Apple macOS 11
  Darwin-*) PATH=$PATH:/usr/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin

        MANPATH=/usr/local/man:/usr/local/share/man:/usr/local/gnu/man
        MANPATH=$MANPATH:/usr/local/gnu/share/man:/usr/share/man:/usr/X11/share/man
    ;;
  # for Linux RHEL
  Linux-*)  . /etc/profile
        case $- in
          *i*) PATH=/usr/local/texlive/bin:$PATH ;;
        esac

        # ':' at the end of the line will include settings in /etc/man_db.conf.
        MANPATH=/usr/share/man:
    ;;
esac

# set site path
#set PATH=$PATH:${HOME}/bin


# if [ $?USER == 0 || $?prompt == 0 ]; then
#     exit
# fi

LC_COLLATE=C

export PATH MANPATH LC_COLLATE

EDITOR=vi
export EDITOR

unset OS REV

tty -s
if [ $? == 0 ]; then
  if [ "$SHELL" = "/bin/csh" -o "$SHELL" = "/usr/local/bin/tcsh" ]; then
    eval `env SHELL=/bin/sh tset -rs`
  else
    eval `tset -rs`
  fi
else
  stty erase ^H kill ^U
fi

# set this for all shells
export HISTSIZE=100
export HISTFILESIZE=50
export IGNOREEOF=3
#PS1="\h{`whoami`}\!$ "
PS1="\h:\W \u[\!]$ "

#aliases for all shells
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
    command rm -f ~/Cadence*/ex*_*_run*/core*
}
verilog() {
    command code ~/Cadence23L/$1/testfixture.verilog
}

alias ls='ls -l'
