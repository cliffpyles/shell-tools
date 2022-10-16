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

