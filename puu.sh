#!/usr/bin/env bash
EMAIL=<YOUR EMAIL>
APIKEY=<YOUR API KEY>
ENDPOINT=<YOUR ENDPOINT>

if [ $# -eq 1 ]; then
        hash=$(eval "md5sum \"$1\" | cut -d' ' -f1")
        sendline="curl \"$ENDPOINT/api/up/\" -s -F \"z=poop\" -F \"e=$EMAIL\" -F \"k=$APIKEY\" -F \"f=@$1\" -F \"c=$hash\""
        open=$(eval "$sendline | sed -E 's/^.+,(.+),.+,.+$/\1\n/'")
        eval "chromium-browser \"$open\" >/dev/null"
else
        echo "Usage: puu.sh <file>"
fi
