HOMEBREW_EXISTS=$(which brew)

if [ ! -z "$HOMEBREW_EXISTS" ]; then
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Please restart your terminal and restart the command"
  exit 0
fi

brew install python
