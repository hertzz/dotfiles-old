#!/usr/bin/env bash
#
# dotfiles
# https://github.com/hertzz/dotfiles
#

FAILED_TESTS=0
PASSED_TESTS=0

function dotfiles::test::__generic::syntax() {
  local HANDLER_NAME="$1"

  if ! BOOTSTRAP_FILE_DATA=$(cat $HANDLERS_DIR/$HANDLER_NAME/$HANDLER_NAME.sh); then
    echo "Failed to parse \"${HANDLER_NAME}\" handler bootstrap file" && exit 1
  fi

  if [[ ! $BOOTSTRAP_FILE_DATA =~ "HANDLER_NAME=\"${HANDLER_NAME}\"" ]]; then
    dotfiles::test::__test_fail "Handler name declaration is missing"
  else
    dotfiles::test::__test_ok "Verifies handler name declaration"
  fi

  if [[ ! $BOOTSTRAP_FILE_DATA =~ "function dotfiles::${HANDLER_NAME}::init()" ]]; then
    dotfiles::test::__test_fail "Handler initializer method is missing"
  else
    dotfiles::test::__test_ok "Verifies handler initializer method"
  fi
}

function dotfiles::test::__test_ok() {
  local MESSAGE=${1:-"none"}
  #printf "\033[32m.\033[0m"
  echo -e "\033[32m[   OK   ]\033[0m handler/${HANDLER_NAME}: ${MESSAGE}"

  PASSED_TESTS=$((PASSED_TESTS+1))
}

function dotfiles::test::__test_fail() {
  local MESSAGE=${1:-"none"}
  #printf "\033[31m.\033[0m"
  echo -e "\033[31m[  FAIL  ]\033[0m handler/${HANDLER_NAME}: ${MESSAGE}"

  FAILED_TESTS=$((FAILED_TESTS+1))
}

function dotfiles::test::__report() {
  :
}
