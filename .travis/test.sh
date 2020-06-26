#/bin/sh

set -euo pipefail
IFS=$'\n\t'

main() {
  repository=$1

  ./pkg local:make $1
}

main "$@"
