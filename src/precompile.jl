#!/usr/bin/env julia

using PackageCompiler

include("../config/package_setup.jl")

create_sysimage(
    [pkg.name for pkg in package_setup],
    precompile_execution_file = "compile_commands.jl",
    sysimage_path = "$(VERSION)-dev.sysimg.so",
    replace_default = false,
)
