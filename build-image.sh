#!/bin/bash

readonly IMAGE_NAME='cpp-build'

function main() {
  exec docker build -t "${IMAGE_NAME}" .
}

main
