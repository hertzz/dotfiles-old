#!/usr/bin/env bash
#
# dotfiles::ssh
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="ssh"
EXCLUDED_FILES=(id_rsa)

function dotfiles::ssh::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."
}
