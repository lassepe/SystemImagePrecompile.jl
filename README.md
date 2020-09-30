# SysImagePrecompile.jl

### Usage

1. enlist the packages and commands you want to install globally and pre-compile in `global_package_setup.jl`
2. install all the dependencies via `./install_global_packages.jl`
3. pre-compile a system-image via `./precompile.jl`; This will create a system image as `<julia_version>-dev.sysimg.so`


### ZSH/BASH Convenience Functions

```bash
alias j="JULIA_NUM_THREADS=10 julia --depwarn=yes"
alias jp="j --project"
function jd {
  julia_version=$(julia --version |  cut -d' ' -f3)
  j --sysimage="${PATH_TO_THIS_REPO}/$julia_version-dev.sysimg.so" "$@"
}
alias jpd="jd --project"
```
