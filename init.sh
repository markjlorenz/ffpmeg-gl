#!/bin/bash
set -eo pipefail

/usr/bin/Xorg -noreset +extension GLX +extension RANDR +extension RENDER -logfile ./xdummy.log -config /etc/X11/xorg.conf :1 &

exec ffmpeg "$@"
