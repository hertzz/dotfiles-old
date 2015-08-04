#!/usr/bin/env bash
#
# dotfiles::curl
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="curl"

function dotfiles::curl::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
