#/bin/sh

set -euo pipefail
IFS=$'\n\t'

main() {
  for pkgbuild_directory_path in */; do
    .travis/test.sh $pkgbuild_directory_path
  done
}

main "$@"
