# SysImagePrecompile.jl

### Usage

1. Add all packages and commands you want to install and pre-compile in
   `config/package_setup.jl`
2. install all the packages via `bin/install_packages.jl`
3. pre-compile a system-image for the packages and commands listed in
   `config/package_setup.jl` by running `bin/precompile.jl`. This will create
   a system image in `build/<julia_version>-dev.sysimg.so`


### ZSH Convenience Functions / Aliases

Source the script `shell/julia_shell_convenience.sh` in you `zsh.rc`. This will
provide four commands:

- `j`: runs `julia`
- `jp`: runs `julia --project`
- `jd`: runs `julia` with the corresponding system image from `build/`
- `jpd`: runs `jd --project`
