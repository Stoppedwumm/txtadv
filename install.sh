if [-d "/opt/homebrew"]; then
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "Please restart your terminal and restart the command"
fi

brew install python
