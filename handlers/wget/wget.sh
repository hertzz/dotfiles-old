#!/usr/bin/env bash
#
# dotfiles::wget
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="wget"

function dotfiles::wget::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
