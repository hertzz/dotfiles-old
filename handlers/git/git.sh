#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="git"
#EXCLUDED_FILES=()

function dotfiles::git::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
