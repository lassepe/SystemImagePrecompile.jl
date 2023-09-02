#!/usr/bin/env sh

# TODO: this only works in zsh
export JULIA_SYSIMAGE_LIB_DIR="$(realpath $(dirname ${(%):-%N})/../builds)"

function jd {
  julia_version=$(julia --startup-file=no -e "println(VERSION)" |  cut -d' ' -f3)
  julia --sysimage="$JULIA_SYSIMAGE_LIB_DIR/$(hostname)-$julia_version.so" "$@"
}
alias jpd="jd --project"
