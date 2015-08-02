#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="aliases"
#EXCLUDED_FILES=()

function dotfiles::aliases::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
