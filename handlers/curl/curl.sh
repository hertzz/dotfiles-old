#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="curl"
#EXCLUDED_FILES=()

function dotfiles::curl::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
