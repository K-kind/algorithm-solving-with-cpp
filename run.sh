#!/bin/bash

readonly IMAGE_NAME='cpp-build'

function build_and_run() {
  local cwd="${1}"

  exec docker run -v "${cwd}"/src:/home --rm -it "${IMAGE_NAME}" sh -c "g++ -o main ./main.cc && ./main"
}

function main() {
  local cwd
  cwd="$(cd "$(dirname "${0}")" && pwd)"

  build_and_run "${cwd}"
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  main "$@"
fi
