#!/bin/bash

set -euo pipefail

INSTALLDIR="$HOME/bin"
CONFIGDIR="${XDG_CONFIG_HOME:-$HOME/.config}/Spotify-AdMuter"
APPDIR="${XDG_DATA_HOME:-$HOME/.local/share}/applications"

echo "This script completely removes Spotify-AdMuter, except for its configuration file in ${CONFIGDIR}"

rm -rfv "$INSTALLDIR/spotify-admuter.sh" \
        "$INSTALLDIR/spotify-wrapper.sh" \
        "$APPDIR/Spotify (AdMuter).desktop"

rmdir --ignore-fail-on-non-empty "$INSTALLDIR" "$CONFIGDIR"
