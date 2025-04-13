#!/usr/bin/env bash

set -eux  # exit on error

# install fonts and refresh directory
sudo apt-get update
sudo apt-get -y install gsfonts tex-gyre fonts-noto-cjk
sudo fc-cache -fv

# add latexindent to PATH
sudo tlmgr option sys_bin /usr/local/bin
sudo tlmgr path add
