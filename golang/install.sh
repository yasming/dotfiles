#!/bin/bash
while true; do
  sudo -n true;
  sleep 60;
  kill -0 "$$" || exit;
done 2>/dev/null &

declare -a golang_pacakges=(
"golang.org/x/tools/gopls"
"golang.org/x/tools/cmd/godoc"
"github.com/golang/lint/golint"
"github.com/mrtazz/checkmake"
)

GOPATH="${HOME}/.go"
GOROOT="$(brew --prefix golang)/libexec"
PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

for package in "${golang_pacakges[@]}"; do
  go get -u ${package}
done
