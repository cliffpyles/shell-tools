# Date/Time
alias epoch="date -j -f '%a %b %d %T %Z %Y' '`date`' '+%s'"

# File Management
alias dup="cp -pR"
alias fsize="du -csh ./*"

# Networking
alias lsports="sudo lsof -PiTCP -sTCP:LISTEN"

# Tool Abbreviations
alias tf="terraform"

# Version Control
alias ighr="gh repo create $(basename $PWD) --private --source=. --remote=origin --push"
alias clog="git log --graph --pretty=format:'%s' --abbrev-commit --no-merges"
alias llog="git log --graph --pretty=format:'%Cred%h%Creset -%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --no-merges"
