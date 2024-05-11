#!/usr/bin/env -S nix shell nixpkgs#miniserve --command bash
# shellcheck shell=bash

miniserve -v . \
        --header 'Cache-Control: no-cache, no-store, must-revalidate' \
        --header 'Access-Control-Allow-Origin: *' \
        --header 'Pragma: no-cache' \
        --header 'Expires: 0'
