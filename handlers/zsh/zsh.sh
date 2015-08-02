#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="zsh"
#EXCLUDED_FILES=()

function dotfiles::zsh::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
