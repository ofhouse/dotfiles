#!/usr/bin/env bash
set -e

if ! command -v zsh &> /dev/null
then
    echo "zsh could not be found. Installing..."
    if test "$(uname)" = "Darwin"
    then
      # MacOS
      echo "TODO: Install zsh on MacOS"
    else
      sudo apt-get install -y zsh
    fi

    # Install Oh my ZSH
    curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh

    # Restore the backup file
    local CONFIG_FILE=~/.zshrc.pre-oh-my-zsh
    if test -f "$CONFIG_FILE"; then
      rm ~/.zshrc
      mv "$CONFIG_FILE" ~/.zshrc
      source ~/.zshrc
    fi
fi
