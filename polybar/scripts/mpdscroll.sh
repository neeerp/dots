#!/bin/sh
#Script to scroll song name of current mpd song in polybar
thresh=25
speed=0.35
if ! mpc >/dev/null 2>&1; then
    echo Server offline
    exit 1
elif mpc status 2> /dev/null | grep -q playing; then
    if [ "$(mpc current 2> /dev/null | wc -c)" -gt "$thresh" ]; then
        ( zscroll -l "$thresh" -d "$speed" -b "" -a "" -p " /// " -u true "mpc current" 2> /dev/null  | sed -e :a -ue "s/^.\{1,$thresh\}$/& /;ta" | sed -uEn 's/(^.*$)/ \1/p' ) &
    else
        ( mpc current 2> /dev/null | sed -uEn 's/(^.*$)/ \1/p' ) &
    fi
elif mpc status 2> /dev/null | grep -q paused; then
    if [ "$(mpc current 2> /dev/null | wc -c)" -gt "$thresh" ]; then
        ( zscroll -l "$thresh" -d "$speed" -b "" -a "" -p " /// " -u true "mpc current" 2> /dev/null  | sed -e :a -ue "s/^.\{1,$thresh\}$/& /;ta" | sed -uEn 's/(^.*$)/ﱙ \1/p' ) &
    else
        ( mpc current 2> /dev/null | sed -uEn 's/(^.*$)/ﱙ \1/p' ) &
    fi
fi

mpc idle > /dev/null 2> /dev/null

    #( zscroll -l 20 -d 0.30 -b "" -a "" -p " /// " -u true "mpc current"  use zscroll to scroll the output of mpc current with /// as the delim between the end of text
    #| sed -e :a -ue 's/^.\{1,20\}$/& /;ta'#pad with space to be 20 chars if not
    #| sed -uEn 's/(^.*$)/───| \1|───/p' surround text in ───| |─── for asthetic
    #) & capture, run in background
