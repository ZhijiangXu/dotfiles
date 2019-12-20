#!/bin/sh

set -o errexit
set -o nounset

[ "$(uname -s)" = Darwin ] || exit 0

if [ -d ~/bin ]; then
  SetFile -a V ~/bin
fi

defaults write -app Hammerspoon HSUploadCrashData 0
defaults write -app Hammerspoon MJShowDockIconKey 0
