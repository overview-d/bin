#!/bin/sh
set -eu

exec ruby -run -e httpd . -p 9090
