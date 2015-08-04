#!/usr/bin/env bash
#
# dotfiles::go
# https://github.com/hertzz/dotfiles
#

HANDLER_NAME="go"
GO_WORKSPACE_PATH="${HOME_DIRECTORY}/src/go/workspace"

function dotfiles::go::init() {
  dotfiles::log info "Bootstrapping ${HANDLER_NAME} files..."

  dotfiles::go::__directories
  dotfiles::go::__paths
}

function dotfiles::go::__directories() {
  if [ ! -d "${GO_WORKSPACE_PATH}" ]; then
    if mkdir -p "${GO_WORKSPACE_PATH}"; then
      dotfiles::log info "Created Go workspace (${GO_WORKSPACE_PATH})!"
    else
      dotfiles::log error "Failed to create Go workspace (${GO_WORKSPACE_PATH})"
    fi
  fi
}

function dotfiles::go::__paths() {
  # Set PATH settings for Go for zsh/other shells
  for GOSHELL in zsh; do
    if [[ "${HANDLERS_ENABLED[@]}" =~ "${GOSHELL}" ]]; then
      if ! grep "export GOPATH=\"${GO_WORKSPACE_PATH}\"" "${HOME_DIRECTORY}/.${GOSHELL}rc" &>/dev/null; then
        dotfiles::log info "Adding GOPATH user variable to .${GOSHELL}rc..."

        # Make sure there isn't an old GOPATH entry
        if ! grep "export GOPATH" "${HOME_DIRECTORY}/.${GOSHELL}rc" &>/dev/null; then
          if echo "export GOPATH=\"${GO_WORKSPACE_PATH}\"" >> "${HOME_DIRECTORY}/.${GOSHELL}rc"; then
            dotfiles::log info "Successfully added GOPATH to .${GOSHELL}rc..."
          else
            dotfiles::log error "Failed to add GOPATH to .${GOSHELL}rc..."
          fi
        else
          dotfiles::log error "Found a conflicting GOPATH entry in .${GOSHELL}rc. Overriding..."

          if ! (sed '/export GOPATH/d' "${HOME_DIRECTORY}/.${GOSHELL}rc"); then
            dotfiles::log error "Failed to remove conflicting GOPATH entry in .${GOSHELL}rc!"
          else
            if echo "export GOPATH=\"${GO_WORKSPACE_PATH}\"" >> "${HOME_DIRECTORY}/.${GOSHELL}rc"; then
              dotfiles::log info "Successfully added GOPATH to .${GOSHELL}rc..."
            else
              dotfiles::log error "Failed to add GOPATH to .${GOSHELL}rc..."
            fi
          fi
        fi
      else
        dotfiles::log info "Skipping adding GOPATH to .${GOSHELL}rc, already set"
      fi

      # Ammend PATH
      if ! grep "export PATH=\"\${GOPATH}:\${PATH}\"" "${HOME_DIRECTORY}/.${GOSHELL}rc" &>/dev/null; then
        if echo "export PATH=\"\${GOPATH}:\${PATH}\"" >> "${HOME_DIRECTORY}/.${GOSHELL}rc"; then
          dotfiles::log info "Successfully ammended PATH with GOPATH location!"
        else
          dotfiles::log error "Failed to ammend PATH with GOPATH location"
        fi
      fi
    fi
  done
}
