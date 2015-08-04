#!/usr/bin/env bash
#
# dotfiles::git
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="git"

function dotfiles::git::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
