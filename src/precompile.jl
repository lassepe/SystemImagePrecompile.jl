#!/usr/bin/env julia

using PackageCompiler

include("../config/package_setup.jl")

create_sysimage(
    [pkg.name for pkg in package_setup],
    precompile_execution_file = "src/compile_commands.jl",
    sysimage_path = "builds/$(VERSION)-dev.sysimg.so"
)
