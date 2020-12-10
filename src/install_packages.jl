#!/usr/bin/env julia

import Pkg

Pkg.add("PackageCompiler")

include("../config/package_setup.jl")
for pkg_setup in package_setup
    Pkg.add(string(pkg_setup.name))
end

Pkg.update()
