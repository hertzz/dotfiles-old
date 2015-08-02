#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="wget"
#EXCLUDED_FILES=()

function dotfiles::wget::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
