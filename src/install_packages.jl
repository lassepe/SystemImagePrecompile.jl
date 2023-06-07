#!/usr/bin/env julia

ENV["JULIA_PKG_PRECOMPILE_AUTO"] = 0
import Pkg
Pkg.add("PackageCompiler")
include("../config/package_setup.jl")
Pkg.add([string(pkg_setup.name) for pkg_setup in package_setup])
Pkg.update()
Pkg.precompile()
