#!/usr/bin/env bash

miniserve -v . \
        --header 'Cache-Control: no-cache, no-store, must-revalidate' \
        --header 'Access-Control-Allow-Origin: *' \
        --header 'Pragma: no-cache' \
        --header 'Expires: 0'
