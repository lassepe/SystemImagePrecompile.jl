#!/usr/bin/env sh

# TODO: this only works in zsh
SYSIMGPRECOMPILE_ROOT_DIR="$(realpath $(dirname ${(%):-%N})/..)"

# NOTE: MESA_LOADER_DRIVER_OVERRIDE=i965 is a fix for https://github.com/JuliaPlots/Makie.jl/issues/630
alias j="julia"
alias jp="j --project"
function jd {
  julia_version=$(julia -e "println(VERSION)" |  cut -d' ' -f3)
  j --sysimage="$SYSIMGPRECOMPILE_ROOT_DIR/builds/$julia_version-dev.sysimg.so" "$@"
}
alias jpd="jd --project"
