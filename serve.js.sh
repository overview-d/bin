#!/bin/sh
set -eu

exec "${0%/*}/node_modules/.bin/http-server"
