#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="screen"
#EXCLUDED_FILES=()

function dotfiles::screen::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
