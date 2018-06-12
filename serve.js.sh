#!/bin/sh
set -eu

Z="${0%/*}/node_modules/.bin/http-server"

installed() {
	test -e "$Z"
}

install() (
	cd "${0%/*}"
	npm install
)

installed || install

exec "$Z" "$@"
