#!/bin/sh

set -o errexit
set -o nounset

python3 -mpip install --upgrade --quiet --disable-pip-version-check \
  'pynvim' \
  'vim-vint'

if [ "$(hostname -s)" = "19SGD-MAC11" ]; then
  # python3 -mpip install --upgrade --quiet --disable-pip-version-check \
  #   'ansible[azure]' \
  #   'ansible-lint' \
  #   'azure-cli' \
  #   'datadog' \
  #   'jinja2' \
  #   'molecule[docker]' \
  #   'packaging'

  "$(brew --prefix ansible)/libexec/bin/python3" -mpip install \
    --upgrade --quiet --disable-pip-version-check \
    'ansible[azure]'
fi
