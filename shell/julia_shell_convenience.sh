#!/usr/bin/env sh

# TODO: this only works in zsh
export JULIA_SYSIMAGE_LIB_DIR="$(realpath $(dirname ${(%):-%N})/../builds)"
export JULIA_BIN=$(which julia)
# NOTE: MESA_LOADER_DRIVER_OVERRIDE=i965 is a fix for https://github.com/JuliaPlots/Makie.jl/issues/630
function julia {
  $JULIA_BIN $@
}

alias j=julia
alias jp="j --project"
function jd {
  julia_version=$(julia -e "println(VERSION)" |  cut -d' ' -f3)
  j --sysimage="$JULIA_SYSIMAGE_LIB_DIR/$(hostname)-$julia_version.so" "$@"
}
alias jpd="jd --project"
