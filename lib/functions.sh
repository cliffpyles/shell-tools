# File Management

# Shows the resolved directory of an app in the path
function show() {
  greadlink -f `which $1` | xargs dirname
}

# Navigation

# Sets the current working directory to the resolved directory of an app in the path
function goto() {
  cd $(greadlink -f `which $1` | xargs dirname)
}

function aboutme() {
  echo "  ┏━━ \033[1mAbout System\033[0m"
  echo "  ┃"
  echo "  ┣━━ \033[1mOS\033[0m"
  echo "  ┃── Name: $(uname -s)"
  echo "  ┃── Version: $(uname -r)"
  echo "  ┃"
  echo "  ┣━━ \033[1mProcessor\033[0m"
  echo "  ┃── Architecture: $(uname -m)"
  echo "  ┃── Type: $(uname -p)"
  echo "  ┃"
  echo "  ┣━━ \033[1mName\033[0m: $(uname -n)"
  echo "  ┃"
  echo "  ┣━━ \033[1mPublic IP\033[0m: $(curl --silent ifconfig.me)"
  echo "  ┃"
  echo "  ┣━━ \033[1mUser\033[0m: $(whoami)"
  echo "  ┃"
  echo "  ┗━━"
}