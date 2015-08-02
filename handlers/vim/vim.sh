#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="vim"
EXCLUDED_FILES=(.vitest)

function dotfiles::vim::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
