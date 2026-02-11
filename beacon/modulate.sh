#!/usr/bin/env bash

# Signal lengths

DASH=0.3
DOT=0.1

# Iniitial frequency setup
./adf4351 1296.990

while IFS= read -r -n1 ch; do
    case "${ch}" in
        -)
            ./adf4351 on
            sleep "${DASH}"
            ./adf4351 off
            ;;
        .)
            ./adf4351 on
            sleep "${DOT}"
            ./adf4351 off
            ;;
        "")
            # newline means word separator
            sleep "${DASH}"
            sleep "${DASH}"
            ;;
	*)  # everything else
            ;;

    esac
done

