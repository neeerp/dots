#!/usr/bin/env bash

zscroll --length 10 \
        --before-text " x" --delay 0.3 \
		--match-command "mpc status 2> /dev/null" \
		--match-text "playing" "--before-text ' '" \
		--match-text "paused" "--before-text ' ' --scroll 0" \
		--update-check true "mpc current 2> /dev/null" &

wait
