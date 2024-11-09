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
