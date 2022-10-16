# Date/Time
alias epoch="date -j -f '%a %b %d %T %Z %Y' '`date`' '+%s'"

# File Management
alias dup="cp -pR"
alias fsize="du -csh ./*"
alias cheaptree="ls -R | grep ':$' | sed -e 's/:$//' -e 's/[^-][^\/]*\//━━ /g' -e 's/^/ /' -e 's/━/┣/' -e 's/ ━━/━━/g'"

# Networking
alias lsports="sudo lsof -PiTCP -sTCP:LISTEN"

# System
alias topcpu="ps -r -A -o 'user,pid,%cpu,%mem,comm'"
alias topmem="ps -m -A -o 'user,pid,%cpu,%mem,comm'"

# Tool Abbreviations
alias tf="terraform"

# Version Control
alias ighr="gh repo create $(basename $PWD) --private --source=. --remote=origin --push"
alias clog="git log --graph --pretty=format:'%s' --abbrev-commit --no-merges"
alias llog="git log --graph --pretty=format:'%Cred%h%Creset -%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --no-merges"
