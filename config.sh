#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

# List of handlers to load for dotfile
# linking at runtime
HANDLERS_ENABLED=(zsh aliases curl go git screen vim wget)

# List of globally excluded files for runtime
# linking of dotfiles
GLOBAL_EXCLUDED_FILES=(.gitkeep)

# Override home directory location to
# use something non-standard
# HOME_DIRECTORY="${BASE_DIR}/home_sandbox"

# Synchronisation settings
# GIT_SYNC=true
# GIT_SYNC_BRANCH="master"
# GIT_SYNC_OVERWRITE=true

# Where to log dotfiles output (default: stdout)
# LOG_OUTPUT="stdout"
# LOG_OUTPUT="file"
# LOG_OUTPUT="both"
