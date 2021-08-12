#!/bin/sh
tmpfile="$(mktemp /tmp/st-XXXXXX)"
cat >"$tmpfile"
exec st -e sh -c "nvim -c 'normal G' -R '$tmpfile'; rm -f '$tmpfile'"
