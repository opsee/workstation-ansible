#!/usr/bin/env bash

# Check for homebrew
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
    echo "no brew installation found. installing brew..."
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
else
    echo "brew found.  continuing..."
fi

# if you have permission errors
# run sudo chown -R $USER:admin /usr/local /Library/Caches/Homebrew
brew install ansible
ansible-playbook -i hosts playbooks/workstation-osx.yml
