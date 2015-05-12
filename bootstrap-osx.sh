#!/usr/bin/env bash

# Setup homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew install ansible

ansible-playbook -i hosts playbooks/workstation-osx.yml
