#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

# Override home directory location to
# use something non-standard
HOME_DIRECTORY="${HOME}"

# List of handlers to load for dotfile
# linking at runtime
HANDLERS_ENABLED=(aliases curl git screen vim wget zsh)
