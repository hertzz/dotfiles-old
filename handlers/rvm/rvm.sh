#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="rvm"
#EXCLUDED_FILES=()

function dotfiles::rvm::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
